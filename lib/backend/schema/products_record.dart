import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_brand" field.
  String? _productBrand;
  String get productBrand => _productBrand ?? '';
  bool hasProductBrand() => _productBrand != null;

  // "product_catagory" field.
  String? _productCatagory;
  String get productCatagory => _productCatagory ?? '';
  bool hasProductCatagory() => _productCatagory != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "group1" field.
  String? _group1;
  String get group1 => _group1 ?? '';
  bool hasGroup1() => _group1 != null;

  // "mrp1" field.
  double? _mrp1;
  double get mrp1 => _mrp1 ?? 0.0;
  bool hasMrp1() => _mrp1 != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "color1" field.
  String? _color1;
  String get color1 => _color1 ?? '';
  bool hasColor1() => _color1 != null;

  // "group2" field.
  String? _group2;
  String get group2 => _group2 ?? '';
  bool hasGroup2() => _group2 != null;

  // "mrp2" field.
  double? _mrp2;
  double get mrp2 => _mrp2 ?? 0.0;
  bool hasMrp2() => _mrp2 != null;

  // "cost2" field.
  double? _cost2;
  double get cost2 => _cost2 ?? 0.0;
  bool hasCost2() => _cost2 != null;

  // "color2" field.
  String? _color2;
  String get color2 => _color2 ?? '';
  bool hasColor2() => _color2 != null;

  // "quantity1" field.
  int? _quantity1;
  int get quantity1 => _quantity1 ?? 0;
  bool hasQuantity1() => _quantity1 != null;

  // "quantity2" field.
  int? _quantity2;
  int get quantity2 => _quantity2 ?? 0;
  bool hasQuantity2() => _quantity2 != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productBrand = snapshotData['product_brand'] as String?;
    _productCatagory = snapshotData['product_catagory'] as String?;
    _productImage = snapshotData['product_image'] as String?;
    _group1 = snapshotData['group1'] as String?;
    _mrp1 = castToType<double>(snapshotData['mrp1']);
    _cost = castToType<double>(snapshotData['cost']);
    _color1 = snapshotData['color1'] as String?;
    _group2 = snapshotData['group2'] as String?;
    _mrp2 = castToType<double>(snapshotData['mrp2']);
    _cost2 = castToType<double>(snapshotData['cost2']);
    _color2 = snapshotData['color2'] as String?;
    _quantity1 = castToType<int>(snapshotData['quantity1']);
    _quantity2 = castToType<int>(snapshotData['quantity2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  String? productBrand,
  String? productCatagory,
  String? productImage,
  String? group1,
  double? mrp1,
  double? cost,
  String? color1,
  String? group2,
  double? mrp2,
  double? cost2,
  String? color2,
  int? quantity1,
  int? quantity2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_brand': productBrand,
      'product_catagory': productCatagory,
      'product_image': productImage,
      'group1': group1,
      'mrp1': mrp1,
      'cost': cost,
      'color1': color1,
      'group2': group2,
      'mrp2': mrp2,
      'cost2': cost2,
      'color2': color2,
      'quantity1': quantity1,
      'quantity2': quantity2,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productBrand == e2?.productBrand &&
        e1?.productCatagory == e2?.productCatagory &&
        e1?.productImage == e2?.productImage &&
        e1?.group1 == e2?.group1 &&
        e1?.mrp1 == e2?.mrp1 &&
        e1?.cost == e2?.cost &&
        e1?.color1 == e2?.color1 &&
        e1?.group2 == e2?.group2 &&
        e1?.mrp2 == e2?.mrp2 &&
        e1?.cost2 == e2?.cost2 &&
        e1?.color2 == e2?.color2 &&
        e1?.quantity1 == e2?.quantity1 &&
        e1?.quantity2 == e2?.quantity2;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productBrand,
        e?.productCatagory,
        e?.productImage,
        e?.group1,
        e?.mrp1,
        e?.cost,
        e?.color1,
        e?.group2,
        e?.mrp2,
        e?.cost2,
        e?.color2,
        e?.quantity1,
        e?.quantity2
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
