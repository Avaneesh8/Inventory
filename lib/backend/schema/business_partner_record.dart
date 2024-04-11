import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BusinessPartnerRecord extends FirestoreRecord {
  BusinessPartnerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _businessName = snapshotData['business_name'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Business_partner');

  static Stream<BusinessPartnerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessPartnerRecord.fromSnapshot(s));

  static Future<BusinessPartnerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessPartnerRecord.fromSnapshot(s));

  static BusinessPartnerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessPartnerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessPartnerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessPartnerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessPartnerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessPartnerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessPartnerRecordData({
  String? businessName,
  String? email,
  String? displayName,
  String? uid,
  String? phoneNumber,
  DateTime? createdTime,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'business_name': businessName,
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'phone_number': phoneNumber,
      'created_time': createdTime,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessPartnerRecordDocumentEquality
    implements Equality<BusinessPartnerRecord> {
  const BusinessPartnerRecordDocumentEquality();

  @override
  bool equals(BusinessPartnerRecord? e1, BusinessPartnerRecord? e2) {
    return e1?.businessName == e2?.businessName &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(BusinessPartnerRecord? e) => const ListEquality().hash([
        e?.businessName,
        e?.email,
        e?.displayName,
        e?.uid,
        e?.phoneNumber,
        e?.createdTime,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessPartnerRecord;
}
