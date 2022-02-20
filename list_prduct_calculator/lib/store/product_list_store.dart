import 'package:mobx/mobx.dart';

import '../model/new_product_model.dart';
part 'product_list_store.g.dart';

class ProductListStore = _ProductListStoreBase with _$ProductListStore;

abstract class _ProductListStoreBase with Store {
  @observable
  double priceTotalizer = 0.0;

  @observable
  ObservableList<NewProductModel> productList =
      ObservableList<NewProductModel>();

  @action
  void addProduct(NewProductModel model) {
    productList.add(model);
    _updatequoteAmout();
  }

  @action
  void removeProduct(int index) {
    productList.removeAt(index);
    _updatequoteAmout();
  }

  @action
  void _updatequoteAmout() {
    priceTotalizer = 0.0;
    for (var i = 0; i < productList.length; i++) {
      priceTotalizer += productList[i].productPrice;
    }
  }
}
