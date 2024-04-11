// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuantitPerColorStruct extends FFFirebaseStruct {
  QuantitPerColorStruct({
    String? color,
    String? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _color = color,
        _quantity = quantity,
        super(firestoreUtilData);

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;
  bool hasColor() => _color != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  set quantity(String? val) => _quantity = val;
  bool hasQuantity() => _quantity != null;

  static QuantitPerColorStruct fromMap(Map<String, dynamic> data) =>
      QuantitPerColorStruct(
        color: data['color'] as String?,
        quantity: data['quantity'] as String?,
      );

  static QuantitPerColorStruct? maybeFromMap(dynamic data) => data is Map
      ? QuantitPerColorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuantitPerColorStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuantitPerColorStruct(
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuantitPerColorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuantitPerColorStruct &&
        color == other.color &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([color, quantity]);
}

QuantitPerColorStruct createQuantitPerColorStruct({
  String? color,
  String? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuantitPerColorStruct(
      color: color,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuantitPerColorStruct? updateQuantitPerColorStruct(
  QuantitPerColorStruct? quantitPerColor, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quantitPerColor
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuantitPerColorStructData(
  Map<String, dynamic> firestoreData,
  QuantitPerColorStruct? quantitPerColor,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quantitPerColor == null) {
    return;
  }
  if (quantitPerColor.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quantitPerColor.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quantitPerColorData =
      getQuantitPerColorFirestoreData(quantitPerColor, forFieldValue);
  final nestedData =
      quantitPerColorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quantitPerColor.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuantitPerColorFirestoreData(
  QuantitPerColorStruct? quantitPerColor, [
  bool forFieldValue = false,
]) {
  if (quantitPerColor == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quantitPerColor.toMap());

  // Add any Firestore field values
  quantitPerColor.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuantitPerColorListFirestoreData(
  List<QuantitPerColorStruct>? quantitPerColors,
) =>
    quantitPerColors
        ?.map((e) => getQuantitPerColorFirestoreData(e, true))
        .toList() ??
    [];
