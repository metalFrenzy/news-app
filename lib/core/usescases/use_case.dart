import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<List<Type>> call(Params params);
}

class NoPramas extends Equatable {
  @override
  List<Object?> get props => [];
}
