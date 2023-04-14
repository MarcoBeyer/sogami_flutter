import 'package:sogami_flutter/ui/common/models/sogami_object.dart';

class User extends SogamiObject {
  User({required this.type, required this.name, required super.id})
      : super(baseType: "user");
  String type;
  String name;
}
