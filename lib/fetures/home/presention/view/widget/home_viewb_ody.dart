import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/courses/presention/view/course_list.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/presention/manager/cubit/home_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles_home.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/list_view_course.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grid_view_services.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/header_section.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/list_view_store.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/silder.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/user_info.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
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
            child: SingleChildScrollView(
              child: SafeArea(
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
                    const SizedBox(
                      height: 40,
                    ),
                    Gridviewservices(
                      userEntitymodel: widget.userEntitymodel,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Visibility(
                      visible: false,
                      child: Column(
                        children: [
                          Headersection(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Myanmiles(
                                          userEntitymodel:
                                              widget.userEntitymodel,
                                        ))),
                            titel1: 'حيواناتي',
                            titel2: 'عرض المزيد',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Anmileshome(
                            anmiles: AnmilesEntity(
                                namee: '',
                                otherimage: [],
                                typee: '',
                                des: '',
                                agee: 0,
                                gendere: '',
                                idd: 0,
                                imagee: '',
                                predec: ''),
                            userEntitymodel: widget.userEntitymodel,
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                    Headersection(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Store(
                                  pro: state.homeEntity.product,
                                  userEntitymodel: widget.userEntitymodel))),
                      titel1: ' المتجر',
                      titel2: 'عرض المزيد',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Gridviewstore(
                      producEntity: state.homeEntity.product,
                      userEntitymodel: widget.userEntitymodel,
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
                    )
                  ],
                ),
              ),
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
