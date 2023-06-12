import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:meta/meta.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  final GlobalKey<FormBuilderState> formKey;
  FormBloc({required this.formKey}) : super(FormInitial()) {
    on<Submit>((event, emit) {
      print(formKey.currentState?.fields['email']?.value);
      formKey.currentState?.fields['email']?.setValue('newValue');
      print(formKey.currentState?.fields['email']?.value);
    });
  }
}
