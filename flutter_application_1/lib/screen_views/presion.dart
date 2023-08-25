
import 'package:flutter/material.dart';


class PresionArterial extends StatefulWidget {
  const PresionArterial({ Key? key }) : super(key: key);

  @override
  _PresionArterialState createState() => _PresionArterialState();
}

class _PresionArterialState extends State<PresionArterial> {
  final presionArterial = TextEditingController();
  String info = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presión Arterial'),
      ),
      body:  SingleChildScrollView(
      child: Column(
        children: [
          InputsForm(controller: presionArterial , obscureText: false, hintext: 'Ingrese presion arterial', labelText: 'Presión Arterial'),
          
           ElevatedButton(
                onPressed: () {
                  setState(() {
                   int presion = int.parse(presionArterial.text);
                   if(presion <= 120){
                    info = 'Presion en estado normal';
                   }
                   else if(presion> 120 && presion <=129){
                    info = 'Presion en estado alto (Sin otros factores de riesgo ';
                   }
                   else if(presion>=130 && presion <= 179){
                    info = 'Presion en estado alto (con otros factores de riesgo cardíaco, según algunos proveedores)';
                   }else if(presion >=180){
                    info= 'Presión arterial peligrosamente alta - Busque atención médica de inmediato';
                   }
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(50, 50),
                ),
                child: const Text('Mostrar'),
              ),
              SizedBox(height: 10,),
              Text('$info ')
        ],
      ),
      
    )
    );
  }
}
   

