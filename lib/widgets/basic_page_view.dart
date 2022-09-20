import 'package:flutter/material.dart';

class BasicPageView extends StatefulWidget {
  const BasicPageView({Key? key}) : super(key: key);

  @override
  State<BasicPageView> createState() => _BasicPageViewState();
}

class _BasicPageViewState extends State<BasicPageView> {
  final controller = PageController(initialPage: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        actions: [
          IconButton(
            onPressed: () => controller.previousPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            icon: const Icon(Icons.keyboard_arrow_left),
          ),
          IconButton(
            onPressed: () => controller.nextPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            icon: const Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        // physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          debugPrint('Page ${index + 1}');
        },
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.black26,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
