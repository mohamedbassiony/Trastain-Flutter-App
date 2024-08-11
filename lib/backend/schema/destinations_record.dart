import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DestinationsRecord extends FirestoreRecord {
  DestinationsRecord._(
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

  // "favourite" field.
  List<DocumentReference>? _favourite;
  List<DocumentReference> get favourite => _favourite ?? const [];
  bool hasFavourite() => _favourite != null;

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
    _favourite = getDataList(snapshotData['favourite']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('destinations');

  static Stream<DestinationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DestinationsRecord.fromSnapshot(s));

  static Future<DestinationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DestinationsRecord.fromSnapshot(s));

  static DestinationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinationsRecordData({
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
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinationsRecordDocumentEquality
    implements Equality<DestinationsRecord> {
  const DestinationsRecordDocumentEquality();

  @override
  bool equals(DestinationsRecord? e1, DestinationsRecord? e2) {
    const listEquality = ListEquality();
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
        listEquality.equals(e1?.favourite, e2?.favourite);
  }

  @override
  int hash(DestinationsRecord? e) => const ListEquality().hash([
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
        e?.favourite
      ]);

  @override
  bool isValidKey(Object? o) => o is DestinationsRecord;
}
