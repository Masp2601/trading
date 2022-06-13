import 'package:iconsax/iconsax.dart';
import 'package:trading/tabpages/earning_tab.dart';
import 'package:trading/tabpages/exchange_tab.dart';
import 'package:trading/tabpages/home_tab.dart';
import 'package:trading/tabpages/profile_tab.dart';
import 'package:trading/tabpages/reating_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;
  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeTabPage(),
          EarningsTabPage(),
          ExchangeTabPage(),
          ReatingTabPage(),
          ProfileTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.graph),
            label: "Portafolio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.arrow_2),
            backgroundColor: Colors.orange,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.wallet),
            label: "Ordenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 16),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}
