import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "product_mrp" field.
  double? _productMrp;
  double get productMrp => _productMrp ?? 0.0;
  bool hasProductMrp() => _productMrp != null;

  // "product_color" field.
  String? _productColor;
  String get productColor => _productColor ?? '';
  bool hasProductColor() => _productColor != null;

  // "product_group" field.
  String? _productGroup;
  String get productGroup => _productGroup ?? '';
  bool hasProductGroup() => _productGroup != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productImage = snapshotData['product_image'] as String?;
    _productMrp = castToType<double>(snapshotData['product_mrp']);
    _productColor = snapshotData['product_color'] as String?;
    _productGroup = snapshotData['product_group'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? productName,
  String? productImage,
  double? productMrp,
  String? productColor,
  String? productGroup,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_image': productImage,
      'product_mrp': productMrp,
      'product_color': productColor,
      'product_group': productGroup,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productImage == e2?.productImage &&
        e1?.productMrp == e2?.productMrp &&
        e1?.productColor == e2?.productColor &&
        e1?.productGroup == e2?.productGroup;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productImage,
        e?.productMrp,
        e?.productColor,
        e?.productGroup
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
