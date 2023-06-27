import 'package:flutter/material.dart';

class Page404 extends StatefulWidget {
  const Page404({super.key});

  @override
  State<Page404> createState() => _Page404State();
}

class _Page404State extends State<Page404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Lo siento no encontramos la url',
        style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),),
                backgroundColor: const Color.fromARGB(255, 11, 11, 11),
                centerTitle: true,
      ),
     body: Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 249, 248, 250),
        Color.fromARGB(255, 233, 133, 61)
      ],
      begin: Alignment.topRight,
    ),
  ),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/error.png'),
        ),
        const SizedBox(height: 20.0),
        Text('Seguramente te perdiste en el camino de la felicidad'),
        Divider(
                    height: 10.0,
                  ),
       ElevatedButton(
              onPressed:(){
                Navigator.popAndPushNamed(context, '/Home');},
                child:Text ('Vuelve a casa'),
             ),
      ],
    ),
  ),
  ));
  }
}