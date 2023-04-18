import 'package:flutter/material.dart';
import 'package:sogami_flutter/ui/common/action_card.dart';
import 'package:sogami_flutter/ui/common/modals/create_appointment_modal.dart';
import 'package:sogami_flutter/ui/common/modals/create_relationship_note_modal.dart';
import 'package:sogami_flutter/ui/common/models/sogami_page.dart';

import '../common/data/example_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  final formKey = GlobalKey<FormState>();

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
                  builder: (context) => CreateAppointmentForm(
                      onConfirm: (SogamiPage page) =>
                          {setState(() => pages.add(page))}));
            },
          ),
          ActionCard(
            title: 'Notiz zu Beziehung erfassen',
            subtitle: 'Subtitle 2',
            trailing: '2',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => CreateRelationshipNoteForm(
                      onConfirm: (SogamiPage page) =>
                      {setState(() => pages.add(page))}));
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
              itemCount: pages
                  .where((element) => element.parentId == 'database-1')
                  .length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pages
                          .where((element) => element.parentId == 'database-1')
                          .toList()[index]
                          .properties['person'] ??
                      'No person'),
                  subtitle: Text(pages
                          .where((element) => element.parentId == 'database-1')
                          .toList()[index]
                          .properties['notes'] ??
                      'No notes'),
                );
              }),
        ],
      ),
    );
  }
}
