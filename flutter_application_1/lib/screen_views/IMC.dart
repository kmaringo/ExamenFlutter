import 'package:flutter/material.dart';

class IMC extends StatefulWidget {
  const IMC({super.key});

  @override
  State<IMC> createState() => _IMCState();
}

class _IMCState extends State<IMC> {
  final pesoController = TextEditingController();
  final estaturaController = TextEditingController();
  final IMCController = TextEditingController();
  String resultadoIMC = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("IMC"),
      ),
      body: Column(
        children: [
          TextField(
            controller: pesoController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Peso en kilogramos: ',
            ),
          ),
          TextField(
            controller: estaturaController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Estatura en metros: ',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              double peso = double.parse(pesoController.text);
              double estatura = double.parse(estaturaController.text);

              double IMC = peso / (estatura * estatura);
              String resultado;

              if (IMC < 18.5) {
                resultado = 'Peso inferior al normal';
              } else if (IMC >= 18.5 && IMC < 24.9) {
                resultado = 'El peso es normal';
              } else if (IMC >= 25.0 && IMC < 29.9) {
                resultado = 'El peso es superior al normal';
              } else {
                resultado = 'Obesidad';
              }

    setState(() {
                IMCController.text = IMC.toStringAsFixed(2);
                resultadoIMC = resultado; 
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text('Calcular'),
          ),
          const SizedBox(height: 20),
          Text('Tu IMC es: ${IMCController.text}',
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(resultadoIMC, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
