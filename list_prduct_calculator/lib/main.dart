import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:list_prduct_calculator/screen/home/home_screen.dart';
import 'package:list_prduct_calculator/store/product_list_store.dart';
import 'package:provider/provider.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness:
          Brightness.dark, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ProductListStore>(create: (_) => ProductListStore()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
