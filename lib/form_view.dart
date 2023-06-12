import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:testforms/form_bloc.dart';

class FormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<FormBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('TestForm')),
      body: FormBuilder(
        key: bloc.formKey,
        child: Column(
          children: [
            FormBuilderTextField(
              key: UniqueKey(),
              name: 'email',
              decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            FormBuilderTextField(
              key: UniqueKey(),
              name: 'password',
              decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextButton(
              child: Text('Change Email'),
              onPressed: () {
                bloc.add(Submit());
              },
            )
          ],
        ),
      ),
    );
  }
}
