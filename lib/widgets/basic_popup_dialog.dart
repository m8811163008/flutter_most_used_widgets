import 'package:flutter/material.dart';
import 'package:flutter_most_used_widgets/constants/constants.dart';

class BasicPopupDialog extends StatelessWidget {
  const BasicPopupDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('My title'),
                content: Text(Constants.lorem),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel')),
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK')),
                ],
              ),
            );
          },
          child: const Text('Open dialog')),
    );
  }
}
