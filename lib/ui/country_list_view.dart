import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/country.dart';

class CountryListView extends HookWidget {
  CountryListView({super.key});

  final list = List<String>.generate(20, (index) => "null");

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        useTextEditingController.fromValue(TextEditingValue.empty);

    final searchFieldListenable = useValueListenable(textEditingController);

    useEffect(() {
      textEditingController.text = searchFieldListenable.text;
    }, [searchFieldListenable]);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: TextField(
            controller: textEditingController,
            style: const TextStyle(color: Colors.white),
            onChanged: (it) => {},
            decoration: const InputDecoration(
                hintText: 'Country Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                )),
          ),
          actions: []),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CountryListTile(
              name: Country.getCountryName(Assets.icons.svg.pa.path),
              imagePath: Assets.icons.svg.pa.path,
              isFavorite: false);
        },
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  const CountryListTile({
    required this.name,
    required this.imagePath,
    required this.isFavorite,
    super.key,
  });

  final String name;
  final String imagePath;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(imagePath),
      title: Text(Country.getCountryName(imagePath)),
      trailing: IconButton(
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        onPressed: (){debugPrint("TODO");},
      )
    );
  }
}
