import 'package:sogami_flutter/ui/common/models/db/sogami_db_object.dart';

abstract class SogamiDbDocument extends SogamiDbObject {
  String lastModifiedById;
  DateTime lastModifiedOn;
  String createdById;
  DateTime createdOn;

  SogamiDbDocument(
      {required super.baseType,
      required super.id,
      required this.lastModifiedById,
      required this.lastModifiedOn,
      required this.createdById,
      required this.createdOn});
}
