import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/dio_factory.dart';
import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:delivery_platform/features/login/data/model/login_request_body.dart';
import 'package:delivery_platform/features/login/data/repo/login_repo.dart';
import 'package:delivery_platform/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (authResponse) async{
      // Save Token
      await saveUserToken(authResponse.token);
      print("token saved");

      // Save user data
      await saveUserData(
        authResponse.user.name,
        authResponse.user.role,
      );
      print("Name: ${authResponse.user.name}");
      print("Role: ${authResponse.user.role}");


      emit(LoginState.loginSuccess(authResponse));
    }, failure: (error) {
      print("Login Failed: ${error.apiErrorModel.message}");
      emit(LoginState.loginError(
        error: error.apiErrorModel.message ?? 'Something went wrong',
      ));
    });
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> saveUserToken(String token) async {
    // Save token to secure storage
    await SecureStorageHelper.write('token', token);

    // Optional: set token for Dio headers
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  Future<void> saveUserData(String name, String role) async {
    // Save token to secure storage
    await SecureStorageHelper.write('userName', name);
    await SecureStorageHelper.write('role', role);
  }

}