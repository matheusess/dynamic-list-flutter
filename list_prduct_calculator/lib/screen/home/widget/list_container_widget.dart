import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_prduct_calculator/store/product_list_store.dart';
import 'package:provider/provider.dart';

class ListContainerWidget extends StatefulWidget {
  const ListContainerWidget({Key? key}) : super(key: key);

  @override
  _ListContainerWidgetState createState() => _ListContainerWidgetState();
}

class _ListContainerWidgetState extends State<ListContainerWidget> {
  ProductListStore? productListStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    productListStore = Provider.of<ProductListStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: productListStore!.productList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productListStore!.productList[index].productName,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              letterSpacing: 1,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          productListStore!.productList[index].productPrice
                              .toString(),
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              letterSpacing: 1,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            productListStore!.removeProduct(index);
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                          ),
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
