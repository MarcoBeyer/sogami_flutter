import 'package:isar/isar.dart';

part 'sogami_db_link.g.dart';

@embedded
class SogamiDbLink {
  SogamiDbLink({
    this.type = "to",
    this.targetId = "",
  });

  String type;
  String targetId;
}
