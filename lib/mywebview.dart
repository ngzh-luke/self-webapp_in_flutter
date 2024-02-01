import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui_web' as ui;

class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    _iframeElement.style.height = '80%';
    _iframeElement.style.width = '80%';
    _iframeElement.src = 'https://flutter.dev';
    _iframeElement.style.border = 'none';

    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewID) => _iframeElement,
    );
    super.initState();
  }

  final Widget _iframeWidget = HtmlElementView(
    viewType: 'iframeElement',
    key: UniqueKey(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Viewing in app webpage: `${_iframeElement.src}`"),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
                child: _iframeWidget,
              )
            ]),
      ),
    );
  }
}
