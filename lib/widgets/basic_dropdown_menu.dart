import 'package:flutter/material.dart';

class BasicDropdownMenu extends StatefulWidget {
  const BasicDropdownMenu({Key? key}) : super(key: key);

  @override
  State<BasicDropdownMenu> createState() => _BasicDropdownMenuState();
}

class _BasicDropdownMenuState extends State<BasicDropdownMenu> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String? selectedItemDropDown = 'Item 1';
  String? selectedItemDropdownFormField = 'Item 1';
  String? selectedItemPopupMenu = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 240.0,
            child: DropdownButton<String>(
              items: items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 24.0),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (selectedItem) {
                setState(() => selectedItemDropDown = selectedItem);
              },
              value: selectedItemDropDown,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: 240.0,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3.0, color: Colors.grey.shade200),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3.0, color: Colors.grey.shade700),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3.0, color: Colors.grey.shade500),
                ),
              ),
              items: items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 24.0),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (selectedItem) {
                setState(() => selectedItemDropdownFormField = selectedItem);
              },
              value: selectedItemDropdownFormField,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: 240.0,
            child: PopupMenuButton<String>(
                itemBuilder: (context) => items
                    .map(
                      (item) => PopupMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                onSelected: (selectedItem) {
                  print(selectedItem);
                  setState(() => selectedItemPopupMenu = selectedItem);
                },
                offset: const Offset(40, 0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Selected item: $selectedItemPopupMenu'),
                      const Icon(Icons.arrow_downward),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
