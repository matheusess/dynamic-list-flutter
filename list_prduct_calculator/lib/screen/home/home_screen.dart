import 'package:flutter/material.dart';
import 'package:list_prduct_calculator/screen/home/widget/fields_container_widget.dart';
import 'package:list_prduct_calculator/screen/home/widget/list_container_widget.dart';
import 'package:list_prduct_calculator/screen/home/widget/price_totalizer_widget.dart';

import 'widget/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 64, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeHeaderWidget(),
              SizedBox(height: 24),
              FieldsContainerWidget(),
              SizedBox(height: 16),
              PriceTotalizerWidget(),
              ListContainerWidget()
            ],
          ),
        ),
      ),
    );
  }
}
