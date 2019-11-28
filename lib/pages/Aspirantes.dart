import 'package:flutter/material.dart';
import 'package:fworkout/data/database_helper.dart';

class Aspi extends StatefulWidget {
  @override
  _AspiState createState() => _AspiState();
}

class _AspiState extends State<Aspi> {
  final _formKey = GlobalKey<FormState>();
  final nombre= TextEditingController();
  final  apellidos= TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
   final passwordValie = TextEditingController();
   final idcont=TextEditingController();
   final prepacontr=TextEditingController();
   final municipiocont=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRO'),
      ),
      body:
      ListView(
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: 30),      
          children: <Widget>[
      Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: nombre,
              decoration: InputDecoration(labelText: 'Nombre'),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Por favor pon tu nombre';
                }
              },
            ),
            TextFormField(
              controller: apellidos,
              decoration: InputDecoration(labelText: 'Apellidos'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Pon tus apellidos';
                }
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Edad'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'pon tu edad';
                }
              },
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Sexo'),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Elige tu sexo';
                }
              },
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Pon tu correo electronico';
                }
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Teléfono'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Ingresa tu número telefónico';
                }
              },
            ), TextFormField(
              controller: prepacontr,
              decoration: InputDecoration(labelText: 'Preparatoria'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Pon tu preparatoria de procedencia';
                }
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: '1era opcion de carrera'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Elge tu 1era opcion de carrera';
                }
              },
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: '2da opcion de carrera'),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Elige tu 2da opcion de carrera';
                }
              },
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: '3ra opcion de carrera'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Elige tu 3ra opcion de carrera';
                }
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Fecha de registro'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Ingresa tu fecha de registro';
                }
              },
            ),
        const SizedBox(height: 30),
          RaisedButton(
               onPressed: () {
                if (_formKey.currentState.validate()) {
                  DBHelper dbHelper = DBHelper();
                 // dbHelper.saveAspi(
                   // nameController.text as int,
                    //passwordController.text,
                   // prepacontr.text,

                  //);
                  Navigator.pushReplacementNamed(context, '/login');
                  Navigator.pop(context);
                  
                }
                
              },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
              
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Registrate', style: TextStyle(fontSize: 26)),
            ),
          ),
          
          ],
        ),
      ),
          ]
    )
    );
  }
}