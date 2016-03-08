package fr.upmc.polytech.spiderdrone;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class Spider_Drone extends AppCompatActivity
{
    private Button boutonStabilisation;
    private Button boutonFlecheHaut;
    private Button boutonFlecheBas;
    private Button boutonFlecheDroite;
    private Button boutonFlecheGauche;
    private Button boutonArretUrgence;
    private Button boutonOrientation;
    private TextView test;

    private View.OnTouchListener monListener = new View.OnTouchListener ()
    {
        public boolean onTouch (View v, MotionEvent event)
        {
            switch (v.getId ())
            {
                case R.id.stabilisation:
                    test.setText ("Stabilisation");
                    break;

                case R.id.haut:
                    test.setText ("Haut");
                    break;

                case R.id.bas:
                    test.setText ("Bas");
                    break;

                case R.id.droite:
                    test.setText ("Droite");
                    break;

                case R.id.gauche:
                    test.setText ("Gauche");
                    break;

                case R.id.arret:
                    test.setText ("Arret");
                    break;

                case R.id.orientation:
                    test.setText ("Orientation");
                    break;

                default:
                    test.setText ("Appui en dehors des boutons");
                    break;
            }
            return false;
        }
    };


    protected void onCreate (Bundle savedInstanceState)
    {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_spider_drone);

		/*On récupère les boutons créés avec le XML*/
        boutonStabilisation = (Button) findViewById (R.id.stabilisation);
        boutonFlecheHaut = (Button) findViewById (R.id.haut);
        boutonFlecheBas = (Button) findViewById (R.id.bas);
        boutonFlecheDroite = (Button) findViewById (R.id.droite);
        boutonFlecheGauche = (Button) findViewById (R.id.gauche);
        boutonArretUrgence = (Button) findViewById (R.id.arret);
        boutonOrientation = (Button) findViewById (R.id.orientation);
        test = (TextView) findViewById (R.id.test);

		/*On leur ajoute le listener privé créé au début de ce fichier*/
        boutonStabilisation.setOnTouchListener (monListener);
        boutonFlecheHaut.setOnTouchListener (monListener);
        boutonFlecheBas.setOnTouchListener (monListener);
        boutonFlecheDroite.setOnTouchListener (monListener);
        boutonFlecheGauche.setOnTouchListener (monListener);
        boutonArretUrgence.setOnTouchListener (monListener);
        boutonOrientation.setOnTouchListener (monListener);
    }
}
