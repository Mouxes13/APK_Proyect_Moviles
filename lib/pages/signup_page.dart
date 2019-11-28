import 'package:flutter/material.dart';
import 'package:fworkout/data/database_helper.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
   final passwordValie = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRO'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Nombre de Usuario'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Pon tu nombre de usuario';
                }
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'pon tu contraseña';
                }
              },
            ),
            TextFormField(
              controller: passwordValie,
              decoration: InputDecoration(labelText: ' Confirma Contraseña'),
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'pon tu contraseña';
                }
              },
            ),
        const SizedBox(height: 30),
          RaisedButton(
               onPressed: () {
                if (_formKey.currentState.validate()) {
                  if(passwordValie.text==passwordController.text){
                  DBHelper dbHelper = DBHelper();
                  dbHelper.saveUser(
                    nameController.text,
                    emailController.text,
                    passwordController.text,
                  );
                  Navigator.pushReplacementNamed(context, '/login');
                  Navigator.pop(context);
                }
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
    );
  }
}
