import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class ConnectionStatusEvent extends Equatable {
  const ConnectionStatusEvent();

  @override
  List<Object?> get props => [];
}

class CheckConnection extends ConnectionStatusEvent {
  final bool isConnect;

  const CheckConnection({required this.isConnect});
  @override
  List<Object?> get props => [isConnect];
}

class ConnectionBloc extends Bloc<ConnectionStatusEvent, bool> {
  ConnectionBloc() : super(false) {
    on<CheckConnection>((event, emit) async {
      emit(event.isConnect);
    });
  }
}
