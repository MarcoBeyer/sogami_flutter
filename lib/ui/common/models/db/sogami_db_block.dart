import 'package:isar/isar.dart';
import 'package:sogami_flutter/ui/common/models/db/sogami_db_child_document.dart';

@collection
class SogamiDbBlock extends SogamiDbChildDocument {
  SogamiDbBlock(
      {required this.childrenIds,
      required this.type,
      required super.id,
      required super.parentId,
      required super.lastModifiedById,
      required super.lastModifiedOn,
      required super.createdById,
      required super.createdOn})
      : super(baseType: "block");
  String type;
  List<String> childrenIds;
}
