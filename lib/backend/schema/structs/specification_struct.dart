// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecificationStruct extends FFFirebaseStruct {
  SpecificationStruct({
    String? size,
    double? mrp,
    double? cost,
    List<QuantitPerColorStruct>? quantityPerColor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _size = size,
        _mrp = mrp,
        _cost = cost,
        _quantityPerColor = quantityPerColor,
        super(firestoreUtilData);

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;
  bool hasSize() => _size != null;

  // "mrp" field.
  double? _mrp;
  double get mrp => _mrp ?? 0.0;
  set mrp(double? val) => _mrp = val;
  void incrementMrp(double amount) => _mrp = mrp + amount;
  bool hasMrp() => _mrp != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  set cost(double? val) => _cost = val;
  void incrementCost(double amount) => _cost = cost + amount;
  bool hasCost() => _cost != null;

  // "QuantityPerColor" field.
  List<QuantitPerColorStruct>? _quantityPerColor;
  List<QuantitPerColorStruct> get quantityPerColor =>
      _quantityPerColor ?? const [];
  set quantityPerColor(List<QuantitPerColorStruct>? val) =>
      _quantityPerColor = val;
  void updateQuantityPerColor(Function(List<QuantitPerColorStruct>) updateFn) =>
      updateFn(_quantityPerColor ??= []);
  bool hasQuantityPerColor() => _quantityPerColor != null;

  static SpecificationStruct fromMap(Map<String, dynamic> data) =>
      SpecificationStruct(
        size: data['size'] as String?,
        mrp: castToType<double>(data['mrp']),
        cost: castToType<double>(data['cost']),
        quantityPerColor: getStructList(
          data['QuantityPerColor'],
          QuantitPerColorStruct.fromMap,
        ),
      );

  static SpecificationStruct? maybeFromMap(dynamic data) => data is Map
      ? SpecificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'size': _size,
        'mrp': _mrp,
        'cost': _cost,
        'QuantityPerColor': _quantityPerColor?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'mrp': serializeParam(
          _mrp,
          ParamType.double,
        ),
        'cost': serializeParam(
          _cost,
          ParamType.double,
        ),
        'QuantityPerColor': serializeParam(
          _quantityPerColor,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static SpecificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpecificationStruct(
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        mrp: deserializeParam(
          data['mrp'],
          ParamType.double,
          false,
        ),
        cost: deserializeParam(
          data['cost'],
          ParamType.double,
          false,
        ),
        quantityPerColor: deserializeStructParam<QuantitPerColorStruct>(
          data['QuantityPerColor'],
          ParamType.DataStruct,
          true,
          structBuilder: QuantitPerColorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SpecificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SpecificationStruct &&
        size == other.size &&
        mrp == other.mrp &&
        cost == other.cost &&
        listEquality.equals(quantityPerColor, other.quantityPerColor);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([size, mrp, cost, quantityPerColor]);
}

SpecificationStruct createSpecificationStruct({
  String? size,
  double? mrp,
  double? cost,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SpecificationStruct(
      size: size,
      mrp: mrp,
      cost: cost,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SpecificationStruct? updateSpecificationStruct(
  SpecificationStruct? specification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    specification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSpecificationStructData(
  Map<String, dynamic> firestoreData,
  SpecificationStruct? specification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (specification == null) {
    return;
  }
  if (specification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && specification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final specificationData =
      getSpecificationFirestoreData(specification, forFieldValue);
  final nestedData =
      specificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = specification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSpecificationFirestoreData(
  SpecificationStruct? specification, [
  bool forFieldValue = false,
]) {
  if (specification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(specification.toMap());

  // Add any Firestore field values
  specification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSpecificationListFirestoreData(
  List<SpecificationStruct>? specifications,
) =>
    specifications
        ?.map((e) => getSpecificationFirestoreData(e, true))
        .toList() ??
    [];
