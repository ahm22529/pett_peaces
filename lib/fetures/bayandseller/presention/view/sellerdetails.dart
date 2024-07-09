import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';

class Sellerdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodysellerandbuyerdetails(),
    );
  }
}

class Bodysellerandbuyerdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Continerimage(),
              Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height * .32,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "الوصف",
                          style: AppStyles.styleMedium18(context),
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص ",
                          style: AppStyles.styleRegular14(context)
                              .copyWith(color: Color(0xff333333)),
                        ),
                        Text(
                          "سبب البيع",
                          style: AppStyles.styleMedium18(context),
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص ",
                          style: AppStyles.styleRegular14(context)
                              .copyWith(color: Color(0xff333333)),
                        ),
                        Text("صور إضافية (24)"),
                        show(),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 5,
                top: MediaQuery.of(context).size.height * .01,
                child: Image.asset("Asset/image/Back.png"),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .07,
                child: infoa(),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        )
      ],
    );
  }
}

class Continerimage extends StatelessWidget {
  const Continerimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/seller.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class infoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff00070D40).withOpacity(.25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "روز",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          Text(
            "الأسم",
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            "روز",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Text(
            "الأسم",
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            "روز",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Text(
            "الأسم",
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            "روز",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class BodeySellerrDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset("Asset/image/Back.png"),
            Image.asset(
              "Asset/image/cute-greyhound-dog-playing-outside 1.png",
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.25,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: constraints.maxHeight * 0.01,
              left: constraints.maxWidth * 0.05,
              right: constraints.maxWidth * 0.05,
              child: infoa(),
            ),
            Positioned(
              top: constraints.maxHeight * 0.20,
              left: 0,
              right: 0,
              child: Customdetailes(),
            ),
          ],
        );
      },
    );
  }
}

class Customdetailes extends StatelessWidget {
  const Customdetailes({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الوصف",
                    style: AppStyles.styleMedium18(context),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص ",
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: Color(0xff333333)),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "صور إضافية (24)",
                    style: AppStyles.styleMedium18(context).copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  show(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.02,
            ),
            child: continerbuttom(),
          ),
        ],
      ),
    );
  }
}
