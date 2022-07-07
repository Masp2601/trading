import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrdenesPage extends StatefulWidget {
  const OrdenesPage({Key? key}) : super(key: key);

  @override
  State<OrdenesPage> createState() => _OrdenesPageState();
}

class _OrdenesPageState extends State<OrdenesPage> {
  final controllerTo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Nueva Orden",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const SizedBox(
                height: 35,
              ),
              buildTextField(title: 'De', controller: controllerTo),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Comprobante de Pago:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 95,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.attach_circle,
                      size: 25,
                    ),
                  ),
                  const Text("Adjuntar Archivo")
                ],
              ),
              const SizedBox(
                height: 85,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: const Size.fromHeight(50),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("Enviar"),
                  onPressed: () {}),
            ])));
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          )
        ],
      );
}
