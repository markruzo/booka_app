import 'package:flutter/material.dart';

class AppColor {
  static const fluffyPink = Color.fromARGB(255, 255, 229, 248);
  static const waterBlue = Color.fromARGB(255, 50, 68, 234);
  static const cleanWhite = Color.fromARGB(255, 252, 252, 252);
  static const superBlack = Color.fromARGB(255, 27, 28, 34);
  static const tropicalBlue = Color.fromARGB(255, 190, 236, 250);
  static const oceanBlue = Color.fromARGB(255, 35, 56, 138);
  static const disabled = Color.fromARGB(255, 240, 241, 242);

  static const listColors = [
    fluffyPink,
    waterBlue,
    cleanWhite,
    superBlack,
    tropicalBlue,
    oceanBlue,
  ];

  // Primary > OnPrimary
  // Secondary > OnSecondary
  // Background > OnBackground
}

class ActionColor {
  static const actionRequested = Color.fromARGB(255, 255, 242, 231);
  static const actionRequestedIcon = Color.fromARGB(255, 251, 126, 17);
  static const actionOffline = Color.fromARGB(255, 241, 242, 242);
  static const actionOfflineIcon = Color.fromARGB(255, 107, 114, 128);
  static const actionLaundry = Color.fromARGB(255, 235, 236, 253);
  static const actionLaundryIcon = Color.fromARGB(255, 50, 68, 234);
  static const actionInTransit = Color.fromARGB(255, 255, 238, 252);
  static const actionInTransitIcon = Color.fromARGB(255, 224, 151, 206);
  static const actionActive = Color.fromARGB(255, 234, 250, 241);
  static const actionActiveIcon = Color.fromARGB(255, 47, 204, 113);

  static const listAction = [
    actionLaundry,
    actionLaundryIcon,
    actionRequested,
    actionRequestedIcon,
    actionInTransit,
    actionInTransitIcon,
    actionActive,
    actionActiveIcon,
    actionOffline,
    actionOfflineIcon,
  ];
}

class DMSans {
  static const TextStyle kBodyLargeStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 18);
  static const TextStyle kBodyMediumStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 16);
  static const TextStyle kBodySmallStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 14);
  static const TextStyle kBodyExtraSmallStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 12);
  static const TextStyle kCaptionStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 10);
  static const TextStyle kOverlineStyle =
      TextStyle(fontFamily: 'Dm Sans', fontSize: 8);

  // InUse: Text('Text', style: DMSans.kBodyLargeStyle.copyWith(color: AppColor.superBlack,),),

  static const listDMSans = [
    kBodyLargeStyle,
    kBodyMediumStyle,
    kBodySmallStyle,
    kBodyExtraSmallStyle,
    kCaptionStyle,
    kOverlineStyle,
  ];
}

class Gustavo {
  static const TextStyle kDisplayLargeStyle =
      TextStyle(fontFamily: 'Gustavo', fontSize: 26);
  static const TextStyle kDisplayMediumStyle =
      TextStyle(fontFamily: 'Gustavo', fontSize: 20);

  // InUse: Text('Text', style: Gustavo.kDisplayLargeStyle.copyWith(color: AppColor.superBlack,),),

  static const listGustavo = [
    kDisplayLargeStyle,
    kDisplayMediumStyle,
  ];
}

class ButtonStates {
  late final ButtonStateStyle defaultState;
  late final ButtonStateStyle disabledState;
  late final ButtonStateStyle activeState;

  ButtonStates()
      : defaultState = const ButtonStateStyle(
          backgroundColor: AppColor.fluffyPink,
          textColor: AppColor.superBlack,
        ),
        disabledState = const ButtonStateStyle(
          backgroundColor: AppColor.disabled,
          textColor: Colors.grey,
        ),
        activeState = const ButtonStateStyle(
          backgroundColor: AppColor.waterBlue,
          textColor: AppColor.cleanWhite,
        );

  late final listStates = [
    defaultState,
    disabledState,
    activeState,
  ];
}

class ButtonStateStyle {
  final Color backgroundColor;
  final Color textColor;

  const ButtonStateStyle({
    required this.backgroundColor,
    required this.textColor,
  });
}
