import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/iteam_store.dart';
import 'package:pett_peaces/fetures/courses/presention/view/course_list.dart';
import 'package:pett_peaces/fetures/home/presention/manager/cubit/home_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/list_view_course.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grid_view_services.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/header_section.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/list_view_store.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/my_anmiles_last_add.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/silder.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/user_info.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  // ignore: library_private_types_in_public_api
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context)
        .getdata(endpoint: "home", token: widget.userEntitymodel.token);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomeSucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SafeArea(
                        child: UserInfoCard(
                          userEntitymodel: widget.userEntitymodel,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ImageSlider(
                        img: state.homeEntity.paners,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Gridviewservices(
                        userEntitymodel: widget.userEntitymodel,
                      )
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Headersection(titel1: "المتجر", titel2: "عرض المزيد"),
                      Gridviewstore(
                        producEntity: state.homeEntity.product,
                        userEntitymodel: widget.userEntitymodel,
                      ),
                      MyAnmilesLastAdd(
                        widget: widget,
                        anmiles: state.homeEntity.anmilesEntity,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Image.asset("Asset/image/Frame 1000004499.png"),
                      const SizedBox(
                        height: 32,
                      ),
                      Headersection(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Courselist(
                                      userEntitymodel: widget.userEntitymodel,
                                    ))),
                        titel1: 'كورسات تعليمية',
                        titel2: 'عرض المزيد',
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      ListviewCourses(
                        cours: state.homeEntity.cou,
                        userEntitymodel: widget.userEntitymodel,
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is Homefailuer) {
          return const CustomWidgetfauier();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
