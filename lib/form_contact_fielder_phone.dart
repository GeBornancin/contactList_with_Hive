import 'package:contact_crud_hive/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class FormContactFielderPhone extends StatelessWidget{
  final TextEditingController controller;
  final String hintTextName;
  final IconData iconData;
  final TextInputType textInputType;

 
 
 


  FormContactFielderPhone(
      {super.key,
      required this.controller,
      required this.hintTextName,
      required this.iconData,
      this.textInputType = TextInputType.text, required List inputFormatters,
      });
      
      @override
      Widget build(BuildContext context) {
        
      return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(iconData),
          hintText: hintTextName,
          filled: true,
        ),
        keyboardType: textInputType,
        inputFormatters: [
          PhoneInputFormatter()
           
        ],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor digite $hintTextName';
          }
        
        },
      );
    }
 
     
}