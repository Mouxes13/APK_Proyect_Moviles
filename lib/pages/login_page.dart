import 'package:flutter/material.dart';
import 'package:fworkout/model/user_model.dart';
import 'package:fworkout/data/database_helper.dart';

class LoginPage extends StatefulWidget {
  
// user defined function
  
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(   

     
        child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),      
          children: <Widget>[
        Form(
        key: _formKey,
        
        child: Column(
          
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80),
               child:Image.network('http://2.bp.blogspot.com/-0V8WR7wnBRA/VRm5xDI6GbI/AAAAAAAAAK0/USSWjETvdiw/s1600/upiiz_logo%2B-%2Bchico.png'),
            ),
            Padding(
               
            child:TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'CorreoElectronico'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Ponga su correo por favor';
                }
              },
            ),
            padding: EdgeInsets.only(top: 30),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Inserte su contraseña';
                }
              },
            ),
             const SizedBox(height: 30),
          RaisedButton(
            onPressed:  _authenticateUser,
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Iniciar Sesión', style: TextStyle(fontSize: 25)),
            ),
          ),
              
            Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row( children:[
          Expanded(child: Divider(height: 1,)),
          Text('0'),
          Expanded(child: Divider(height: 1,))
      ],),
    ),
           const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
              
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Registrate', style: TextStyle(fontSize: 27)),
            ),
          ),
            
          ],
        ),
      ),
          ]
      )
      )
    );
  }

  _authenticateUser() async {
    if (_formKey.currentState.validate()) {
      DBHelper dbHelper = DBHelper();
      dbHelper
          .getUser(emailController.text, passwordController.text)
          .then((List<User> users) {
        if (users != null && users.length > 0) {
          Navigator.pushNamed(context, '/home');
          print('[LoginPage] _authenticateUser: Success');
        } else {
          
         return mostrarDialog(context);
        }
      });
    }
  }
}
void mostrarDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
        
          title: new Text("Error en la matrix"),
          content: new Text("Usuario y/o contraseña incorrectos"),
          
          actions: <Widget>[
          
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }