import 'package:sogami_flutter/ui/common/models/sogami_block.dart';
import 'package:sogami_flutter/ui/common/models/user.dart';

import '../models/sogami_database.dart';
import '../models/sogami_page.dart';

List<User> users = [
  User(id: 'user-1', name: 'Max Mustermann', type: 'user'),
  User(type: 'user', name: 'Marco Beyer', id: 'user-2')
];

List<SogamiDatabase> databases = [
  SogamiDatabase(
      availableProperties: [],
      title: 'CRM',
      description: 'Kontakte',
      id: 'database-1',
      lastModifiedBy: users[1],
      lastModifiedOn: DateTime.now(),
      createdBy: users[0],
      createdOn: DateTime.now()),
  SogamiDatabase(
    availableProperties: [],
    title: 'Beziehungen',
    description: 'Beziehungen',
    id: 'database-2',
    lastModifiedBy: users[1],
    lastModifiedOn: DateTime.now(),
    createdBy: users[0],
    createdOn: DateTime.now(),
  )
];

List<SogamiPage> pages = [
  SogamiPage(
      properties: {},
      title: 'Treffen',
      id: 'page-1',
      parentId: 'database-0',
      lastModifiedBy: users[0],
      lastModifiedOn: DateTime.now(),
      createdBy: users[0],
      createdOn: DateTime.now())
];

List<SogamiBlock> blocks = [ SogamiBlock(
    children: [SogamiBlock(
        children: [],
        type: 'text',
        id: 'block-1',
        parentId: 'page-1',
        lastModifiedBy: users[0],
        lastModifiedOn: DateTime.now(),
        createdBy: users[0],
        createdOn: DateTime.now())],
    type: 'text',
    id: 'block-1',
    parentId: 'page-1',
    lastModifiedBy: users[0],
    lastModifiedOn: DateTime.now(),
    createdBy: users[0],
    createdOn: DateTime.now())
];
