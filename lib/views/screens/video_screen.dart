import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toptop_app/constants.dart';
import 'package:toptop_app/views/widgets/common/text_expand_widget.dart';

import '../widgets/custom_right_taskbar.dart';
import '../widgets/video_player_widget.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  static final List videosUrl = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://v16-webapp.tiktok.com/8d6234896f3d19056516f155658734e2/624d349d/video/tos/useast2a/tos-useast2a-pve-0037-aiso/648409ecd4a44e08b6f865ad8ad52dad/?a=1988&br=2192&bt=1096&cd=0%7C0%7C1%7C0&ch=0&cr=0&cs=0&cv=1&dr=0&ds=3&er=&ft=XOQ9-3LGnz7ThAZBSDXq&l=202204060034570102440492151C311D42&lr=tiktok&mime_type=video_mp4&net=0&pl=0&qs=0&rc=M3Frbjs6ZmgzOzMzZjgzM0ApOjxkZmllPDtmNzU5OTY0OGdfZDEvcjRnZHBgLS1kL2NzczZiLTU2NjZhXi8vMTYzX2M6Yw%3D%3D&vl=&vr=',
    'https://v16-webapp.tiktok.com/e50b0b19468025234fcc2f0c9179bb4f/624d34ca/video/tos/useast2a/tos-useast2a-pve-0037-aiso/72caa0c1f3a1456b9dd819421a7aa4c6/?a=1988&br=2918&bt=1459&cd=0%7C0%7C1%7C0&ch=0&cr=0&cs=0&cv=1&dr=0&ds=3&er=&ft=XOQ9-3LGnz7ThMcBSDXq&l=202204060035350102510021560830CF9E&lr=tiktok&mime_type=video_mp4&net=0&pl=0&qs=0&rc=M291dDU6ZjZzOzMzZjgzM0ApNDdkNTZnO2RlNzU2NTg3NmdlajVycjRfZ3JgLS1kL2Nzc141XzUuX19eMV8xNmMvNmA6Yw%3D%3D&vl=&vr='
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videosUrl.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Stack(
        children: [
          VideoPlayerWidget(
            videoUrl: videosUrl[index],
          ),
          const Positioned(
            right: 10,
            bottom: 14,
            child: CustomRightTaskbar(),
          ),
          Positioned(
            bottom: 14,
            left: 10,
            width: MediaQuery.of(context).size.width * .6,
            child: const InformationBelow(),
          ),
        ],
      ),
    );
  }
}

class InformationBelow extends StatelessWidget {
  const InformationBelow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '@user',
          style: CustomTextStyle.title2.copyWith(color: CustomColors.white),
        ),
        const SizedBox(
          height: 6,
        ),
        const TextExpandWidget(
          text:
              'f hd asjsdjdjffdhfhđgdfdgdff s sadhfi asjsdjdjffdhfhđgdfdgdff s sadhfi fhd jd cdhid hds hdf idsf dsf hdsfhd jd cdhid hds hdf idsf dsf hds ha fhas dúah',
          textColor: CustomColors.white,
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Lottie.asset(LottiePath.barMusic, height: 26),
            Text(
              'Tên bài hát',
              style:
                  CustomTextStyle.bodyText2.copyWith(color: CustomColors.white),
            ),
          ],
        )
      ],
    );
  }
}
