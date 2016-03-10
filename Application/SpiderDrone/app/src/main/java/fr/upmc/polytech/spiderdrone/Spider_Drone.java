package fr.upmc.polytech.spiderdrone;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class Spider_Drone extends AppCompatActivity
{
private TextView commande;
private EditText adresseIP;
private ThreadUDP threadPrincipal;

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
	adresseIP = (EditText) findViewById (R.id.adresseIP);

	/*On leur ajoute le listener privé créé au début de ce fichier*/
	boutonStabilisation.setOnTouchListener (monListener);
	boutonFlecheHaut.setOnTouchListener (monListener);
	boutonFlecheBas.setOnTouchListener (monListener);
	boutonFlecheDroite.setOnTouchListener (monListener);
	boutonFlecheGauche.setOnTouchListener (monListener);
	boutonArretUrgence.setOnTouchListener (monListener);
	boutonOrientation.setOnTouchListener (monListener);
}

protected void onResume ()
{
	super.onResume();
	threadPrincipal = new ThreadUDP ();
	threadPrincipal.start ();
}

protected void onPause ()
{
	super.onPause ();
	threadPrincipal.interrupt ();
	try
	{
		threadPrincipal.join ();
	}
		catch (InterruptedException e)
	{
		e.printStackTrace ();
	}
}

public class ThreadUDP extends Thread
{
	public void run ()
	{
		while (!isInterrupted ())
		{
			try
			{
				ThreadEnvoiPaquetUDP thread = new ThreadEnvoiPaquetUDP ();
				thread.run ();
				Thread.sleep (10);
			}
			catch (InterruptedException e)
			{
				Thread.currentThread ().interrupt ();
			}
		}
	}
}

public class ThreadEnvoiPaquetUDP extends Thread
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
				InetAddress serverAddr = InetAddress.getByName (adresseIP.getText ().toString ());
				DatagramPacket dp = new DatagramPacket (udpMsg.getBytes (), udpMsg.length (), serverAddr, UDP_SERVER_PORT);
				ds.send (dp);
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
}
}
