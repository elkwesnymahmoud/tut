import 'package:tut/data/network/failure.dart';
import 'package:tut/data/request/request.dart';
import 'package:dartz/dartz.dart';

import '../model/model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
