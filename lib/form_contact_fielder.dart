import 'package:contact_crud_hive/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class FormContactFielder extends StatelessWidget {
  final TextEditingController controller;
  final String hintTextName;
  final IconData iconData;
  final TextInputType textInputType;

 

  FormContactFielder(
      {super.key,
      required this.controller,
      required this.hintTextName,
      required this.iconData,
      this.textInputType = TextInputType.text});

  

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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite $hintTextName';
        }
        if (hintTextName == 'Email' && !validateEmail(value)) {
          return 'Digite um e-mail válido';
        }
        
      },
    );
  }

  bool validateEmail(String email) {
    final emailReg = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return emailReg.hasMatch(email);
  }

  
}
