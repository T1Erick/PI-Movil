import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: const Text(
            'Iniciar Sesión',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),
                
          ),
          backgroundColor: Color.fromARGB(255, 15, 15, 15),
          centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 249, 248, 250),
              Color.fromARGB(255, 233, 133, 61)],
              begin: Alignment.topRight
            )),
        child: ListView(
          
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('assets/images/descarga.jpg'),
                    ),
                    Text(
                      'Login',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Color.fromARGB(255, 16, 16, 16),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    Text(
                      'Nombre',
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    TextField(
                      enableInteractiveSelection: false,
                      decoration: InputDecoration(
                          hintText: 'Usser-Name',
                          labelText: 'Usser Name',
                          suffixIcon: Icon(Icons.verified),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    Text(
                      'Contraseña',
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    TextField(
                      enableInteractiveSelection: false,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.password_sharp),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    Text(
                      'Email',
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 30.0,
                      child: Divider(color: Colors.deepOrange[200]),
                    ),
                    TextField(
                      enableInteractiveSelection: false,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    Divider(
                          height: 20.0,
                        ),
                     SizedBox(
                        width:130.0,
                        height:30.0,
                        child: ElevatedButton(
                   onPressed:(){
                         Navigator.pushNamed(context, '/Servicios');},
                         child: Text("Ingresar"),
                        ),

                  ),
                    Row(
                      children: [
                        Divider(
                          height: 20.0,
                        ),
                        SizedBox(
                        width:130.0,
                        height:30.0,
                        child: ElevatedButton.icon(
                   onPressed:(){
                         Navigator.popAndPushNamed(context, '/Home');},
                         icon: Icon(Icons.arrow_back ),
                         label: Text("Regresar"),
                        ),

                  ),
                      ],
                    ),
                        
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}