import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class ImageSharingPage extends StatefulWidget {
  @override
  _ImageSharingPageState createState() => _ImageSharingPageState();
}

class _ImageSharingPageState extends State<ImageSharingPage> {
  List<String> dataList = [];
  File? _image;
  @override
  void initState() {
    super.initState();
    fetchData(); // Llama a la función fetchData al inicializar la pantalla
  }

  void fetchData() async {
    var url = Uri.parse('https://cataas.com/api/cats');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, procesa los datos aquí
        // Por ejemplo, puedes almacenar los datos en una lista
        setState(() {
          dataList = processData(response.body);
        });
      } else {
        // La solicitud falló con un código de estado diferente de 200
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Ocurrió un error durante la solicitud
      print('Error: $e');
    }
  }

  List<String> processData(String responseBody) {
    // Implementa la lógica para procesar los datos de la API aquí
    // Por ejemplo, puedes convertir el cuerpo de la respuesta en una lista de strings
    // y devolverla
    // return ...

    return [];
  }

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
            fontSize: 30.0,
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
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(dataList[index]),
            );
            },
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
