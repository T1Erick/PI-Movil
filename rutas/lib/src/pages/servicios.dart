import 'package:flutter/material.dart';

class ServiciosPages extends StatefulWidget {
  const ServiciosPages({super.key});


  @override
  State<ServiciosPages> createState() => _ServiciosPagesState();
}

class _ServiciosPagesState extends State<ServiciosPages> {
  final List<Product> products = [
    Product(
      name: "Collar para Gatos",
      price: "100",
      image: "assets/images/collar1.png",
    ),
    Product(
      name: "Alimento de Cachorros",
      price: "200",
      image: "assets/images/comida2.png",
    ),
    Product(
      name: "Alimento de Gatos",
      price: "300",
      image: "assets/images/comida3.png",
    ),
    Product(
      name: "Alimento de perros",
      price: "50",
      image: "assets/images/comidaperros.jpg",
    ),
    Product(
      name: "Alimento de aves",
      price: "30",
      image: "assets/images/comidaAves.jpg",
    ),
    Product(
      name: "Collares para Gatos con nombres ",
      price: "10",
      image: "assets/images/collar3.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tienda',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 11, 11, 11),
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
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return  Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      products[index].image,
                      width: 80.0,
                      height: 80.0,
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text("Precio: \$${products[index].price}"),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        // Lógica para agregar un producto aquí
                        print("Agregando ${products[index].name}");
                      },
                    ),
                    
                  ],
                ),
                
              );
              
              
            },
            
          ),
      ),
        
      ),
    );
          }
  }
class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}