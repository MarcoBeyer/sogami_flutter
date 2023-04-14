import 'package:sogami_flutter/ui/common/models/sogami_document.dart';

import 'property_schema.dart';

class SogamiDatabase extends SogamiDocument {
  SogamiDatabase(
      {required this.availableProperties,
      required this.title,
      required this.description,
      required super.id,
      required super.lastModifiedBy,
      required super.lastModifiedOn,
      required super.createdBy,
      required super.createdOn})
      : super(baseType: "database");
  String title;
  String description;
  List<SogamiPropertySchema> availableProperties;
}
