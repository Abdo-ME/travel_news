import 'package:flutter/material.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLightWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.network(
                        'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abdelhak Mehda',
                              style: kPoppinsBold.copyWith(
                                  color: kDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              'Author & Writer',
                              style: kPoppinsRegular.copyWith(
                                  color: kDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: SizeConfig.blockSizeHorizontal! * 25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Every piece of chocolate I ever ate is getting backat me.. desserts are very revengeful..',
                style: kPoppinsMedium.copyWith(
                    color: kGrey,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 3,
                    vertical: SizeConfig.blockSizeHorizontal! * 3.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kDarkBlue),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '2.42K',
                          style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4),
                        ),
                        Text(
                          'Followers',
                          style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: SizeConfig.blockSizeVertical! * 5,
                    width: 1,
                    decoration: BoxDecoration(
                        color: kGrey, borderRadius: BorderRadius.circular(2)),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '1.42K',
                          style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4),
                        ),
                        Text(
                          'comments',
                          style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: SizeConfig.blockSizeVertical! * 5,
                    width: 1,
                    decoration: BoxDecoration(
                        color: kGrey, borderRadius: BorderRadius.circular(2)),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '1.02K',
                          style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4),
                        ),
                        Text(
                          'Posts',
                          style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Abdelhak\'s Post',
                    style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                  Text(
                    'View All',
                    style: kPoppinsMedium.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 215,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius)),
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius:
                                        BorderRadius.circular(kBorderRadius),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://www.algerie360.com/wp-content/uploads/2018/01/4.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeVertical! * 2,
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'News: Politics',
                                    style: kPoppinsRegular.copyWith(
                                      color: kGrey,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical! * 1,
                                  ),
                                  Text(
                                    'El Oued (Arabic: اﻟﻮادي, Berber languages: Suf meaning the River), Souf or Oued Souf is a city, and the capital of El Oued Province,',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: kPoppinsBold.copyWith(
                                      color: kDarkBlue,
                                      fontSize:
                                          SizeConfig.blockSizeVertical! * 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Populer From Abdelhak',
                style: kPoppinsBold.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (cntx, index) {
                      return Container(
                        height: 143,
                        width: 248,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://agronomie.info/fr/wp-content/uploads/2021/04/wilaya20del-oued.jpg'))),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
