import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jobtimer/app/services/auth/auth_service.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  //Camamda de authservice
  final AuthService _authService;

  LoginController({required AuthService authService})
      : _authService = authService, //atribuição para variável privada
        super(const LoginState.initial());

  //recebe o método de login
  Future<void> signIn() async {
    // print('Entrou no sign In');
    // Qual é o próximo state?
    try {
    emit(state.copyWith(status: LoginStatus.loading));
    await _authService.signIn();
    } catch (e, s) {
      log('Erro ao fazer login', error: e, stackTrace: s);
      emit(state.copyWith(
        status:LoginStatus.failure, errorMessage: 'Erro ao fazer login'
        ),
      );
    }
  }
}
