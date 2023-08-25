import 'package:flutter/material.dart';

class Dietas extends StatefulWidget {
  const Dietas({Key? key}) : super(key: key);

  @override
  State<Dietas> createState() => _DietasState();
}

class _DietasState extends State<Dietas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Dieta'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Sugerencia de Dieta:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset('dieta.jpg'),
                      Text('Desayuno'),
                      Text('Pan integral, huevo, cafe y fruta'),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('imagen2.jpg'),
                      Text('Almuerzo'),
                      Text('Ensalada, arroz, pollo'),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('imagen3.jpg'),
                      Text('Cena'),
                      Text('sanduche de pollo'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset('ruta_de_imagen_local.jpg'),
          ],
        ),
      ),
    );
  }
}


