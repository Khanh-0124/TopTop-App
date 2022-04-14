import 'package:flutter/material.dart';

const avatarUrl =
    'https://scontent.fhan2-4.fna.fbcdn.net/v/t39.30808-6/277735903_1224071585014688_6701935995780414487_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=5cd70e&_nc_ohc=iwiYgfh5oCMAX-wv3lR&_nc_ht=scontent.fhan2-4.fna&oh=00_AT8fy_ioL9Q6-oeMZWjCAcVbJ456-PJO7s-35NhwcZwvNw&oe=62545446';

// THEMEDATA
final ThemeData theme = ThemeData();
final customThemeData = theme.copyWith(
  primaryColor: CustomColors.pink,
  colorScheme: theme.colorScheme
      .copyWith(secondary: CustomColors.blue, primary: CustomColors.pink),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: CustomColors.black,
    elevation: 0,
    centerTitle: true,
    titleTextStyle:
        CustomTextStyle.title2.copyWith(fontWeight: FontWeight.w500),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: CustomColors.black,
  ),
);

// COLOR
class CustomColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color pink = Color(0xffF22E62);
  // static const Color pink = Color(0xffEB4678);
  static const Color blue = Color(0xff0494B5);
  static const Color purple = Color(0xff6F3BFF);
}

// ICON PATH
class IconPath {
  static const commentFill = 'assets/icons/comment-fill.svg';
  static const shareFill = 'assets/icons/share-fill.svg';
  static const loaderColor = 'assets/icons/loader-color.svg';
  static const googleColor = 'assets/icons/google-color.svg';
  static const facebookRoundColor = 'assets/icons/facebook-round-color.svg';
  static const chatSquareTextFill = 'assets/icons/chat-square-text-fill.svg';
  static const chatSquareText = 'assets/icons/chat-square-text.svg';
}

// Lottie Animation URL
class LottiePath {
  static const loader = 'assets/lotties/loader_color.json';
  static const music = 'assets/lotties/music.json';
  static const barMusic = 'assets/lotties/bars-music.json';
}

// TextStyle
class CustomTextStyle {
  static const title1 = TextStyle(
    color: CustomColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w800,
    letterSpacing: .25,
  );
  static const title2 = TextStyle(
    color: CustomColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w800,
    letterSpacing: .25,
  );
  static const title3 = TextStyle(
    color: CustomColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: .25,
  );
  static const bodyText1 = TextStyle(
    color: CustomColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .25,
  );
  static const bodyText2 = TextStyle(
    color: CustomColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: .25,
  );
}
