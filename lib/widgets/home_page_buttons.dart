import 'package:flutter/material.dart';
import 'package:flutter_most_used_widgets/page/page.dart';
import 'package:flutter_most_used_widgets/widgets/widgets.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HomePageElevatedButton(
            body: BasicBottomSheet(),
            title: 'Bottom Sheet',
          ),
          HomePageElevatedButton(
            body: BasicExpansionTile(),
            title: 'Expansion Tile',
          ),
          HomePageElevatedButton(
            body: BasicCheckBox(),
            title: 'Check Box',
          ),
          HomePageElevatedButton(
            body: BasicPopupDialog(),
            title: 'Popup Dialog',
          ),
          HomePageElevatedButton(
            body: BasicDropdownMenu(),
            title: 'Dropdown Menu',
          ),
          HomePageElevatedButton(
            body: BasicPageView(),
            title: 'Page View',
          ),
          HomePageElevatedButton(
            body: BasicExpansionPanel(),
            title: 'Expansion Panel',
          ),
          HomePageElevatedButton(
            body: BasicTabBar(),
            title: 'Tab Bar',
          ),
        ],
      ),
    );
  }
}

class HomePageElevatedButton extends StatelessWidget {
  const HomePageElevatedButton({Key? key, this.body, required this.title})
      : super(key: key);
  final Widget? body;
  final String title;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 4.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(TemplatePage.route(body, title));
            },
            child: Text(title),
          ),
          const SizedBox(
            height: 4.0,
          ),
        ],
      );
}
