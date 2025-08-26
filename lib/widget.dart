
import 'package:flutter/material.dart';

import 'login_form.dart';

Widget textField ({
 required TextEditingController controller,
 required String label,
required String hint,
}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30),),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          )
      ),
    ),
    style: TextStyle(
      color: Colors.white,fontSize: 20,
    ),
  );
}