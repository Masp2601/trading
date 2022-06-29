import 'package:flutter/material.dart';

class LanguageProfile extends StatelessWidget {
  const LanguageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Lenguajes",
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
            Material(
              color: Colors.transparent,
              elevation: 0,
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black38, width: 4.1),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/usd.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                          width: 15,
                        ),
                        const Text(
                          'Ingles',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Material(
              color: Colors.transparent,
              elevation: 0,
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black38, width: 4.1),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/esp.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                          width: 15,
                        ),
                        const Text(
                          'Español',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
