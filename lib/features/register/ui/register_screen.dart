import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/core/widgets/custom_text_field.dart';
import 'package:delivery_platform/features/register/logic/register_cubit.dart';
import 'package:delivery_platform/features/register/logic/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with TickerProviderStateMixin {
  bool _obscurePassword = true;

  late AnimationController _logoController;
  late Animation<double> _logoScaleAnimation;
  late Animation<Offset> _logoSlideAnimation;

  late AnimationController _formController;
  late Animation<double> _emailFade;
  late Animation<double> _nameFade;
  late Animation<double> _phoneFade;
  late Animation<double> _passwordFade;
  late Animation<double> _buttonFade;

  @override
  void initState() {
    super.initState();

    /// ================= LOGO ANIMATION =================
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    /// Smooth breathing scale
    _logoScaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 0.92, end: 1.0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.05)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50,
      ),
    ]).animate(_logoController);

    /// Floating motion
    _logoSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.02),
      end: const Offset(0, -0.02),
    ).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeInOut,
      ),
    );

    _logoController.repeat(reverse: true);

    /// ================= FORM ANIMATION =================
    _formController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    /// Staggered elegant animation
    _emailFade = CurvedAnimation(
      parent: _formController,
      curve: const Interval(0.0, 0.25, curve: Curves.easeOut),
    );

    _nameFade = CurvedAnimation(
      parent: _formController,
      curve: const Interval(0.15, 0.4, curve: Curves.easeOut),
    );

    _phoneFade = CurvedAnimation(
      parent: _formController,
      curve: const Interval(0.3, 0.55, curve: Curves.easeOut),
    );

    _passwordFade = CurvedAnimation(
      parent: _formController,
      curve: const Interval(0.45, 0.7, curve: Curves.easeOut),
    );

    _buttonFade = CurvedAnimation(
      parent: _formController,
      curve: const Interval(0.7, 1.0, curve: Curves.easeOutBack),
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
                            child: BlocConsumer<RegisterCubit, RegisterState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  registerSuccess: (registerResponse) {
                                    Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      Routes.navbar,
                                          (route) => false,
                                    );
                                  },
                                  registerError: (message) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(message)),
                                    );
                                  },
                                );
                              },
                              builder: (context, state) {
                                final cubit = context.read<RegisterCubit>();
                                final isLoading = state.maybeWhen(
                                  registerLoading: () => true,
                                  orElse: () => false,
                                );

                                return Form(
                                  key: cubit.formKey,
                                  child: Column(
                                    children: [
                                      // Email
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
                                      // Name
                                      FadeTransition(
                                        opacity: _nameFade,
                                        child: CustomTextField(
                                          hintText: "Name",
                                          keyboardType: TextInputType.name,
                                          icon: Icons.person,
                                          controller: cubit.nameController,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      // Phone
                                      FadeTransition(
                                        opacity: _phoneFade,
                                        child: CustomTextField(
                                          hintText: "Phone",
                                          keyboardType: TextInputType.number,
                                          icon: Icons.phone,
                                          controller: cubit.phoneController,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      // Password
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
                                              color: Colors.grey[400],
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _obscurePassword = !_obscurePassword;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
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
                                                cubit.emitRegisterStates();
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
                                              color: Colors.white,
                                            )
                                                : Ink(
                                              decoration: BoxDecoration(
                                                color: AppColors.blue1,
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Register",
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
                                        style: TextStyle(color: Colors.grey[400]),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                            context,
                                            Routes.loginScreen,
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
