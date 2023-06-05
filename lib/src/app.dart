import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/gato.jpg'),
            ),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 160.0,
            height: 15.0,
            child: Divider(
              color: Colors.white70,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'USER-NAME',
                labelText: 'User name',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'EMAIL',
                labelText: 'Email',
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Acción que se ejecuta al presionar el botón de inicio de sesión
                print('¡Iniciar sesión presionado!');
              },
              child: Text('Iniciar sesión'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.purple, // Cambio de color del botón a rosa
                textStyle: TextStyle(color: Colors.white), // Cambio de color del texto del botón a blanco
              ),
            ),
          ),
        ],
      ),
    );
  }
}
