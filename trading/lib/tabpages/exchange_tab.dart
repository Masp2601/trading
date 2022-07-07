import 'package:flutter/material.dart';

class ExchangeTabPage extends StatefulWidget {
  const ExchangeTabPage({Key? key}) : super(key: key);

  @override
  State<ExchangeTabPage> createState() => _ExchangeTabPageState();
}

class _ExchangeTabPageState extends State<ExchangeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Intercambio",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 86.0),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Comprar',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Vender',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
