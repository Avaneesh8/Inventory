import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceRecord extends FirestoreRecord {
  InvoiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "Bill_date" field.
  DateTime? _billDate;
  DateTime? get billDate => _billDate;
  bool hasBillDate() => _billDate != null;

  // "product_list" field.
  List<String>? _productList;
  List<String> get productList => _productList ?? const [];
  bool hasProductList() => _productList != null;

  // "Quantity_list" field.
  List<int>? _quantityList;
  List<int> get quantityList => _quantityList ?? const [];
  bool hasQuantityList() => _quantityList != null;

  // "Total_Quantity" field.
  int? _totalQuantity;
  int get totalQuantity => _totalQuantity ?? 0;
  bool hasTotalQuantity() => _totalQuantity != null;

  // "Total_Price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  void _initializeFields() {
    _customerName = snapshotData['Customer_name'] as String?;
    _billDate = snapshotData['Bill_date'] as DateTime?;
    _productList = getDataList(snapshotData['product_list']);
    _quantityList = getDataList(snapshotData['Quantity_list']);
    _totalQuantity = castToType<int>(snapshotData['Total_Quantity']);
    _totalPrice = castToType<double>(snapshotData['Total_Price']);
    _product = snapshotData['product'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Invoice');

  static Stream<InvoiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceRecord.fromSnapshot(s));

  static Future<InvoiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceRecord.fromSnapshot(s));

  static InvoiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceRecordData({
  String? customerName,
  DateTime? billDate,
  int? totalQuantity,
  double? totalPrice,
  String? product,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Customer_name': customerName,
      'Bill_date': billDate,
      'Total_Quantity': totalQuantity,
      'Total_Price': totalPrice,
      'product': product,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceRecordDocumentEquality implements Equality<InvoiceRecord> {
  const InvoiceRecordDocumentEquality();

  @override
  bool equals(InvoiceRecord? e1, InvoiceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.customerName == e2?.customerName &&
        e1?.billDate == e2?.billDate &&
        listEquality.equals(e1?.productList, e2?.productList) &&
        listEquality.equals(e1?.quantityList, e2?.quantityList) &&
        e1?.totalQuantity == e2?.totalQuantity &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.product == e2?.product;
  }

  @override
  int hash(InvoiceRecord? e) => const ListEquality().hash([
        e?.customerName,
        e?.billDate,
        e?.productList,
        e?.quantityList,
        e?.totalQuantity,
        e?.totalPrice,
        e?.product
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoiceRecord;
}
