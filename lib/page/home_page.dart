import 'package:flutter/material.dart';
import 'package:flutter_most_used_widgets/widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TemplatePage(
      body: HomePageButtons(),
    );
  }
}

class TemplatePage extends StatelessWidget {
  const TemplatePage({Key? key, Widget? body, this.title})
      : _body = body ?? const SizedBox(),
        super(key: key);
  final Widget _body;
  final String? title;

  static Route<Widget> route(Widget? body, String? title) => MaterialPageRoute(
        builder: (_) => TemplatePage(
          body: body,
          title: title,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title ?? 'Home Page'),
        ),
        body: _body,
      ),
    );
  }
}
