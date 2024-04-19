import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/config/global_config.dart';
import 'package:rate_converter_flutter/constant/api_ninja_url.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constant/app_color.dart';
import '../../gen/assets.gen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBar,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            context.go(AppPages.main.path);
          },
        ),
      ),
      body: _SettingsView(),
    );
  }
}

class _SettingsView extends HookWidget {
  _SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final packageInfo = useState<PackageInfo>(
      PackageInfo(
          appName: 'loading',
          packageName: 'loading',
          version: 'loading',
          buildNumber: 'loading'),
    );
    useEffect(() {
      () async {
        packageInfo.value = await PackageInfo.fromPlatform();
      }();
      return null;
    }, []);

    return Column(
      children: [
        _SettingListTile(
          icon: const Icon(
            Icons.arrow_circle_up,
            color: Colors.orange,
          ),
          title: 'version',
          subtitle: packageInfo.value.version,
        ),
        InkWell(
          child: _SettingListTile(
            icon: const Icon(
              Icons.mail,
              color: Colors.orange,
            ),
            title: 'contact',
            subtitle: GlobalConfig.email,
          ),
          onTap: () async {
            final uri = Uri(scheme: 'mailto', path: GlobalConfig.email);
            await launchUrl(uri);
          },
        ),
        const _SettingListTile(
          icon: Icon(
            Icons.rule,
            color: Colors.orange,
          ),
          title: 'Term of Use',
        ),
        InkWell(
          child: const _SettingListTile(
            icon: Icon(
              Icons.menu_book_sharp,
              color: Colors.orange,
            ),
            title: 'License',
          ),
          onTap: () async {
            print('tapped');
            showLicensePage(
              context: context,
              applicationName: packageInfo.value.appName,
              applicationVersion: packageInfo.value.version,
              applicationIcon: Image.asset(Assets.icons.logo.logo.path),
            );
          },
        ),
        InkWell(
          onTap: () async => await launchUrlString(CustomUrl.apiNinjasUrl),
          child: const _SettingListTile(
              icon: Icon(Icons.source,color: Colors.orange,),
              title: 'Data Resources',
              subtitle: 'API Ninjas',
          ),
        ),
        InkWell(
          onTap: () async => await launchUrlString(CustomUrl.githubUrl),
          child: const _SettingListTile(
            icon: Icon(Icons.source,color: Colors.orange,),
            title: 'Source code',
            subtitle: 'https://github.com/Kate941-su',
          ),
        ),
      ],
    );
  }
}

class _SettingListTile extends StatelessWidget {
  const _SettingListTile(
      {required this.icon, required this.title, super.key, this.subtitle});

  final String title;
  final Icon icon;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: subtitle != null ? Text(subtitle!) : null,
    );
  }
}
