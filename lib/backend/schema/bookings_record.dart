import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "num_explorers" field.
  int? _numExplorers;
  int get numExplorers => _numExplorers ?? 0;
  bool hasNumExplorers() => _numExplorers != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "gallary_image1" field.
  String? _gallaryImage1;
  String get gallaryImage1 => _gallaryImage1 ?? '';
  bool hasGallaryImage1() => _gallaryImage1 != null;

  // "gallary_image2" field.
  String? _gallaryImage2;
  String get gallaryImage2 => _gallaryImage2 ?? '';
  bool hasGallaryImage2() => _gallaryImage2 != null;

  // "gallary_image3" field.
  String? _gallaryImage3;
  String get gallaryImage3 => _gallaryImage3 ?? '';
  bool hasGallaryImage3() => _gallaryImage3 != null;

  // "map_location" field.
  LatLng? _mapLocation;
  LatLng? get mapLocation => _mapLocation;
  bool hasMapLocation() => _mapLocation != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "popular" field.
  bool? _popular;
  bool get popular => _popular ?? false;
  bool hasPopular() => _popular != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  bool hasSuccess() => _success != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userphone" field.
  String? _userphone;
  String get userphone => _userphone ?? '';
  bool hasUserphone() => _userphone != null;

  // "selected_members" field.
  String? _selectedMembers;
  String get selectedMembers => _selectedMembers ?? '';
  bool hasSelectedMembers() => _selectedMembers != null;

  // "idtype" field.
  String? _idtype;
  String get idtype => _idtype ?? '';
  bool hasIdtype() => _idtype != null;

  // "idnum" field.
  String? _idnum;
  String get idnum => _idnum ?? '';
  bool hasIdnum() => _idnum != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _numExplorers = castToType<int>(snapshotData['num_explorers']);
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _gallaryImage1 = snapshotData['gallary_image1'] as String?;
    _gallaryImage2 = snapshotData['gallary_image2'] as String?;
    _gallaryImage3 = snapshotData['gallary_image3'] as String?;
    _mapLocation = snapshotData['map_location'] as LatLng?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _popular = snapshotData['popular'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _success = snapshotData['success'] as bool?;
    _username = snapshotData['username'] as String?;
    _userphone = snapshotData['userphone'] as String?;
    _selectedMembers = snapshotData['selected_members'] as String?;
    _idtype = snapshotData['idtype'] as String?;
    _idnum = snapshotData['idnum'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? name,
  String? image,
  String? location,
  double? rating,
  int? numExplorers,
  String? description,
  double? price,
  String? gallaryImage1,
  String? gallaryImage2,
  String? gallaryImage3,
  LatLng? mapLocation,
  DocumentReference? creator,
  String? category,
  bool? popular,
  DocumentReference? user,
  bool? success,
  String? username,
  String? userphone,
  String? selectedMembers,
  String? idtype,
  String? idnum,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'location': location,
      'rating': rating,
      'num_explorers': numExplorers,
      'description': description,
      'price': price,
      'gallary_image1': gallaryImage1,
      'gallary_image2': gallaryImage2,
      'gallary_image3': gallaryImage3,
      'map_location': mapLocation,
      'creator': creator,
      'category': category,
      'popular': popular,
      'user': user,
      'success': success,
      'username': username,
      'userphone': userphone,
      'selected_members': selectedMembers,
      'idtype': idtype,
      'idnum': idnum,
      'start_date': startDate,
      'end_date': endDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.rating == e2?.rating &&
        e1?.numExplorers == e2?.numExplorers &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.gallaryImage1 == e2?.gallaryImage1 &&
        e1?.gallaryImage2 == e2?.gallaryImage2 &&
        e1?.gallaryImage3 == e2?.gallaryImage3 &&
        e1?.mapLocation == e2?.mapLocation &&
        e1?.creator == e2?.creator &&
        e1?.category == e2?.category &&
        e1?.popular == e2?.popular &&
        e1?.user == e2?.user &&
        e1?.success == e2?.success &&
        e1?.username == e2?.username &&
        e1?.userphone == e2?.userphone &&
        e1?.selectedMembers == e2?.selectedMembers &&
        e1?.idtype == e2?.idtype &&
        e1?.idnum == e2?.idnum &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.location,
        e?.rating,
        e?.numExplorers,
        e?.description,
        e?.price,
        e?.gallaryImage1,
        e?.gallaryImage2,
        e?.gallaryImage3,
        e?.mapLocation,
        e?.creator,
        e?.category,
        e?.popular,
        e?.user,
        e?.success,
        e?.username,
        e?.userphone,
        e?.selectedMembers,
        e?.idtype,
        e?.idnum,
        e?.startDate,
        e?.endDate
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
