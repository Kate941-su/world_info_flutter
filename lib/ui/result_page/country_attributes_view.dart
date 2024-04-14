import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rate_converter_flutter/config/global_config.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CountryAttributesView extends StatelessWidget {
  CountryAttributesView({
    super.key,
    required this.leftCountryAttr,
    required this.rightCountryAttr,
  });

  final CountryAttributes leftCountryAttr;
  final CountryAttributes rightCountryAttr;

  final noData = 'NO DATA';

  InterstitialAd? _interstitialAd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CountryAttributeUnit(
              title: 'Region🗺️',
              leftAttr: leftCountryAttr.region ?? noData,
              rightAttr: rightCountryAttr.region ?? noData,
            ),
            _CountryAttributeUnit(
              title: 'Capital🌃',
              leftAttr: leftCountryAttr.capital ?? noData,
              rightAttr: rightCountryAttr.capital ?? noData,
            ),
            _CountryAttributeUnit(
              title: 'Currency(Show Rate)💰',
              leftAttr: leftCountryAttr.currency?.name ?? noData,
              rightAttr: rightCountryAttr.currency?.name ?? noData,
              url: (leftCountryAttr.currency?.code != null &&
                      rightCountryAttr.currency?.code != null)
                  ? 'https://www.google.com/finance/quote/${leftCountryAttr.currency!.code}-${rightCountryAttr.currency!.code}?hl=en'
                  : null,
            ),
            _CountryAttributeUnit(
              title: 'Surface Area(k㎡)🏜️',
              leftAttr: '${leftCountryAttr.surfaceArea ?? noData}',
              rightAttr: '${rightCountryAttr.surfaceArea ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Population(thousand)👥',
              leftAttr: '${leftCountryAttr.population ?? noData}',
              rightAttr: '${rightCountryAttr.population ?? noData}',
            ),
            /// Under These,
            _CountryAttributeUnit(
              title: 'GDP(billion\$)🤑',
              leftAttr: '${leftCountryAttr.gdp ?? noData}',
              rightAttr: '${rightCountryAttr.gdp ?? noData}',
            ),
            // From the following attribute, user only can see by watching ads.
            _CountryAttributeUnit(
              title: 'Internet User Rate(%)👩‍💻',
              leftAttr: '${leftCountryAttr.internetUsers ?? noData}',
              rightAttr: '${rightCountryAttr.internetUsers ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Urban Population Rate(%)🏘️',
              leftAttr: '${leftCountryAttr.urbanPopulation ?? noData}',
              rightAttr: '${rightCountryAttr.urbanPopulation ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Population Growth Rate(%)👥📈',
              leftAttr: '${leftCountryAttr.popGrowth ?? noData}',
              rightAttr: '${rightCountryAttr.popGrowth ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Tourists(thousand)⛩️',
              leftAttr: '${leftCountryAttr.tourists?.toInt() ?? noData}',
              rightAttr: '${rightCountryAttr.tourists ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Urban Population Growth(%)🌃📊',
              leftAttr: '${leftCountryAttr.urbanPopulationGrowth ?? noData}',
              rightAttr: '${rightCountryAttr.urbanPopulationGrowth ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'GDP Growth(%)💰📈',
              leftAttr: '${leftCountryAttr.gdpGrowth ?? noData}',
              rightAttr: '${rightCountryAttr.gdpGrowth ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'CO2 Emissions(million tonnes)🚗💨',
              leftAttr: '${leftCountryAttr.co2Emissions ?? noData}',
              rightAttr: '${rightCountryAttr.co2Emissions ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Forest Area(%)⛰️',
              leftAttr: '${leftCountryAttr.forestedArea ?? noData}',
              rightAttr: '${rightCountryAttr.forestedArea ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'GDP per Capita(\$)💰',
              leftAttr: '${leftCountryAttr.gdpPerCapita ?? noData}',
              rightAttr: '${rightCountryAttr.gdpPerCapita ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Employment Agriculture(%)🍅',
              leftAttr: '${leftCountryAttr.employmentAgriculture ?? noData}',
              rightAttr: '${rightCountryAttr.employmentAgriculture ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Infant Mortality(per 1000)😞',
              leftAttr: '${leftCountryAttr.infantMortality ?? noData}',
              rightAttr: '${rightCountryAttr.infantMortality ?? noData}',
            ),
            _CountryAttributeUnit(
              title: 'Threatened Species🐼',
              leftAttr: '${leftCountryAttr.threatenedSpecies ?? noData}',
              rightAttr: '${rightCountryAttr.threatenedSpecies ?? noData}',
            ),
            TextButton(
                onPressed: () {
                  final adUnitId = GlobalConfig.admobUnitId;
                  if (adUnitId != null) {
                    InterstitialAd.load(
                        adUnitId: adUnitId,
                        request: const AdRequest(),
                        adLoadCallback: InterstitialAdLoadCallback(
                          // Called when an ad is successfully received.
                          onAdLoaded: (ad) {
                            debugPrint('$ad loaded.');
                            // Keep a reference to the ad so you can show it later.
                            _interstitialAd = ad;
                            _interstitialAd?.show();
                          },
                          // Called when an ad request failed.
                          onAdFailedToLoad: (LoadAdError error) {
                            debugPrint('InterstitialAd failed to load: $error');
                          },
                        ));
                  }
                },
                child: const Center(child: Text('Show More')))
          ],
        ),
      ),
    );
  }
}

class _CountryAttributeUnit extends HookWidget {
  _CountryAttributeUnit(
      {required this.title,
      required this.leftAttr,
      required this.rightAttr,
      this.url,
      super.key});

  final String title;
  final String leftAttr;
  final String rightAttr;
  final String? url;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState<bool>(false);
    return Stack(children: [
      Column(
        children: [
          url != null
              ? InkWell(
                  onTap: () {
                    isLoading.value = true;
                    launchUrlString(url!).then((_) => isLoading.value = false);
                  },
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                )
              : Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
          Padding(
            padding: const EdgeInsets.only(
                top: 6.0, left: 24, bottom: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  leftAttr,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                const Spacer(),
                Text(
                  rightAttr,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          )
        ],
      ),
      Visibility(
        visible: isLoading.value,
        child: const Center(child: CircularProgressIndicator()),
      )
    ]);
  }
}
