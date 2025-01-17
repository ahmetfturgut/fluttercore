 import 'package:core_flutter_app/core/extension/string_extension.dart';
import 'package:flutter_svg/svg.dart';

class SVGImagePaths {
  SVGImagePaths._init();
  static SVGImagePaths? _instace;
  static SVGImagePaths get instance {
    return _instace ??= SVGImagePaths._init();
  }

  final bookmarkSVG = 'bookmark'.toSVG;
  final selectedSliderBookmarkSVG = 'selectedSliderBookmark'.toSVG;
  final astronautSVG = 'astronaut'.toSVG;
  final bookmarkNotSelectedSVG = 'bookmark_not_selected'.toSVG;
  final bookmarkGreenSVG = 'bookmark_green'.toSVG;

  final categorySVG = 'category'.toSVG;
  final startScreenSVG = 'start_screen'.toSVG;
  final googleSVG = 'google'.toSVG;

  final homeSVG = 'home'.toSVG;
  final discoverySVG = 'discovery'.toSVG;
  final bookmarkBlackSVG = 'bookmark'.toSVG;
  final bookmarkBigGreenSVG = 'bookmarkBigGreen'.toSVG;
  final commentButtonIconSVG = 'commentButtonIcon'.toSVG;
  final commentCountIconSVG = 'commentCount'.toSVG;
  final likeCountIconSVG = 'likeCount'.toSVG;
  final profileSVG = 'profile'.toSVG;
  final likeInCommentIconSVG = 'likeInCommentIcon'.toSVG;
  final selectedCommentLikeIconSVG = 'selectedCommentLike'.toSVG;
  final replayInCommentIconSVG = 'replayInCommentIcon'.toSVG;

  final selectedBookmark = 'selectedBookmark'.toSVG;
  final selectedBlueBookmark = 'bluebookmark'.toSVG;
  final selectedDiscovery = 'selectedDiscovery'.toSVG;
  final selectedHome = 'selectedHome'.toSVG;
  final selectedProfile = 'selectedProfile'.toSVG;

  final heartSVG = 'heart'.toSVG;
  final replayIconSVG = 'replayIcon'.toSVG;
  final backIconSVG = 'backIcon'.toSVG;

  final chatSVG = 'chat'.toSVG;
  final editIconSVG = 'editIcon'.toSVG;
  final readIconSVG = 'readIcon'.toSVG;
  final commentIconSVG = 'commentIcon'.toSVG;
  final likesIconSVG = 'likesIcon'.toSVG;
  final setTopicIconSVG = 'setTopicIcon'.toSVG;
  final driverHelfSVG = 'driverHelf'.toSVG;
  final editButtonIconSVG = 'editButtonIcon'.toSVG;
  final askUsIconSVG = 'askUsIcon'.toSVG;
  final logoutIconSVG = 'logout'.toSVG;
  final rateIconSVG = 'rateIcon'.toSVG;
  final pencilIconSVG = 'pencilIcon'.toSVG;
}

SvgPicture buildSvgPicture(String path) => SvgPicture.asset(path);
