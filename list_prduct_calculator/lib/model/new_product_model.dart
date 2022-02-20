import 'package:mobx/mobx.dart';
part 'new_product_model.g.dart';

class NewProductModel = _NewProductModelBase with _$NewProductModel;

abstract class _NewProductModelBase with Store {
  _NewProductModelBase({required this.productName, required this.productPrice});

  String productName;
  double productPrice;
}
