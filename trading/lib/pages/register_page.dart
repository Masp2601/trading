import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 0.04,
              ),
              Text("Inscribirse",
                  style: TextStyle(fontSize: 30.0, color: Colors.black)),
              Text(
                "solo toma un minuto crear su cuenta",
                style: TextStyle(fontSize: 8.0, color: Colors.black87),
              ),
              SizedBox(
                height: 0.05,
              ),
              TextFormField()
            ],
          ),
        ),
      ),
    );
  }
}
