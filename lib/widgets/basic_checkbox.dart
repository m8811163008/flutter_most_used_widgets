import 'package:flutter/material.dart';

class BasicCheckBox extends StatefulWidget {
  const BasicCheckBox({Key? key}) : super(key: key);

  @override
  State<BasicCheckBox> createState() => _BasicCheckBoxState();
}

class _BasicCheckBoxState extends State<BasicCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Colors.pink,
        ),
        child: CheckboxListTile(
          title: const Text('Check Box'),
          subtitle: const Text('Subtitle'),
          value: isChecked,
          onChanged: (value) {
            setState(() => isChecked = value!);
          },
          activeColor: Colors.red,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
