import 'package:flutter/material.dart';
import 'package:flutter_most_used_widgets/constants/constants.dart';

class BasicExpansionPanel extends StatefulWidget {
  const BasicExpansionPanel({Key? key}) : super(key: key);

  @override
  State<BasicExpansionPanel> createState() => _BasicExpansionPanelState();
}

class _BasicExpansionPanelState extends State<BasicExpansionPanel> {
  final List<ItemModel> items = [
    ItemModel(title: 'Panel 1', body: Constants.lorem),
    ItemModel(title: 'Panel 2', body: Constants.lorem),
    ItemModel(title: 'Panel 3', body: Constants.lorem),
    ItemModel(title: 'Panel 4', body: Constants.lorem),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        children: items
            .map(
              (item) => ExpansionPanelRadio(
                canTapOnHeader: true,
                value: item.title,
                headerBuilder: (context, isExpanded) => ListTile(
                  title: Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                body: ListTile(
                  title: Text(
                    item.body,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ItemModel {
  final String title;
  final String body;

  const ItemModel({
    required this.title,
    required this.body,
  });
}
