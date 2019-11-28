import 'package:flutter/cupertino.dart';

class Aspi {
String _movil;  
String _id;
String _name;
String _email;
String _password;
String _subnivel;
String _municipio;




  Aspi(
    this._id,
    this._name,
    this._password,
    this._subnivel,
    this._municipio,
    this._email,
    this._movil
  );
    
    String get id => _id;
  String get name => _name;
  String get password => _password;
  String get subnivel =>_subnivel;
  String get municipio =>_municipio;
  String get movil => _movil;
    String get email => _email;
  getrow(Null Function() param0) {}



}