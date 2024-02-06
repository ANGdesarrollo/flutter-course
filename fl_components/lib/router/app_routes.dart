
import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
  // TODO: Borrar home
  MenuOption(route: 'home', icon: Icons.home_outlined, name: 'Home Screen', screen: const HomeScreen()),
  MenuOption(route: 'listview1', icon: Icons.list, name: 'Listview 1 Screen', screen: const Listview1Screen()),
  MenuOption(route: 'listview2', icon: Icons.list, name: 'Listview 2 Screen', screen: const Listview2Screen()),
  MenuOption(route: 'cardScreen', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen()),
  MenuOption(route: 'alertScreen', icon: Icons.warning, name: 'Alert Screen', screen: const AlertScreen()),
];

static Map<String, Widget Function(BuildContext)> getAppRoutes() {
  Map<String, Widget Function(BuildContext)> appRoutes = {};
  for (final option in menuOptions) {
    appRoutes.addAll({
      option.route : (BuildContext context) => option.screen
    });
  }
  
  return appRoutes;
}

static Map<String, Widget Function(BuildContext)> routes = {
  'home': (context) => const HomeScreen(),
  'listview1': (context) => const Listview1Screen(),
  'listview2': (context) => const Listview2Screen(),
  'cardScreen': (context) => const CardScreen(),
  'alertScreen': (context) => const AlertScreen(),
};


  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}