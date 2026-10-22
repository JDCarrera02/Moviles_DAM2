package com.examenpmdm.juan_carrera

import android.content.Intent
import android.os.Bundle
import android.widget.RadioButton
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.examenpmdm.juan_carrera.databinding.ActivityPreguntasBinding

class PreguntasActivity : AppCompatActivity() {

    private lateinit var binding: ActivityPreguntasBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        binding = ActivityPreguntasBinding.inflate(layoutInflater)

        setContentView(binding.root)

        ViewCompat.setOnApplyWindowInsetsListener(binding.mainPreguntas) { v, insets ->

            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        // Obtener lista de las preguntas


        // Obtener indice actual
        var indice = intent.getIntExtra("indice", 0)

        // Obtener lista de opciones
        val preguntas = resources.getStringArray(R.array.preguntas)
        val opcionesA = resources.getStringArray(R.array.opciones_a)
        val opcionesB = resources.getStringArray(R.array.opciones_b)
        val opcionesC = resources.getStringArray(R.array.opciones_c)
        val opcionesD = resources.getStringArray(R.array.opciones_d)

        // Setear pregunta con indice actual y opciones
        val enunciado = binding.labelEnunciado
        val progreso = binding.labelProgreso
        val opcion1 = binding.opcionA
        val opcion2 = binding.opcionB
        val opcion3 = binding.opcionC
        val opcion4 = binding.opcionD

        enunciado.text = preguntas[indice]
        progreso.text = getString(R.string.preg_progreso_texto, indice+1, preguntas.size)
        opcion1.text = opcionesA[indice]
        opcion2.text = opcionesB[indice]
        opcion3.text = opcionesC[indice]
        opcion4.text = opcionesD[indice]


        binding.botonComprobar.setOnClickListener {

            // Obtener indice del boton seleccionado
            val opcionId = binding.grupoBotones.checkedRadioButtonId

            // Comprobar que se haya seleccionado al menos una opcion
            if (opcionId == -1){
                Toast.makeText(this, R.string.toast_no_opciones, Toast.LENGTH_SHORT).show()
            } else {

                val intentRespuesta = Intent(this, Resultados::class.java)

                // Pasar valores
                intentRespuesta.putExtra("indice", indice)

                val textoRespuesta = findViewById<RadioButton>(opcionId).text.toString()

                intentRespuesta.putExtra("respuesta", textoRespuesta)

                startActivity(intentRespuesta)

                finish()
            }


        }

    }
}