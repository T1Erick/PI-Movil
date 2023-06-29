import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('ErickGuevara'),
            accountEmail: Text('ead.guevara@yavirac.edu.ec'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/perfil.jpg')),
            ),
            decoration: BoxDecoration(
              

              gradient: LinearGradient(
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
               colors: [Color.fromARGB(255, 233, 133, 61),Color.fromARGB(255,27,27,27)])
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Publicaciones'),
            onTap: () => Navigator.popAndPushNamed(context, '/Publicaciones'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: () => Navigator.popAndPushNamed(context, '/Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            onTap: () => Navigator.popAndPushNamed(context, '/Notificaciones'),
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('Lector De Barras'),
            onTap: () => Navigator.popAndPushNamed(context, '/LectorDeBarras'),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Tienda'),
            onTap: () => Navigator.popAndPushNamed(context, '/Servicios'),
          ),
          ListTile(
            leading: Icon(Icons.post_add),
            title: Text('Subir Foto'),
            onTap: () => Navigator.popAndPushNamed(context, '/Otra'),
          ),
         
        ],
      ),
    );
  }
}
