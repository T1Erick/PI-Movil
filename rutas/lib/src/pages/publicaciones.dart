import 'package:flutter/material.dart';

class Post {
  final String title;
  final String body;
  final String image; // Propiedad para almacenar la ruta de la imagen

  Post({required this.title, required this.body, required this.image});
}

class PostPage extends StatelessWidget {
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descripcionController = TextEditingController();
  final List<Post> posts = [
  Post(
    title: 'Post 1',
    body: 'Hernoso compartir con nuestras mascotas',
    image: 'images/public.jpg', // Ruta de la imagen para el primer post
  ),
  Post(
    title: 'Post 2',
    body: 'Mi bella mascota.',
    image: 'images/public2.jpg', // Ruta de la imagen para el segundo post
  ),
  Post(
    title: 'Post 3',
    body: 'Un gatito feliz.',
    image: 'images/gato.jpeg', // Ruta de la imagen para el tercer post
  ),
];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tus Publicaciones',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'RobotoMono',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 249, 248, 250),
              Color.fromARGB(255, 233, 133, 61),
            ],
            begin: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return Card(
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        post.title,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(post.body),
                      leading: Image.asset(
                        post.image,
                        width: 800,
                        height: 500,
                      ),
                      onTap: () {
                        // Acción al hacer clic en una publicación
                        print('Clic en la publicación: ${post.title}');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  
}

void main() {
  runApp(MaterialApp(
    home: PostPage(),
    debugShowCheckedModeBanner: false,
  ));
}
