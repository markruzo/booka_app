import 'package:flutter/material.dart';

class AppColor {
  static const fluffyPink = null;
  static const waterBlue = null;
  static const cleanWhite = null;
  static const superBlack = null;
  static const tropicalBlue = null;
  static const oceanBlue = null;
  static const disabled = null;

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
}

class ActionColor {
  static const actionRequested = null;
  static const actionRequestedIcon = null;
  static const actionLaundry = null;
  static const actionLaundryIcon = null;
  static const actionInTransit = null;
  static const actionInTransitIcon = null;
  static const actionActive = null;
  static const actionActiveIcon = null;

  static const listAction = [
    actionLaundry,
    actionLaundryIcon,
    actionRequested,
    actionRequestedIcon,
    actionInTransit,
    actionActive,
    actionActiveIcon,
    actionInTransitIcon,
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
      : defaultState = ButtonStateStyle(
          backgroundColor: AppColor.fluffyPink,
          textColor: Colors.black,
        ),
        disabledState = ButtonStateStyle(
          backgroundColor: AppColor.disabled,
          textColor: Colors.grey,
        ),
        activeState = ButtonStateStyle(
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
