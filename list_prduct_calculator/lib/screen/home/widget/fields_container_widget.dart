import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_prduct_calculator/model/new_product_model.dart';
import 'package:list_prduct_calculator/store/product_list_store.dart';
import 'package:provider/provider.dart';

import '../../../ui/search_button.dart';

class FieldsContainerWidget extends StatefulWidget {
  const FieldsContainerWidget({Key? key}) : super(key: key);

  @override
  _FieldsContainerWidgetState createState() => _FieldsContainerWidgetState();
}

class _FieldsContainerWidgetState extends State<FieldsContainerWidget> {
  late NewProductModel newProductModel;
  ProductListStore? productListStore;

  TextEditingController? _nameController;
  TextEditingController? _priceController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    productListStore = Provider.of<ProductListStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _nameController,
          keyboardType: TextInputType.text,
          style: GoogleFonts.barlow(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 192, 192, 192), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Color(0xFF5AEC66), width: 1),
            ),
            hintText: 'Nome do produto',
            hintStyle: GoogleFonts.barlow(
              textStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        TextFormField(
          controller: _priceController,
          keyboardType: const TextInputType.numberWithOptions(
            decimal: true,
          ),
          style: GoogleFonts.barlow(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 143, 143, 143), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Color(0xFF5AEC66), width: 1),
            ),
            hintText: 'RS 296,50',
            hintStyle: GoogleFonts.barlow(
              textStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(height: 18),
        Observer(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _nameController!.clear();
                    _priceController!.clear();
                  });
                },
                child: Text(
                  'Limpar',
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      letterSpacing: 1,
                      color: Color(0xFF5AEC66),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SearchGradientButton(
                child: Text(
                  'Adicionar',
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 45, 209, 86),
                    Color.fromARGB(255, 38, 177, 49),
                  ],
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  productListStore!.addProduct(
                    NewProductModel(
                      productName: _nameController!.text.toString(),
                      productPrice: double.parse(_priceController!.text),
                    ),
                  );
                  setState(() {
                    _nameController!.clear();
                    _priceController!.clear();
                  });
                },
              ),
            ],
          );
        }),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _priceController!.dispose();
    _nameController!.dispose();
  }
}
