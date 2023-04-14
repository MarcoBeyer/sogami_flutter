import 'package:sogami_flutter/ui/common/models/sogami_child_document.dart';

class SogamiBlock extends SogamiChildDocument {
  SogamiBlock(
      {required this.children,
      required this.type,
      required super.id,
      required super.parentId,
      required super.lastModifiedBy,
      required super.lastModifiedOn,
      required super.createdBy,
      required super.createdOn})
      : super(baseType: "block");
  String type;
  List<SogamiBlock> children;
}
