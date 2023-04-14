import 'package:isar/isar.dart';
import 'package:sogami_flutter/ui/common/models/sogami_child_document.dart';
import 'package:uuid/uuid.dart';

import 'sogami_block.dart';

@collection
class SogamiPage extends SogamiChildDocument {
  SogamiPage(
      {required this.properties,
      required super.id,
      required super.parentId,
      required super.lastModifiedBy,
      required super.lastModifiedOn,
      required super.createdBy,
      required super.createdOn})
      : super(baseType: "page");

  SogamiPage.newPage(
      {required this.properties,
      required super.parentId,
      required super.createdBy})
      : super(
            baseType: "page",
            id: const Uuid().v4(),
            lastModifiedBy: createdBy,
            createdOn: DateTime.now(),
            lastModifiedOn: DateTime.now());
  List<SogamiBlock> blocks = [];
  Map<String, dynamic> properties;
}
