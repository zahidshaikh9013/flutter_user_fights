import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hamam_test/app/app_extensions.dart';
import 'package:hamam_test/app/app_theme.dart';
import 'package:hamam_test/app/context_ext.dart';
import 'package:hamam_test/app/dimensions.dart';
import 'package:hamam_test/app/globals.dart';
import 'package:hamam_test/models/users/results.dart';
import 'package:hamam_test/utils/age_calculator.dart';
import 'package:hamam_test/widgets/cached_image.dart';
import 'package:hamam_test/widgets/text_widget.dart';
import 'package:intl/intl.dart';

class ItemFighterUser extends StatefulWidget {
  final Results user;

  const ItemFighterUser({super.key, required this.user});

  @override
  ItemFighterUserState createState() => ItemFighterUserState();
}

class ItemFighterUserState extends State<ItemFighterUser> {
  late Results user;

  @override
  void initState() {
    super.initState();

    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    String dateOfBirth = parseDateOfBirth();
    String address = parseAddress();

    return Container(
      padding: p12,
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BR10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texts(
            "${user.first_name} ${user.last_name}",
            style: context.titleMediumBold,
          ),
          h10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (user.picture_thumb?.endsWith(".svg") == true)
                ClipRRect(
                  borderRadius: BR100,
                  child: SvgPicture.network(
                    user.picture_thumb!,
                    width: 60,
                    height: 60,
                    placeholderBuilder: (_) {
                      return Container(
                        color: kGreyColor1,
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Texts(
                            "${user.first_name} ${user.last_name}".forImage(),
                            style: context.titleMedium?.copyWith(color: kBlack),
                          ),
                        ),
                      );
                    },
                  ),
                )
              else
                CachedImage(
                  user.picture_thumb,
                  width: 60,
                  height: 60,
                  borderRadius: BR100,
                  name: "${user.first_name} ${user.last_name}".forImage(),
                ),
              w16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_circle_outlined),
                        w10,
                        Flexible(
                          child: Texts(
                            "${user.gender?.sCap()}",
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                    h8,
                    Row(
                      children: [
                        const Icon(Icons.access_time),
                        w10,
                        Flexible(
                          child: Texts(
                            dateOfBirth,
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                    h8,
                    Row(
                      children: [
                        const Icon(Icons.sports_gymnastics),
                        w10,
                        Flexible(
                          child: Texts(
                            "${(user.weight ?? 0).toString().toDouble().toInt()} lbs",
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                    h8,
                    Row(
                      children: [
                        const Icon(Icons.houseboat_outlined),
                        w10,
                        Flexible(
                          child: Texts(
                            "${user.number_of_fights ?? 0} bouts",
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                    h8,
                    Row(
                      children: [
                        const Icon(Icons.other_houses_outlined),
                        w10,
                        Flexible(
                          child: Texts(
                            user.gym_name ?? NA,
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                    if (address.isNotEmpty) ...[
                      h8,
                      Row(
                        children: [
                          const Icon(Icons.location_pin),
                          w10,
                          Flexible(
                            child: Texts(
                              address,
                              style: context.titleSmallBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                    h8,
                    Row(
                      children: [
                        const Icon(Icons.tag),
                        w10,
                        Flexible(
                          child: Texts(
                            "${user.id}",
                            style: context.titleSmallBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String parseDateOfBirth() {
    try {
      final format = DateFormat("yyyy-MM-dd");
      final parsingFormat = DateFormat("MM/dd/yyyy");
      final parsedDate = format.parse(user.date_of_birth!);
      final age = AgeCalculator.age(parsedDate);
      final f2 = parsingFormat.format(parsedDate);

      return "${age.years} Yrs, $f2";
    } catch (e, stacktrace) {}

    return user.date_of_birth ?? "";
  }

  String parseAddress() {
    final gym = user.gymLocationFull;
    if (gym != null && gym.raw!.isNotEmpty) {
      return "${gym.raw}";
    }

    return "";
  }
}
