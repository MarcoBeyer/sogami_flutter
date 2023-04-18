import 'package:flutter/material.dart';
import 'package:sogami_flutter/ui/common/modals/app_modals.dart';

import '../data/example_data.dart';
import '../models/sogami_page.dart';

class CreateRelationshipNoteForm extends StatefulWidget {
  const CreateRelationshipNoteForm({super.key, this.onConfirm, this.onCancel});

  final Function(SogamiPage)? onConfirm;
  final VoidCallback? onCancel;

  @override
  State<CreateRelationshipNoteForm> createState() => _CreateRelationshipNoteFormState();
}

class _CreateRelationshipNoteFormState extends State<CreateRelationshipNoteForm> {
  String? _selectedValue;
  final TextEditingController _notesController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FormModal(
        title: 'Beziehungs Notiz erfassen',
        onConfirm: () => {
              //collect fields and store in database
              if (_formKey.currentState!.validate())
                {
                  _formKey.currentState!.save(),
                  widget.onConfirm!(SogamiPage.newPage(
                    parentId: 'database-2',
                    createdBy: users[0],
                    properties: {
                      'person': _selectedValue!,
                      'notes': _notesController.text
                    },
                    title: 'Treffen',
                  )),
                  Navigator.of(context).pop(),
                }
            },
        onCancel: () => {Navigator.of(context).pop(true), widget.onCancel!()},
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                DropdownButtonFormField(
                  items: users
                      .map((e) => DropdownMenuItem(
                            value: e.id,
                            child: Text(e.name),
                          ))
                      .toList(),
                  decoration: const InputDecoration(
                    hintText: 'Select Contact',
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                  onSaved: (value) => _selectedValue = value,
                  value: _selectedValue,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your notes',
                  ),
                  minLines: 2,
                  maxLines: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            )));
  }
}
