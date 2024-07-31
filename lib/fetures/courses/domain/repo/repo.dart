import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/courses/domain/entity/checkout_enity.dart';
import 'package:pett_peaces/fetures/courses/domain/entity/courses_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';

abstract class CourseRepo {
  Future<Either<Failure, CoursesEntityList>> getcoursedata(
      {required String ndpoint, required String token});


}
