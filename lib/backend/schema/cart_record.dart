import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_group" field.
  String? _productGroup;
  String get productGroup => _productGroup ?? '';
  bool hasProductGroup() => _productGroup != null;

  // "product_mrp" field.
  double? _productMrp;
  double get productMrp => _productMrp ?? 0.0;
  bool hasProductMrp() => _productMrp != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productGroup = snapshotData['product_group'] as String?;
    _productMrp = castToType<double>(snapshotData['product_mrp']);
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cart')
          : FirebaseFirestore.instance.collectionGroup('cart');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cart').doc(id);

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? productName,
  String? productGroup,
  double? productMrp,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_group': productGroup,
      'product_mrp': productMrp,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productGroup == e2?.productGroup &&
        e1?.productMrp == e2?.productMrp &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.productName, e?.productGroup, e?.productMrp, e?.quantity]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
