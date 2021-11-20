import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../res/app_images.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("설정"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("오픈소스라이선스"),
            onTap: () {
              showLicensePage(context: context);
            },
          ),
          const Divider(),
          const ListTile(
            title: Text("정보제공기관"),
            trailing: Text("공공데이터활용지원센터"),
          ),
          const SizedBox(height: 32,),
          SvgPicture.asset(
            AppImages.kOttherSwimming,
            height: 240,
          ),
        ],
      ),
    );
  }
}
