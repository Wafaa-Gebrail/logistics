import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/dio_factory.dart';
import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:delivery_platform/features/register/data/model/register_request_body.dart';
import 'package:delivery_platform/features/register/data/repo/register_repo.dart';
import 'package:delivery_platform/features/register/logic/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        phone: phoneController.text,
      ),
    );
    response.when(success: (registerResponse) async{
      // Save Token
      await saveUserToken(registerResponse.token);
      print("token saved");

      // Save user data
      await saveUserData(
        registerResponse.user.name,
        registerResponse.user.role,
      );
      print("Name: ${registerResponse.user.name}");
      print("Role: ${registerResponse.user.role}");

      emit(RegisterState.registerSuccess(registerResponse));
    }, failure: (error) {
      print("Register Failed: ${error.apiErrorModel.message}");
      emit(RegisterState.registerError(
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
    await SecureStorageHelper.write('name', name);
    await SecureStorageHelper.write('role', role);
  }

}