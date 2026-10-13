package org.iesch.superheroes

import android.content.Intent
import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import org.iesch.superheroes.Model.SuperHero
import org.iesch.superheroes.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    // 1 - Creacion de la variable lateInit
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        // 2 - Inicializar el binding
        binding = ActivityMainBinding.inflate(layoutInflater)

        // 3 - Usar el binding para inflar la vista
        setContentView(binding.root)

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        // val botonGuardar = findViewById<Button>(R.id.btn_guardar)

        binding.btnGuardar.setOnClickListener {

            //Obtener los valores que se han introducido en los campos
            val superHeroName = binding.heroNameEdit.text.toString()
            val alterEgo = binding.alterEgoEdit.text.toString()
            val bio = binding.bioEdit.text.toString()
            val power = binding.power.rating

            // Crear el objeto SuperHero
            val superHeroe = SuperHero(superHeroName, alterEgo, bio, power)

            // Lo que se va a realizar cuando se pulsa el boton
            irADetailActivity(superHeroe)
        }

    }

    fun irADetailActivity(superHeroe: SuperHero) {
        // Crear el objeto Intent
        val intent = Intent(this, DetailActivity::class.java)

        // Añadir todos los campos con el metodo putExtra
        /*
        intent.putExtra("superHeroName", superHeroName)
        intent.putExtra("alterEgo", alterEgo)
        intent.putExtra("bio", bio)
        intent.putExtra("power", power) */

        intent.putExtra("superHeroe", superHeroe.toString())

        // Enviar datos al DetailActivity


        // Ejecutar el objeto Intent creado con el contexto
        startActivity(intent)
    }
}