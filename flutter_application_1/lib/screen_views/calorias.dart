import 'package:flutter/material.dart';

class Calorias extends StatefulWidget {

  @override
  _CaloriasState createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  int desayuno = 0;
  int almuerzo = 0;
  int cena = 0;
  bool mujer = true;

  int TotalCaloria() {
    return desayuno + almuerzo + cena;
  }

  String caloria() {
    int totalCalories = TotalCaloria();
    if (mujer) {
      if (totalCalories < 1600) {
        return 'Déficit calórico';
      } else if (totalCalories >= 1600 && totalCalories <= 2000) {
        return 'Consumo normal';
      } else {
        return 'Consumo Excesivo de calorías';
      }
    } else {
      if (totalCalories < 1600) {
        return 'Déficit calórico';
      } else if (totalCalories >= 2000 && totalCalories <= 2500) {
        return 'Consumo normal';
      } else {
        return 'Consumo Excesivo de calorías';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Calculo de calorias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  desayuno = int.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(labelText: 'Desayuno (calorías)'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  almuerzo = int.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(labelText: 'Almuerzo (calorías)'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  cena = int.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(labelText: 'Cena (calorías)'),
            ),
            Row(
              children: [
                const Text('Género:'),
                const SizedBox(width: 10),
                DropdownButton<bool>(
                  value: mujer,
                  onChanged: (value) {
                    setState(() {
                      mujer = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem<bool>(
                      value: true,
                      child: Text('Mujer'),
                    ),
                    DropdownMenuItem<bool>(
                      value: false,
                      child: Text('Hombre'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Total de calorías: ${TotalCaloria()}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Estado calórico: ${caloria()}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
