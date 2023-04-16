class SogamiLink {
  SogamiLink({
    required this.type,
    required this.targetId,
  });
  LinkType type;
  String targetId;
}

enum LinkType {
  from,
  to,
}

