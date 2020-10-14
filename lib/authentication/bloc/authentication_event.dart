part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status, this.jwt);

  final AuthenticationStatus status;
  final String jwt;

  @override
  List<Object> get props => [status, jwt];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {

}
