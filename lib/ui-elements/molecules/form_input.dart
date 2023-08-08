import 'package:flutter/material.dart';
import 'package:timelin/ui-elements/components.dart';

typedef CustomOnChange = void Function(String value);

class FormInput extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final bool? protected;
  final String? initialValue;
  final CustomOnChange? onChange;

  const FormInput(
      {super.key,
      this.label,
      this.placeholder,
      this.protected,
      this.initialValue,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: label != null,
            child: Column(
              children: [
                Text(
                  label == null ? "" : label!,
                  style: const TextStyle(
                      color: Color(Colours.g300), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Spacing.size8,
                )
              ],
            )),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              // labelText: label,
              hintText: placeholder),
          onChanged: (value) {
            if (onChange != null) {
              onChange!(value);
            }
          },
        )
      ],
    );
  }
}
