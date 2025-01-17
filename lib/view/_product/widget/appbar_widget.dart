import 'package:flutter/material.dart';

import '../../../core/constants/enums/locale_keys_enum.dart';
import '../../../core/constants/image/image_constatns.dart';
import '../../../core/init/cache/locale_manager.dart';
import '../_constants/image_path_svg.dart';

// ignore: must_be_immutable
class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);

  String imageUrl =
      LocaleManager.instance.getStringValue(PreferencesKeys.USER_IMAGE);

  String name = LocaleManager.instance.getStringValue(PreferencesKeys.NAME);

  BuildAppBar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Flexible(
              child: imageUrl == ""
                  ? CircleAvatar(
                      radius: 25,
                      child: Image.asset(ImageConstants.instance.defaultPerson),
                    )
                  : Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(image: NetworkImage(imageUrl)),
                      ),
                    ),
            ),
            const SizedBox(width: 9),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Good Morning,"),
                  const SizedBox(height: 5),
                  Text("Guest")
                ],
              ),
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: InkWell(
              onTap: () {},
              child: buildSvgPicture(SVGImagePaths.instance.categorySVG)),
        )
      ],
    );
  }
}
