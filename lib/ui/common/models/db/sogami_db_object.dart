import 'package:isar/isar.dart';
import 'package:sogami_flutter/ui/common/models/db/db_utils.dart';

abstract class SogamiDbObject {
  final Id isarId;
  final String baseType;
  final String id;

  SogamiDbObject({required this.baseType, required this.id}): isarId = fastHash(id);
}
