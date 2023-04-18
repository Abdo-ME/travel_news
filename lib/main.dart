import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: kLighterWhite,
          body: HomeScreen(),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          header(),
          const SizedBox(height: 30),
          search(),
          const SizedBox(height: 15),
          tags(),
          const SizedBox(height: 30),
          destinationList(),
        ],
      ),
    );
  }

  SizedBox destinationList() {
    return SizedBox(
      height: 305,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.all(12),
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
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPsnQjsJ9HLBRH8ogWJl4RfuAqNo5qfYTaHA&usqp=CAU'))),
              ),
              const SizedBox(
                height: 18,
              ),
              Flexible(
                child: Text(
                  '111Bali, the heaven island of Indonesia, is attracting tourists not only by the beauty of tropical sea, but also by high waves and unique culture.',
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ]),
          );
        },
      ),
    );
  }

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
