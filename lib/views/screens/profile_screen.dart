import 'package:flutter/material.dart';
import 'package:toptop_app/views/screens/edit_profile_screen.dart';

import '../../constants.dart';
import '../widgets/common/custom_circle_avatar.dart';
import '../widgets/video_grid_view.dart';
import 'video_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ContentBlockAbove(avatarUrl: avatarUrl),
            ContentBlockBelow(),
          ],
        ),
      ),
    );
  }
}

class ContentBlockAbove extends StatelessWidget {
  const ContentBlockAbove({
    Key? key,
    required this.avatarUrl,
  }) : super(key: key);

  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'CK001',
                style: CustomTextStyle.title1,
              ),
              const Spacer(),
              buildMenuButton(context)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.redAccent,
                      Colors.purpleAccent,
                      Colors.yellowAccent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CustomCircleAvatar(
                    avatarUrl: avatarUrl,
                    radius: MediaQuery.of(context).size.width * .1,
                  ),
                ),
              ),
              Column(
                children: const [
                  Text('23', style: CustomTextStyle.title1),
                  Text(
                    'Following',
                    style: CustomTextStyle.bodyText2,
                  ),
                ],
              ),
              Column(
                children: const [
                  Text('23', style: CustomTextStyle.title1),
                  Text(
                    'Followers',
                    style: CustomTextStyle.bodyText2,
                  ),
                ],
              ),
              Column(
                children: const [
                  Text('23', style: CustomTextStyle.title1),
                  Text(
                    'Likes',
                    style: CustomTextStyle.bodyText2,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              '@TranHuyCanh',
              style: CustomTextStyle.title3,
            ),
          ),
          const Text(
            '#hahshashhsahhahd',
            style: CustomTextStyle.bodyText2,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ));
              },
              child: const Text('Edit profile'),
              style: OutlinedButton.styleFrom(
                primary: CustomColors.black,
                side: BorderSide(
                  color: CustomColors.grey.withOpacity(.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (ctx) {
            // SingleChildScrollView adjust the bottomsheet height based on the content
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 20, right: 12),
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: CustomColors.black.withOpacity(.8),
                      ),
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.settings, size: 28),
                          SizedBox(width: 8),
                          Text(
                            'Settings',
                            style: CustomTextStyle.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.analytics_outlined, size: 28),
                          SizedBox(width: 8),
                          Text(
                            'Abs',
                            style: CustomTextStyle.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.qr_code_rounded, size: 28),
                          SizedBox(width: 8),
                          Text(
                            'QR code',
                            style: CustomTextStyle.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.logout_rounded, size: 28),
                          SizedBox(width: 8),
                          Text(
                            'Log out',
                            style: CustomTextStyle.bodyText1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      icon: const Icon(Icons.menu),
    );
  }
}

class ContentBlockBelow extends StatefulWidget {
  const ContentBlockBelow({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBlockBelow> createState() => _ContentBlockBelowState();
}

class _ContentBlockBelowState extends State<ContentBlockBelow> {
  int _tabIndex = 0;

  List tabIcons = [
    Icons.grid_on_rounded,
    Icons.favorite_border_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: List.generate(
              tabIcons.length,
              (index) => Flexible(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _tabIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: _tabIndex == index
                            ? const BorderSide(
                                width: 2, color: CustomColors.black)
                            : const BorderSide(
                                width: 1, color: CustomColors.grey),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Icon(
                      tabIcons[index],
                      color: _tabIndex == index
                          ? CustomColors.black
                          : CustomColors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              sizing: StackFit.expand,
              index: _tabIndex,
              children: [
                VideoScreen.videosUrl.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Share your first video',
                              style: CustomTextStyle.title2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 14,
                                right: 14,
                              ),
                              child: Text(
                                'Record and upload video with effects, sounds, and more.',
                                style: CustomTextStyle.bodyText2
                                    .copyWith(color: CustomColors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Create video'),
                            ),
                          ],
                        ),
                      )
                    : const VideoGridView(),
                VideoScreen.videosUrl.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'You haven\'t liked any videos yet',
                              style: CustomTextStyle.title2,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Discover now'),
                            ),
                          ],
                        ),
                      )
                    : const VideoGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
