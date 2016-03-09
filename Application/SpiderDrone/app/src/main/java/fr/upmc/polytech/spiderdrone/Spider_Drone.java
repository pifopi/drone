package fr.upmc.polytech.spiderdrone;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v7.app.AppCompatActivity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class Spider_Drone extends AppCompatActivity
{
    private TextView commande;
	private TextView etatConnexion;
    private EditText adresseIP;
    private Thread threadPrincipal;
    private Thread threadConnexion;
	
	private int UDP_SERVER_PORT = 2000;

    private View.OnTouchListener monListener = new View.OnTouchListener ()
    {
        public boolean onTouch (View v, MotionEvent event)
        {
            if (event.getAction () == MotionEvent.ACTION_DOWN)
            {
                switch (v.getId ())
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
                        commande.setText ("Gauche");
                        break;

                    case R.id.arret:
                        commande.setText ("Arret");
                        break;

                    case R.id.orientation:
                        commande.setText ("Orientation");
                        break;
                }
            }
            else if (event.getAction () == MotionEvent.ACTION_UP)
            {
                commande.setText ("Bouton relaché");
            }
            return false;
        }
    };


    protected void onCreate (Bundle savedInstanceState)
    {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_spider_drone);

		/*On récupère les boutons créés avec le XML*/
        Button boutonStabilisation = (Button) findViewById (R.id.stabilisation);
        Button boutonFlecheHaut = (Button) findViewById (R.id.haut);
        Button boutonFlecheBas = (Button) findViewById (R.id.bas);
        Button boutonFlecheDroite = (Button) findViewById (R.id.droite);
        Button boutonFlecheGauche = (Button) findViewById (R.id.gauche);
        Button boutonArretUrgence = (Button) findViewById (R.id.arret);
        Button boutonOrientation = (Button) findViewById (R.id.orientation);
        commande = (TextView) findViewById (R.id.commande);
        etatConnexion = (TextView) findViewById (R.id.etatConnexion);
        adresseIP = (EditText) findViewById (R.id.adresseIP);

		/*On leur ajoute le listener privé créé au début de ce fichier*/
        boutonStabilisation.setOnTouchListener (monListener);
        boutonFlecheHaut.setOnTouchListener (monListener);
        boutonFlecheBas.setOnTouchListener (monListener);
        boutonFlecheDroite.setOnTouchListener (monListener);
        boutonFlecheGauche.setOnTouchListener (monListener);
        boutonArretUrgence.setOnTouchListener (monListener);
        boutonOrientation.setOnTouchListener (monListener);

        /*On utilise un thread pour vérifier de manière périodique que la connexion est bien active*/
        /*if (threadConnexion == null)
        {
            threadConnexion = new Thread (new Runnable ()
            {
                public void run ()
                {
                    while (true)
                    {*/
                        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService (CONNECTIVITY_SERVICE);
                        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo ();
                        if (networkInfo != null && networkInfo.isAvailable () && networkInfo.isConnected ())
                        {
                            boolean wifi = networkInfo.getType () == ConnectivityManager.TYPE_WIFI;
                            etatConnexion.setText ("L'interface de connexion active est du Wifi : " + wifi);
                        }
                        else
                        {
                            etatConnexion.setText ("La connexion au réseau n'est pas établie");
                        }
                        /*SystemClock.sleep (1000);
                    }
                }
            });
            threadConnexion.start ();
        }*/

        /*On utilise un thread pour envoyer les données de manière périodique*/
        threadPrincipal = new Thread (new Runnable ()
        {
            public void run ()
            {
                while (true)
                {
                    envoiPaquet ();
                    SystemClock.sleep (500);
                }
            }
        });
        threadPrincipal.start ();
	}

    private void envoiPaquet ()
    {
        Thread thread = new Thread (new Runnable()
        {
            public void run ()
            {
                try
                {
                    String udpMsg = (String) commande.getText ();
                    DatagramSocket ds = null;
                    try
                    {
                        ds = new DatagramSocket ();
                        InetAddress serverAddr = InetAddress.getByName (adresseIP.getText ().toString());
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
                    e.printStackTrace ();
                }
            }
        });

        thread.start ();
    }
}
