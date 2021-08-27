import 'package:flutter/material.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    Widget? title,
    Function(bool?)? onChanged,
    FormFieldValidator<bool?>? validator,
    bool initialValue = false,
  }) : super(
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                //dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: (val) {
                  state.didChange(val);
                  if (onChanged != null) {
                    onChanged(val);
                  }
                },
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => Text(
                          state.errorText!,
                          style: TextStyle(color: Theme.of(context).errorColor),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
