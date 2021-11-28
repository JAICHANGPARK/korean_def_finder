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



          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('''전국의 중점 유통 주유소의 요소수 재고 현황이며, 요소수 중점유통 주유소에서 2시간 간격으로 입력하는 데이터를 5분 단위로 업데이트하여 제공하여 실제 재고 현황과 일부 차이가 있을 수 있습니다.
공개되는 요소수 가격은 기본적으로 벌크 요소수 가격이며, 페트 요소수 가격은 표시된 가격과 다를 수 있습니다.
벌크 요소수가 매진 되었을 경우, 페트 요소수 가격으로 업데이트 됩니다.
            '''),
          ),
          SvgPicture.asset(
            AppImages.kOttherSwimming,
            height: 240,
          ),
        ],
      ),
    );
  }
}
