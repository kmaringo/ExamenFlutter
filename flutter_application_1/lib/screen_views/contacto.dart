import 'package:flutter/material.dart';


class Contacto extends StatelessWidget {

const Contacto({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final correo = TextEditingController();
    final nombre = TextEditingController();
    final celular = TextEditingController();
    String info = '';
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacto"),
      ),
      body: SingleChildScrollView(child: 
      Column(
        children: [
          Widget.InputsFormS(obscureText: false, hintext: 'Ingrese su correo', labelText: 'Correo', controller: correo),
          Widget.InputsFormS(obscureText: false, hintext: 'Ingrese su nombre', labelText: 'Nombre', controller: nombre),
          InputsForm(controller: celular, obscureText: false, hintext: 'Ingrese su teléfono', labelText: 'Teléfono'),
           ElevatedButton(
                onPressed: () {
                  info = 'Se envio la información';
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(50, 50),
                ),
                child: const Text('Enviar'),
              ),
              SizedBox(height: 10,),
              Text(' $info ')
        ],
      )),
    );
  }
}