import 'package:sogami_flutter/ui/common/models/db/sogami_db_document.dart';

abstract class SogamiDbChildDocument extends SogamiDbDocument {
  String parentId;

  SogamiDbChildDocument(
      {required this.parentId,
      required super.baseType,
      required super.id,
      required super.lastModifiedById,
      required super.lastModifiedOn,
      required super.createdById,
      required super.createdOn}): super();
}
