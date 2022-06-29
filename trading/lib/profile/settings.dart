import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsProfile extends StatefulWidget {
  SettingsProfile({Key? key}) : super(key: key);

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Configuraciones",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "General",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  child: const Text(
                    "Contactenos",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 200.0,
              ),
              const Icon(Iconsax.arrow_right_41),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [],
          ),
          const SizedBox(
            height: 40.0,
          ),
          //boton para cerrar sesion
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Cerrar Sesion',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
