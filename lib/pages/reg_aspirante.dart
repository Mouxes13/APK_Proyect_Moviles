
import 'package:flutter/material.dart';
import 'package:fworkout/data/database_helper%201.dart';
import 'package:fworkout/m.dart';
import '../model/prepa_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fworkout/data/database_helper 1.dart';
import 'package:fworkout/model/aspi_model.dart';

class RegistroAsp extends StatefulWidget {
  @override
  _RegistroAspState createState() => _RegistroAspState();
}

class _RegistroAspState extends State < RegistroAsp > {
  final _formKey = GlobalKey < FormState > ();
  final nombreController = TextEditingController();
  final apellidosController = TextEditingController();
  final edadController = TextEditingController();
  final sexoController = TextEditingController();
  final correoController = TextEditingController();
  final telController = TextEditingController();
  final prepaController = TextEditingController();
  final primeraOpcionController = TextEditingController();
  final segundaOpcionController = TextEditingController();
  final terceraOpcionController = TextEditingController();
  int i=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Aspirante'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
        key: _formKey,
        child: Column(
          children: < Widget > [

            TextFormField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                String nombre = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: apellidosController,
              decoration: InputDecoration(labelText: 'Apellidos'),
              validator: (input) {
                String apell = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: edadController,
              decoration: InputDecoration(labelText: 'Edad'),
              validator: (input) {
                String edad = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: sexoController,
              decoration: InputDecoration(labelText: 'Sexo'),
              validator: (input) {
                String sexo = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: correoController,
              decoration: InputDecoration(labelText: 'Correo'),
              validator: (input) {
                String email = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: telController,
              decoration: InputDecoration(labelText: 'Número de teléfono'),
              validator: (input) {
                String movil = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            
            TextFormField(
              controller: primeraOpcionController,
              decoration: InputDecoration(labelText: 'Primera opción'),
              validator: (input) {
                String primopc = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: segundaOpcionController,
              decoration: InputDecoration(labelText: 'Segunda opción'),
              validator: (input) {
                String segundaop = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            TextFormField(
              controller: terceraOpcionController,
              decoration: InputDecoration(labelText: 'Tercera opción'),
              validator: (input) {
                String tercop = input;
                if (input.isEmpty) {
                  return 'El campo esta vacio';
                }

                return null;
              },
            ),
            RaisedButton(
              
              child: Text('Agregar'),
              color: Colors.blueGrey,
              textColor: Colors.white,
              onPressed: () async{
                if(_formKey.currentState.validate()){
                    Aspi asp= new Aspi(i.toString(),nombreController.text,apellidosController.text,edadController.text,sexoController.text,correoController.text,telController.text);
                  final db = InfoVal();
                  db.initDB();
                  
                  await  db.guardarAspirante([
                    nombreController.text,
                    apellidosController.text,
                    edadController.text,
                    sexoController.text,
                    correoController.text,
                    telController.text,
                    prepaController.text,
                    primeraOpcionController.text,
                    segundaOpcionController.text,
                    terceraOpcionController.text
                  ]);
                  i++;
                  await db.getEmpleadoAPI(asp);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
        )
      )
    );
  }
}
     