import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_prduct_calculator/store/product_list_store.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class PriceTotalizerWidget extends StatefulWidget {
  const PriceTotalizerWidget({Key? key}) : super(key: key);

  @override
  _PriceTotalizerWidgetState createState() => _PriceTotalizerWidgetState();
}

class _PriceTotalizerWidgetState extends State<PriceTotalizerWidget> {
  NumberFormat formatCurrency = NumberFormat.simpleCurrency();
  ProductListStore? productListStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    productListStore = Provider.of<ProductListStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Row(
          children: [
            Text(
              'Total: ',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  letterSpacing: 1,
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              formatCurrency.format(productListStore!.priceTotalizer),
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  letterSpacing: 1,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
