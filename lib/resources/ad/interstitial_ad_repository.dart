import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rate_converter_flutter/config/global_config.dart';
import 'package:rate_converter_flutter/resources/ad/ad_repository.dart';

abstract class InterstitialAdRepository implements AdRepository {
  InterstitialAd? _interstitialAd;

  InterstitialAdRepository() {
    loadAd();
  }

  @override
  void loadAd() {
    InterstitialAd.load(
        adUnitId: GlobalConfig.admobUnitId!,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            _interstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void showAd() {
    _interstitialAd?.show();
  }
}
