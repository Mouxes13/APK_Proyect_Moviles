import 'package:flutter/material.dart';
import 'package:fworkout/pages/home_page.dart';
import 'package:fworkout/pages/login_page.dart';
import 'package:fworkout/pages/signup_page.dart';
import 'package:fworkout/pages/Aspirantes.dart';
import 'package:fworkout/pages/Sicronizados.dart';
import 'package:fworkout/pages/reg_aspirante.dart';


final myRoutes = {
  '/': (BuildContext context) => LoginPage(),
  '/signup': (BuildContext context) => SignUpPage(),
  '/login': (BuildContext context) => LoginPage(),
  '/home': (BuildContext context) => MiPaginaPrincipal(),
    '/aspi': (BuildContext context) => Aspi(),
    '/sic': (BuildContext context) => Sic(),
    '/reg': (BuildContext context) => RegistroAsp()
};
