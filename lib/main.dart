import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'screens/coffee_list_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('th');
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Collection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffe85d04)),
        scaffoldBackgroundColor: const Color(0xfff7f5f0),
        useMaterial3: true,
      ),
      home: const CoffeeListScreen(),
    );
  }
}
