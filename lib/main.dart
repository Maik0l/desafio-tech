import 'package:flutter/material.dart';
import 'package:desafio_tech/pages/home.dart';
import 'package:desafio_tech/pages/edit_profile.dart';
import 'package:desafio_tech/pages/edit_section.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/editProfile': (context) =>
          EditProfile(bio: "", local: "", userName: ""),
      '/editSection': (context) => EditSection()
    },
  ));
}
