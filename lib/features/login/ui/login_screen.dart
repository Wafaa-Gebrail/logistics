import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/core/widgets/custom_text_field.dart';
import 'package:delivery_platform/features/login/logic/login_cubit.dart';
import 'package:delivery_platform/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  bool _obscurePassword = true;

  late AnimationController _logoController;
  late Animation<double> _logoScaleAnimation;
  late Animation<Offset> _logoSlideAnimation;

  late AnimationController _formController;
  late Animation<double> _emailFade;
  late Animation<double> _passwordFade;
  late Animation<double> _buttonFade;

  @override
  void initState() {
    super.initState();

    // Continuous logo animation
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Breathing scale effect
    _logoScaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeInOut,
      ),
    );

    // Subtle floating up/down
    _logoSlideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.02),
      end: const Offset(0, 0.02),
    ).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeInOut,
      ),
    );

    _logoController.repeat(reverse: true);

    // Form fields animation
    _formController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _emailFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _formController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );
    _passwordFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _formController,
        curve: const Interval(0.4, 0.7, curve: Curves.easeIn),
      ),
    );
    _buttonFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _formController,
        curve: const Interval(0.7, 1.0, curve: Curves.easeIn),
      ),
    );

    _formController.forward();
  }

  @override
  void dispose() {
    _logoController.dispose();
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SafeArea(
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        // Logo & Name
                        Expanded(
                          flex: 5,
                          child: SlideTransition(
                            position: _logoSlideAnimation,
                            child: ScaleTransition(
                              scale: _logoScaleAnimation,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.fire_truck_outlined,
                                      size: 80,
                                      color: AppColors.blue1,
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Logist",
                                            style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.black1,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "ics",
                                            style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.blue1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Form
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: BlocConsumer<LoginCubit, LoginState>(
                              listener: (context, state) async {
                                state.whenOrNull(
                                  loginSuccess: (loginResponse) async {

                                    final role = loginResponse.user.role;

                                    if (role == "driver") {
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        Routes.driverNavbar,
                                            (route) => false,
                                      );
                                    } else {
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        Routes.navbar,
                                            (route) => false,
                                      );
                                    }
                                  },

                                  loginError: (message) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(message)),
                                    );
                                  },
                                );
                              },
                              builder: (context, state) {
                                final cubit = context.read<LoginCubit>();
                                final isLoading = state.maybeWhen(
                                  loginLoading: () => true,
                                  orElse: () => false,
                                );

                                return Form(
                                  key: cubit.formKey,
                                  child: Column(
                                    children: [
                                      FadeTransition(
                                        opacity: _emailFade,
                                        child: CustomTextField(
                                          hintText: "Email",
                                          keyboardType: TextInputType.emailAddress,
                                          icon: Icons.email,
                                          controller: cubit.emailController,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      FadeTransition(
                                        opacity: _passwordFade,
                                        child: CustomTextField(
                                          hintText: "Password",
                                          keyboardType: TextInputType.visiblePassword,
                                          icon: Icons.lock,
                                          obscure: _obscurePassword,
                                          controller: cubit.passwordController,
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              _obscurePassword
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: AppColors.black3,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _obscurePassword = !_obscurePassword;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      FadeTransition(
                                        opacity: _buttonFade,
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: isLoading
                                                ? null
                                                : () {
                                              if (cubit.formKey.currentState!.validate()) {
                                                cubit.emitLoginStates();
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              elevation: 6,
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: isLoading
                                                ? const CircularProgressIndicator(
                                              color:  AppColors.white,
                                            )
                                                : Ink(
                                              decoration: BoxDecoration(
                                                color: AppColors.blue1,
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Login",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "don't have an account?",
                                        style: TextStyle(color:  AppColors.black3,),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                            context,
                                            Routes.registerScreen,
                                          );
                                        },
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(color: AppColors.blue1),
                                        ),
                                      ),
                                    ],
                                  ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
