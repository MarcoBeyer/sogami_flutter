import 'package:flutter/material.dart';
import 'package:sogami_flutter/ui/common/models/appointment.dart';

class CreateAppointmentForm extends StatefulWidget {
  const CreateAppointmentForm({super.key, required this.onCreate});

  final void Function(Appointment) onCreate;

  @override
  State<CreateAppointmentForm> createState() => _CreateAppointmentFormState();
}

class _CreateAppointmentFormState extends State<CreateAppointmentForm> {
  String? selectedValue;
  TextEditingController notesController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: ListView(
          children: [
            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(
                  value: 'Contact 1',
                  child: Text('Contact 1'),
                ),
                DropdownMenuItem(
                  value: 'Contact 2',
                  child: Text('Contact 2'),
                ),
                DropdownMenuItem(
                  value: 'Contact 3',
                  child: Text('Contact 3'),
                ),
              ],
              decoration: const InputDecoration(
                hintText: 'Select Contact',
              ),
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              value: selectedValue,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: notesController,
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
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.onCreate(Appointment(
                      person: selectedValue!, notes: notesController.text));
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ));
  }
}
