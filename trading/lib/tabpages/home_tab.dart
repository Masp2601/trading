import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:trading/mainscreen/main_screen.dart';
import 'package:trading/widgets/button_widget.dart';
import 'package:trading/widgets/design/coin_design_card.dart';
import 'package:trading/widgets/total_balance.dart';
import 'package:http/http.dart' as http;

import '../models/coins.dart';
import '../profile/payment.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  //buscar monedas
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Fallo al cargar los datos');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCoin();
    Timer.periodic(const Duration(hours: 10), ((timer) => fetchCoin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: TotalBalance(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                        text: "Criptos",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MainScreen();
                              },
                            ),
                          );
                        }),
                    ButtonWidget(
                        text: "Deposito",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PaymentProfile();
                              },
                            ),
                          );
                        }),
                    ButtonWidget(
                        text: "Retirar",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PaymentProfile();
                              },
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: coinList.length,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: CoindDesignCard(
                        name: coinList[index].name,
                        symbol: coinList[index].symbol,
                        imageUrl: coinList[index].imageUrl,
                        price: coinList[index].price.toDouble(),
                        change: coinList[index].change.toDouble(),
                        changePorcentage:
                            coinList[index].changePorcentage.toDouble(),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
