import 'package:flutter/material.dart';
import 'package:sogami_flutter/ui/common/action_card.dart';
import 'package:sogami_flutter/ui/common/forms/create_appointment.dart';
import 'package:sogami_flutter/ui/common/modals/app_modals.dart';
import 'package:sogami_flutter/ui/common/models/sogami_block.dart';
import 'package:sogami_flutter/ui/common/models/sogami_database.dart';
import 'package:sogami_flutter/ui/common/models/sogami_page.dart';
import 'package:sogami_flutter/ui/common/models/user.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SogamiDatabase database;
  List<SogamiPage> pages = [];
  late SogamiBlock block;

  _MyHomePageState() {
    User user = User(id: 'user-1', name: 'Max Mustermann', type: 'user');
    database = SogamiDatabase(
        availableProperties: [],
        title: 'CRM',
        description: 'Kontakte',
        id: 'database-1',
        lastModifiedBy: user,
        lastModifiedOn: DateTime.now(),
        createdBy: user,
        createdOn: DateTime.now());

    pages.add(SogamiPage(
        properties: {},
        title: 'Treffen',
        id: 'page-1',
        parentId: 'database-1',
        lastModifiedBy: user,
        lastModifiedOn: DateTime.now(),
        createdBy: user,
        createdOn: DateTime.now()));

    block = SogamiBlock(
        children: [],
        type: 'text',
        id: 'block-1',
        parentId: 'page-1',
        lastModifiedBy: user,
        lastModifiedOn: DateTime.now(),
        createdBy: user,
        createdOn: DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // fit four action cards on the screen at once
          GridView.extent(
        childAspectRatio: 1.5,
        maxCrossAxisExtent: 400,
        children: [
          ActionCard(
            title: 'Treffen erfassen',
            subtitle: 'Subtitle 1',
            trailing: '1',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => FormModal(
                      title: 'Treffen erfassen',
                      onConfirm: () => {
                            //collect fields and store in database
                            Navigator.of(context).pop()
                          },
                      onCancel: () => Navigator.of(context).pop(),
                      child: CreateAppointmentForm(
                          onCreate: (appointment) => {
                                setState(() {
                                  pages.add(appointment);
                                })
                              })));
            },
          ),
          ActionCard(
            title: 'Action 2',
            subtitle: 'Subtitle 2',
            trailing: '2',
            onTap: () {
              // do something
            },
          ),
          ActionCard(
            title: 'Action 3',
            subtitle: 'Subtitle 3',
            trailing: '3',
            onTap: () {
              // do something
            },
          ),
          ActionCard(
            title: 'Action 4',
            subtitle: 'Subtitle 4',
            trailing: '4',
            onTap: () {
              // do something
            },
          ),
          ListView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pages[index].properties['person'] ?? 'No person'),
                  subtitle: Text(pages[index].properties['notes'] ?? 'No notes'),
                );
              }),
        ],
      ),
    );
  }
}
