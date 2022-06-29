import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReferalProfile extends StatefulWidget {
  const ReferalProfile({super.key});

  @override
  State<ReferalProfile> createState() => _ReferalProfileState();
}

class _ReferalProfileState extends State<ReferalProfile> {
  final String data = "81174";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Referidos",
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
            //codigo referido
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Tu Codigo de Referido:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: data)).then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Codigo Referido Copiado!!")));
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        border: Border.all(color: Colors.black38, width: 1),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            Text(
                              data,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 225,
                            ),
                            Image.asset(
                              'assets/copied.png',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 10,
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: QrImage(
                  data: data,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
