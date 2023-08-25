import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/IMC.dart';
import 'package:flutter_application_1/screen_views/calorias.dart';
import 'package:flutter_application_1/screen_views/dietas.dart';

List<String> opciones = ['Dietas', 'IMC', 'Calorias', 'Rutinas de Ejercicios','Presion Arterial','Contacto'];

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Decoraciones LT'),
      ),
      body: ListView(
        children: opciones.map(
          (opcion) {
            int index = opciones.indexOf(opcion);
            return Card(
              child: ListTile(
                
                title: Text(opcion),
                onTap: () {
                  if (opcion == 'Dietas') {
                    final route = MaterialPageRoute(builder: (context) => const Dietas());
                    Navigator.push(context, route);
                  }else if(opcion == 'IMC'){
                    final route = MaterialPageRoute(builder: (context) => const IMC());
                    Navigator.push(context, route);
                  }else if(opcion == 'Calorias'){
                    final route = MaterialPageRoute(builder: (context) =>  Calorias());
                    Navigator.push(context, route);
                  }else if(opcion == 'Rutinas de Ejercicio'){
                    final route = MaterialPageRoute(builder: (context) =>  PresionArterial ());
                    Navigator.push(context, route);
                  // }else if(opcion == 'Presion Arterial'){
                  //   final route = MaterialPageRoute(builder: (context) => const dietas());
                  //   Navigator.push(context, route);
                  // }else if(opcion == 'Sugerencias'){
                  //   final route = MaterialPageRoute(builder: (context) => const dietas());
                  //   Navigator.push(context, route);
                  }
                  print(opcion);
                },
                
              ),
              
            );
          
          },
          
        ).toList(),
      ),
    );
    // ignore: dead_code
    Image.network('../img/dieta.jpg',
                width: 100,
                height: 100,
                );
  }
}