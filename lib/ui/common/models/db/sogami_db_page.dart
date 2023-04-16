import 'package:isar/isar.dart';
import 'package:sogami_flutter/ui/common/models/db/sogami_db_child_document.dart';
import 'package:sogami_flutter/ui/common/models/db/sogami_db_link.dart';

part 'sogami_db_page.g.dart';

@collection
class SogamiDbPage extends SogamiDbChildDocument {
  SogamiDbPage(
      {required this.title,
      required this.childrenIds,
      required this.type,
      required super.id,
      required super.parentId,
      required super.lastModifiedById,
      required super.lastModifiedOn,
      required super.createdById,
      required super.createdOn})
      : super(baseType: "page");
  String title;
  String type;
  List<SogamiDbLink> links = [];
  List<String> childrenIds;
}
