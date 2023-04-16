import 'package:isar/isar.dart';
import 'package:sogami_flutter/ui/common/models/db/sogami_db_object.dart';

part 'sogami_db_user.g.dart';

@collection
class SogamiDbUser extends SogamiDbObject {
  SogamiDbUser({
    required this.type,
    required this.name,
    required super.id,
  }) : super(baseType: "user");
  String type;
  String name;
}
