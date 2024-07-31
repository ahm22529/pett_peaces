import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/courses/domain/entity/courses_entity.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';

part 'coursecubit_state.dart';

class CoursecubitCubit extends Cubit<CoursecubitState> {
  CoursecubitCubit(this.courseRepo) : super(CoursecubitInitial());
  CourseRepo courseRepo;
  void getcourse({required String token, required String endpoint}) async {
    try {
      emit(Coursecubitload());
      var result =
          await courseRepo.getcoursedata(ndpoint: endpoint, token: token);
      result.fold(
        (failure) => emit(Coursecubitfauiler(errmass: failure.errmas)),
        (userEntity) => emit(Coursecubitsucess(coursesEntityList: userEntity)),
      );
    } on Exception catch (e) {
      // TODO
    }
  }
}
