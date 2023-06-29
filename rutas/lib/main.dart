import 'package:flutter/material.dart';
import 'package:rutas/src/pages/lectordebarraspage.dart';
import 'package:rutas/src/pages/homepage.dart';
import 'package:rutas/src/pages/login.dart';
import 'package:rutas/src/pages/notification.dart';

import 'package:rutas/src/pages/page404.dart';
import 'package:rutas/src/pages/perfilpage.dart';
import 'package:rutas/src/pages/publicaciones.dart';
import 'package:rutas/src/pages/register.dart';
import 'package:rutas/src/pages/servicios.dart';
import 'package:rutas/src/pages/upload.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes={
    '/Home':(context) => HomePages(),
    '/Login':(context) => LoginPage(),
    '/Register':(context) => RegisterPage(),
    '/Otra':(context) => ImagePage(),
    '/Servicios':(context) => ServiciosPages(),
    '/Perfil':(context) => PerfilPage(),
    '/LectorDeBarras':(context) => CodigoPage(),
    '/Imagenes':(context) => ImagePage(),
    '/Notificaciones':(context) => NotificationPage(),
    '/Publicaciones':(context) => PostPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/Home',
      routes:_routes,
      onGenerateRoute :(settings){
        return MaterialPageRoute(builder : (context)=>Page404(),);
      }

      //home: HomePages()
    );
  }
}