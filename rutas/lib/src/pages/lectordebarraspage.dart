import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


MobileScannerController cameraController = MobileScannerController();

class CodigoPage extends StatefulWidget {
  const CodigoPage({super.key});

  @override
  State<CodigoPage> createState() => _CodigoPageState();
}

class _CodigoPageState extends State<CodigoPage> {
  String usu='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$usu')),
      body: MobileScanner(
        fit: BoxFit.contain,
        controller: MobileScannerController(
          // facing: CameraFacing.back,
          // torchEnabled: false,
          returnImage: true,
        ),
        onDetect: (capture) {
          setState(() {
            final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
            this.usu =  '${barcode.rawValue}';
           
          }
          if (image != null) {
            showDialog(
              context: context,
              builder: (context) => Image(image: MemoryImage(image)),
            );
            Future.delayed(const Duration(seconds: 5), () {});
          }
            
          });
          
        },
      ),
    );
  }
}