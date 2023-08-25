import 'package:flutter/material.dart';

class InputsFormS extends StatelessWidget {
   final bool obscureText;
  final String hintext;
  final String labelText;
  final Icon? icon;
   final TextEditingController controller;
const InputsFormS({ Key? key, required this.obscureText, required this.hintext, required this.labelText, this.icon, required this.controller }) : super(key: key);

  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: EdgeInsets.only(top: 17),
      child: TextFormField(
        controller: controller,
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        obscureText: obscureText,
validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Este campo es requerido';
  } else {
    String parsedValue = value.toString();
    if (parsedValue.isEmpty) {
      return 'Ingrese un texto';
    } else if (int.tryParse(parsedValue) != null) {
      return 'No puede ser un número';
    }
  }
  return null; 
},
autovalidateMode: AutovalidateMode.onUserInteraction,


        decoration: InputDecoration(
          hintText: hintext,
          labelText: labelText,
          helperText: 'Solo texto',
          prefixIcon: icon,
          
        )
    
      ),
    );
  }
  
}

