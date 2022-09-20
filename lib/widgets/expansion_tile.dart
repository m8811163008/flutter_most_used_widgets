import 'package:flutter/material.dart';

class BasicExpansionTile extends StatelessWidget {
  const BasicExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text(
        'Animals',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      children: [
        ListTile(
          title: Text('dog', style: TextStyle(fontWeight: FontWeight.normal)),
          onTap: () {},
        ),
        ListTile(
            title: Text('cat', style: TextStyle(fontWeight: FontWeight.normal)),
            onTap: () {}),
        ListTile(
            title:
                Text('fish', style: TextStyle(fontWeight: FontWeight.normal)),
            onTap: () {}),
        ListTile(
            title: const Text('penguin',
                style: TextStyle(fontWeight: FontWeight.normal)),
            onTap: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                    const SnackBar(content: Text('You pressed penguin!')));
            }),
      ],
      onExpansionChanged: (isExpanded) {
        debugPrint('Expanded: $isExpanded');
      },
    );
  }
}
