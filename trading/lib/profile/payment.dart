import 'package:flutter/material.dart';

class PaymentProfile extends StatefulWidget {
  const PaymentProfile({Key? key}) : super(key: key);

  @override
  State<PaymentProfile> createState() => _PaymentProfileState();
}

class _PaymentProfileState extends State<PaymentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Metodos de Pago",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 15.0,
          ),
          //boton pago tarjeta
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
                        'assets/card.png',
                        height: 40,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                        width: 15,
                      ),
                      const Text(
                        'Tarjeta de Debito',
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
          //boton banco
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
                        'assets/bank.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                        width: 15,
                      ),
                      const Text(
                        'Transferencia Bancaria',
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
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [Text("Otros metodos de pago")],
          ),
          const SizedBox(
            height: 10.0,
          ),
          //boton pago paypal
          Column(
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
                            'assets/paypal.png',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 10,
                            width: 15,
                          ),
                          const Text(
                            'PayPal',
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
          const SizedBox(
            height: 300.0,
          ),
          //boton para continuar
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
                    'Continuar',
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
        ]),
      ),
    );
  }
}
