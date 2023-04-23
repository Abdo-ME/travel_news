import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imageList = [
  'https://alger.mta.gov.dz/wp-content/uploads/sites/6/2022/01/La-casbah-dAlger.jpg',
  'https://whc.unesco.org/uploads/thumbs/site_0565_0011-750-750-20180730112529.jpg',
  'https://whc.unesco.org/uploads/thumbs/site_0565_0004-1000-1333-20180730112515.jpg',
];

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            const FullSceenSlider(),
            details(),
          ],
        ),
      ),
    );
  }

  Align details() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: SizeConfig.blockSizeVertical! * 54,
        decoration: const BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(42),
              topRight: Radius.circular(42),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 27, left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unravel mysteries of the Kasabah',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 7,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                    color: kWhite,
                    border: Border.all(color: kGrey),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 19,
                          // backgroundColor: kLightBlue,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Abdelhak Mehda   April 20,  8 min read',
                          style: kPoppinsMedium.copyWith(
                            color: kGrey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 39,
                ),
                Text(
                  'The Casbah (Arabic: قصبة, qasba, meaning citadel) is the citadel of Algiers in Algeria and the traditional quarter clustered around it. In 1992, the United Nations Educational, Scientific and Cultural Organization (UNESCO) proclaimed Kasbah of Algiers a World Cultural Heritage site.',
                  style: kPoppinsMedium.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeVertical! * 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FullSceenSlider extends StatefulWidget {
  const FullSceenSlider({super.key});

  @override
  State<FullSceenSlider> createState() => _FullSceenSliderState();
}

class _FullSceenSliderState extends State<FullSceenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
        // alignment: Alignment.bottomCenter,

        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: SizeConfig.blockSizeVertical! * 50,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() => _current = index);
                },
                initialPage: _current),
            items: imageList
                .map(
                  (item) => Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: SizeConfig.blockSizeVertical! * 50,
                      width: double.infinity,
                    ),
                  ),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: SizeConfig.blockSizeVertical! * 50,
              padding: const EdgeInsets.only(top: 30, bottom: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        newsDetailsIcon(Icons.arrow_back_ios_outlined,
                            () => Navigator.pop(context)),
                        newsDetailsIcon(Icons.bookmark, () => null),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList
                        .asMap()
                        .entries
                        .map((entry) => GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: _current == entry.key
                                      ? const Icon(
                                          Icons.indeterminate_check_box_sharp,
                                          color: kBlue,
                                        )
                                      : const Icon(
                                          Icons.indeterminate_check_box_rounded,
                                          color: kWhite,
                                        )

                                  //  SvgPicture.asset(
                                  //  ),
                                  ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          )
        ]);
  }

  newsDetailsIcon(icon, action) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(color: kWhite),
            borderRadius: BorderRadius.circular(kBorderRadius)),
        child: Icon(
          icon,
          color: kWhite,
        ),
      ),
    );
  }
}
