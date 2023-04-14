import 'package:sogami_flutter/ui/common/models/sogami_object.dart';

import 'user.dart';

abstract class SogamiDocument extends SogamiObject {
  User lastModifiedBy;
  DateTime lastModifiedOn;
  User createdBy;
  DateTime createdOn;

  SogamiDocument(
      {required super.baseType,
      required super.id,
      required this.lastModifiedBy,
      required this.lastModifiedOn,
      required this.createdBy,
      required this.createdOn});
}
