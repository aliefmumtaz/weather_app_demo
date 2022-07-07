import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class IsFocusEvent extends Equatable {
  const IsFocusEvent();
}

class SetIsFocus extends IsFocusEvent {
  final bool isFocus;

  const SetIsFocus({required this.isFocus});
  
  @override
  List<Object?> get props => [isFocus];
}

class SearchBoxIsFocusBloc extends Bloc<IsFocusEvent, bool> {
  SearchBoxIsFocusBloc() : super(false) {
    on<SetIsFocus>((event, emit) => emit(event.isFocus));
  }
}