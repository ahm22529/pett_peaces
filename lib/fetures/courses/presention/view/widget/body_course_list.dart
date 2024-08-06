import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/courses/presention/manger/fetachcourses/coursecubit_cubit.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/iteam_listvew_services.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/no_iteam.dart';

class BodyListCourses extends StatefulWidget {
  final UserEntity userEntitymodel;
  const BodyListCourses({super.key, required this.userEntitymodel});

  @override
  State<BodyListCourses> createState() => _BodyListCoursesState();
}

class _BodyListCoursesState extends State<BodyListCourses> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List courses = [];
  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<CoursecubitCubit>().getcourse(
          token: widget.userEntitymodel.token,
          endpoint: "courses?page=$currentPage",
        );
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0 &&
        !isLoadingMore) {
      setState(() {
        isLoadingMore = true;
        currentPage++;
      });
      _loadData();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursecubitCubit, CoursecubitState>(
      listener: (context, state) {
        if (state is Coursecubitsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            courses.addAll(state.coursesEntityList.cou);
          });
        }
      },
      builder: (context, state) {
        if (state is Coursecubitfauiler) {
          return const CustomWidgetfauier();
        }
        if (state is Coursecubitsucess || isLoadingMore) {
          if (courses.isEmpty) {
            return const NoIteam();
          }
          return ListView.builder(
            controller: _scrollController,
            itemCount: courses.length + (isLoadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == courses.length) {
                return const Center(child: CircularProgressIndicator());
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(
                        courses[index]
                            .imag, // تأكد من توفير صورة احتياطية في حالة كان `imag` غير متوفر
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => Coursesiteam(
                          courseseEntity: courses[index],
                          userEntitymodel: widget.userEntitymodel,
                        ),
                      ),
                    ),
                    child: Couresesiteamlistviw(
                      courseseEntity: courses[index],
                    ),
                  ),
                ),
              );
            },
          );
        }
        return const Loadwidgwt();
      },
    );
  }
}
