// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text(
              "Cerrar Sesion",
            ),
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
