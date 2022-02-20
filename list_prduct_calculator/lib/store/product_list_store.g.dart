// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductListStore on _ProductListStoreBase, Store {
  final _$priceTotalizerAtom =
      Atom(name: '_ProductListStoreBase.priceTotalizer');

  @override
  double get priceTotalizer {
    _$priceTotalizerAtom.reportRead();
    return super.priceTotalizer;
  }

  @override
  set priceTotalizer(double value) {
    _$priceTotalizerAtom.reportWrite(value, super.priceTotalizer, () {
      super.priceTotalizer = value;
    });
  }

  final _$productListAtom = Atom(name: '_ProductListStoreBase.productList');

  @override
  ObservableList<NewProductModel> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<NewProductModel> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  final _$_ProductListStoreBaseActionController =
      ActionController(name: '_ProductListStoreBase');

  @override
  void addProduct(NewProductModel model) {
    final _$actionInfo = _$_ProductListStoreBaseActionController.startAction(
        name: '_ProductListStoreBase.addProduct');
    try {
      return super.addProduct(model);
    } finally {
      _$_ProductListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct(int index) {
    final _$actionInfo = _$_ProductListStoreBaseActionController.startAction(
        name: '_ProductListStoreBase.removeProduct');
    try {
      return super.removeProduct(index);
    } finally {
      _$_ProductListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updatequoteAmout() {
    final _$actionInfo = _$_ProductListStoreBaseActionController.startAction(
        name: '_ProductListStoreBase._updatequoteAmout');
    try {
      return super._updatequoteAmout();
    } finally {
      _$_ProductListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
priceTotalizer: ${priceTotalizer},
productList: ${productList}
    ''';
  }
}
