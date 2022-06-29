import 'package:flutter/material.dart';

import '../profile/payment.dart';

class TotalBalance extends StatefulWidget {
  const TotalBalance({Key? key}) : super(key: key);

  @override
  State<TotalBalance> createState() => _TotalBalanceState();
}

class _TotalBalanceState extends State<TotalBalance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance Total",
                style: TextStyle(
                  color: Colors.black.withOpacity(.55),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "\$ 00.00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PaymentProfile();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.add_card_outlined,
                color: Colors.white70,
              ))
        ],
      ),
    );
  }
}
