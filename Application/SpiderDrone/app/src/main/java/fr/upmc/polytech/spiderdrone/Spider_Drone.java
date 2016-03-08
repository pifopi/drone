package fr.upmc.polytech.spiderdrone;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class Spider_Drone extends AppCompatActivity
{
    private Button boutonStabilisation;
    private Button boutonFlecheHaut;
    private Button boutonFlecheBas;
    private Button boutonFlecheDroite;
    private Button boutonFlecheGauche;
    private Button boutonArretUrgence;
    private Button boutonOrientation;
    private TextView commande;
	private TextView etatConnexion;
	
	private int UDP_SERVER_PORT = 2000;
	private String UDP_SERVER_ADRESSE = "192.168.1.65";

    private View.OnTouchListener monListener = new View.OnTouchListener ()
    {
        public boolean onTouch (View v, MotionEvent event)
        {
            if (event.getAction() == MotionEvent.ACTION_DOWN)
            {
                switch (v.getId())
                {
                    case R.id.stabilisation:
                        commande.setText ("Stabilisation");
                        break;

                    case R.id.haut:
                        commande.setText ("Haut");
                        break;

                    case R.id.bas:
                        commande.setText ("Bas");
                        break;

                    case R.id.droite:
                        commande.setText ("Droite");
                        break;

                    case R.id.gauche:
                        commande.setText("Gauche");
                        break;

                    case R.id.arret:
                        commande.setText("Arret");
                        break;

                    case R.id.orientation:
                        commande.setText("Orientation");
                        break;
                }
            }
            else if (event.getAction() == MotionEvent.ACTION_UP)
            {
                commande.setText("Bouton relaché");
            }

            envoiPaquet ();
            return false;
        }
    };


    protected void onCreate (Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView (R.layout.activity_spider_drone);

		/*On récupère les boutons créés avec le XML*/
        boutonStabilisation = (Button) findViewById (R.id.stabilisation);
        boutonFlecheHaut = (Button) findViewById (R.id.haut);
        boutonFlecheBas = (Button) findViewById (R.id.bas);
        boutonFlecheDroite = (Button) findViewById (R.id.droite);
        boutonFlecheGauche = (Button) findViewById (R.id.gauche);
        boutonArretUrgence = (Button) findViewById (R.id.arret);
        boutonOrientation = (Button) findViewById (R.id.orientation);
        commande = (TextView) findViewById (R.id.commande);
        etatConnexion = (TextView) findViewById (R.id.etatConnexion);

		/*On leur ajoute le listener privé créé au début de ce fichier*/
        boutonStabilisation.setOnTouchListener (monListener);
        boutonFlecheHaut.setOnTouchListener (monListener);
        boutonFlecheBas.setOnTouchListener (monListener);
        boutonFlecheDroite.setOnTouchListener (monListener);
        boutonFlecheGauche.setOnTouchListener (monListener);
        boutonArretUrgence.setOnTouchListener (monListener);
        boutonOrientation.setOnTouchListener (monListener);

        /*On teste si la connexion polytech est disponible ou non*/
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService (CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo ();
        if (networkInfo != null && networkInfo.isAvailable () && networkInfo.isConnected ())
        {
            boolean wifi = networkInfo.getType () == ConnectivityManager.TYPE_WIFI;
            //Log.d ("NetworkState", "L'interface de connexion active est du Wifi : " + wifi);
            etatConnexion.setText ("L'interface de connexion active est du Wifi : " + wifi);
        }
        else
        {
            etatConnexion.setText ("La connexion au réseau n'est pas établie");
        }
	}

    private void envoiPaquet ()
    {
        Thread thread = new Thread (new Runnable()
        {
            public void run ()
            {
                try
                {
                    /*Juste pour le test, affiche un hello world et le port utilisé pour la connexion*/
                    //A modifier pour envoyer la commande choisie de manière périodique
                    //String udpMsg = "hello world from UDP client " + UDP_SERVER_PORT;
                    String udpMsg = (String) commande.getText ();
                    DatagramSocket ds = null;
                    try
                    {
                        ds = new DatagramSocket ();
                        InetAddress serverAddr = InetAddress.getByName (UDP_SERVER_ADRESSE);
                        DatagramPacket dp = new DatagramPacket (udpMsg.getBytes (), udpMsg.length (), serverAddr, UDP_SERVER_PORT);
                        ds.send (dp);
                    }
                    catch (SocketException e)
                    {
                        e.printStackTrace ();
                    }
                    catch (UnknownHostException e)
                    {
                        e.printStackTrace ();
                    }
                    catch (IOException e)
                    {
                        e.printStackTrace ();

                    }
                    catch (Exception e)
                    {
                        e.printStackTrace ();
                    }
                    finally
                    {
                        if (ds != null)
                        {
                            ds.close ();
                        }
                    }
                }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
            }
        });

        thread.start();
    }
}
