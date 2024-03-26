import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/ui/country_page/country_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CountryView()),
        Divider(),
        Expanded(child: CountryView()),
      ],
    );
  }
}
