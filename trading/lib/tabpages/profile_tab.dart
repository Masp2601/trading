// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trading/profile/account.dart';
import 'package:trading/profile/language.dart';
import 'package:trading/profile/payment.dart';
import 'package:trading/profile/referral.dart';
import 'package:trading/profile/settings.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Perfil",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //boton sistema de referidos
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ReferalProfile();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: const Text(
                      'Sistema de Referidos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 115.0,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ReferalProfile();
                        },
                      ),
                    );
                  },
                  icon: const Icon(
                    Iconsax.gift4,
                    color: Colors.white,
                    size: 32,
                  ),
                  splashColor: Colors.transparent,
                )
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            //boton cuentas usuario
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white24, // button color
                        child: InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const AccountProfile();
                                },
                              ),
                            );
                          }, // splash color // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(Iconsax.user, color: Colors.white), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "Mi cuenta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AccountProfile();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 190.0,
                ),
                const Icon(
                  Iconsax.edit,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //boton formas de pago
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white24, // button color
                        child: InkWell(
                          splashColor: Colors.transparent, // splash color
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const PaymentProfile();
                                },
                              ),
                            );
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(Icons.payment, color: Colors.white), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "Formas de pago",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PaymentProfile();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 142.0,
                ),
                const Icon(Iconsax.arrow_right_41),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //boton lenguaje
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white24, // button color
                        child: InkWell(
                          splashColor: Colors.transparent, // splash color
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const LanguageProfile();
                                },
                              ),
                            );
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(Icons.language, color: Colors.white), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "Lenguaje",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LanguageProfile();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 200.0,
                ),
                const Icon(Iconsax.arrow_right_41),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //boton configuracion
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white24, // button color
                        child: InkWell(
                          splashColor: Colors.transparent, // splash color
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SettingsProfile();
                                },
                              ),
                            );
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(Icons.settings, color: Colors.white), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "Configuraciones",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SettingsProfile();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 140.0,
                ),
                const Icon(Iconsax.arrow_right_41),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //boton preguntas frecuentes
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white24, // button color
                        child: InkWell(
                          splashColor: Colors.transparent, // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(Icons.question_answer,
                                  color: Colors.white), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "Preguntas frecuentes",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 100.0,
                ),
                const Icon(Iconsax.arrow_right_41),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            //boton para contactarnos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Contactenos',
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
      ),
    );
  }
}
