import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSharingPage extends StatefulWidget {
  @override
  _ImageSharingPageState createState() => _ImageSharingPageState();
}

class _ImageSharingPageState extends State<ImageSharingPage> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  void _shareImage() {
    if (_image != null) {
      // Lógica para compartir la imagen
      // Aquí puedes implementar el código para compartir la imagen en redes sociales, enviarla por correo electrónico, etc.
      print('Compartiendo imagen: ${_image!.path}');
    } else {
      print('No se ha seleccionado ninguna imagen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Compartir imagen',
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_image != null)
                Image.file(
                  _image!,
                  width: 200,
                  height: 200,
                ),
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.camera),
                child: Text('Tomar Foto'),
              ),
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                child: Text('Seleccionar de la Galería'),
              ),
              ElevatedButton(
                onPressed: _shareImage,
                child: Text('Compartir Imagen'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: ImageSharingPage(),
      debugShowCheckedModeBanner: false,
    ));
  }
}
