import 'package:flutter/material.dart';
// import 'app_styles.dart';
// import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        children: [
          header(),
          hSizedBox(30.00),
          search(),
          hSizedBox(15.00),
          tags(),
          hSizedBox(25.00),
          destinationList(),
          hSizedBox(25.00),
          shareWihYou(),
          hSizedBox(15.00),
          shareList()
        ],
      ),
    );
  }

  SizedBox shareList() {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Container(
              padding: const EdgeInsets.all(9),
              margin: const EdgeInsets.only(right: 20),
              width: 208,
              height: 88,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(kBorderRadius),
                boxShadow: [
                  BoxShadow(
                    color: kDarkBlue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24.0,
                    spreadRadius: 0.0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kLightBlue,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://adoctor.org/wp-content/uploads/Tlemcen-123.jpg'),
                      ),
                    ),
                    child: const Icon(
                      Icons.play_circle,
                      color: kWhite,
                    ),
                  ),
                  wSizedBox(12.0),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Top Trading Islands in 2022',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                        ),
                        hSizedBox(5.0),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/view.svg',
                              height: 18,
                              width: 15,
                              colorFilter: const ColorFilter.mode(
                                  kGrey, BlendMode.srcIn),
                            ),
                            wSizedBox(4.0),
                            Text(
                              '40,999',
                              style: kPoppinsMedium.copyWith(
                                color: kGrey,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Row shareWihYou() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Short for you',
          style: kPoppinsBold.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
          ),
        ),
        Text(
          'View All',
          style: kPoppinsMedium.copyWith(
            color: kBlue,
            fontSize: SizeConfig.blockSizeHorizontal! * 3,
          ),
        ),
      ],
    );
  }

  SizedBox destinationList() {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(right: 20.0),
            height: 304,
            width: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kDarkBlue.withOpacity(0.051),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Column(children: [
              Container(
                height: 164,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.mafamillezen.com/w2018/wp-content/uploads/2022/02/voyage-famille-alger.jpg'))),
              ),
              const SizedBox(height: 18),
              Flexible(
                child: Text(
                  'The Kasbah is a unique kind of medina, or Islamic city. It stands in one of the finest coastal sites on the Mediterranean',
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              hSizedBox(16.00),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: kLightBlue,
                        backgroundImage: NetworkImage(
                            'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
                      ),
                      wSizedBox(12.00),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Abdelhak Mehda',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                          Text(
                            'April 18, 2023',
                            style: kPoppinsRegular.copyWith(
                              color: kGrey,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kLightWhite,
                    ),
                    child: SvgPicture.asset(
                      'assets/share.svg',
                      colorFilter:
                          const ColorFilter.mode(kLightBlue, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ]),
          );
        },
      ),
    );
  }

  SizedBox hSizedBox(value) => SizedBox(height: value);
  SizedBox wSizedBox(value) => SizedBox(width: value);

  SizedBox tags() {
    return SizedBox(
      height: 16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 38),
            child: Text('#tag'),
          );
        },
      ),
    );
  }

  Container search() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: kWhite,
          boxShadow: [
            BoxShadow(
              color: kDarkBlue.withOpacity(0.051),
              offset: const Offset(0.0, 3.0),
              blurRadius: 24.0,
              spreadRadius: 0.0,
            ),
          ]),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: kPoppinsRegular.copyWith(
                color: kBlue,
                fontSize: SizeConfig.blockSizeHorizontal! * 3,
              ),
              controller: TextEditingController(),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                  hintText: 'Search for aricle...',
                  border: kBorder,
                  errorBorder: kBorder,
                  disabledBorder: kBorder,
                  focusedBorder: kBorder,
                  focusedErrorBorder: kBorder,
                  hintStyle: kPoppinsRegular.copyWith(
                    color: kLightGrey,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  )),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/search.svg',
                colorFilter: const ColorFilter.mode(kWhite, BlendMode.srcIn),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row header() {
    return Row(
      children: [
        Container(
          height: 51,
          width: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: kLightBlue,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
              ),
            ),
            Text(
              'Sunday, 16 April',
              style: kPoppinsRegular.copyWith(
                color: kGrey,
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
