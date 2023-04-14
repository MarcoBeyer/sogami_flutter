import 'package:sogami_flutter/ui/common/models/sogami_document.dart';

abstract class SogamiChildDocument extends SogamiDocument {
  String parentId;

  SogamiChildDocument(
      {required this.parentId,
      required super.baseType,
      required super.id,
      required super.lastModifiedBy,
      required super.lastModifiedOn,
      required super.createdBy,
      required super.createdOn})
      : super();
}
