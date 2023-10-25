import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key, this.appBar, this.body, this.bottomNavigationBar});

  final Widget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: PreferredSize(
          preferredSize: AppPreferedSize().preferredSize,
          child: appBar ?? Container()),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
