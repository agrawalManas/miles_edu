import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/constants/enums.dart';
import 'package:miles_edu_assessment/modules/home/models/home_screen_model.dart';
import 'package:miles_edu_assessment/modules/home/presentation/content_builder_service.dart';
import 'package:miles_edu_assessment/modules/home/presentation/widgets/custom_heading.dart';

class ContentPosition extends StatelessWidget {
  final List<Datum> homeScreenModel;
  const ContentPosition({required this.homeScreenModel, super.key});

  HomeScreenContentsEnum _getContentEnum({required int position}) {
    switch (position) {
      case 1:
        return HomeScreenContentsEnum.banner;
      case 2:
        return HomeScreenContentsEnum.reels;
      case 3:
        return HomeScreenContentsEnum.cta;
      case 4:
        return HomeScreenContentsEnum.events;
      case 5:
        return HomeScreenContentsEnum.inshorts;
      case 6:
        return HomeScreenContentsEnum.masterclass;
      default:
        return HomeScreenContentsEnum.banner;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: homeScreenModel.length,
      itemBuilder: (context, index) {
        final content = homeScreenModel[index];
        final contentEnum = _getContentEnum(position: content.position ?? 1);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (contentEnum != HomeScreenContentsEnum.banner &&
                contentEnum != HomeScreenContentsEnum.cta)
              CustomHeading(text: content.heading ?? ''),
            ContentBuilderService(
              data: homeScreenModel[index],
              contentsEnum: contentEnum,
              homeScreenModel: null,
            ).buildWidget()
          ],
        );
      },
    );
  }
}
