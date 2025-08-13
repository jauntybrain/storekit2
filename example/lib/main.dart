import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// unused imports removed
import 'package:storekit2_example/home_page.dart';
import 'package:storekit2_example/store.dart';
import 'package:storekit2_example/store_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Store(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StoreKit2 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/store': (context) => const StoreView(),
      },
    );
  }
}
