import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const FullSceenSlider(),
        Container(
          width: double.infinity,
          height: 40,
          decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42),
                topRight: Radius.circular(42),
              )),
          child: Text('d;lsdkf;lksfjgl;kfdgldfkjgdfslkgjata'),
        ),
      ],
    );
  }
}

final List<String> imageList = [
  'https://alger.mta.gov.dz/wp-content/uploads/sites/6/2022/01/La-casbah-dAlger.jpg',
  'https://whc.unesco.org/uploads/thumbs/site_0565_0011-750-750-20180730112529.jpg',
  'https://whc.unesco.org/uploads/thumbs/site_0565_0004-1000-1333-20180730112515.jpg',
];

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
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: kWhite),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: kWhite,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: kWhite),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.bookmark,
                            color: kWhite,
                          ),
                        ),
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
}
