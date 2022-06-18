// ignore_for_file: public_member_api_docs, sort_constructors_first
// Olhar o estado por completo
// Estado inicial: como foi iniciado, e depois vai ser o botão como evento
// Processo: tela de loader, que é o primeiro estado
part of 'login_controller.dart';

enum LoginStatus { initial, loading, failure }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMessage;

  const LoginState._({required this.status, this.errorMessage});

  const LoginState.initial() : this._(status: LoginStatus.initial);
  
  @override
  List<Object?> get props => [status, errorMessage];

// CopyWith: Duplica a instância da classe pra uma nova, ao invés do new
  LoginState copyWith({
    LoginStatus? status,
    String? errorMessage,
  }) {
    return LoginState._(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
