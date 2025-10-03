import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/widgets/coustom_app_bar.dart';
import 'package:bookia/core/widgets/coustom_buttom.dart';
import 'package:bookia/core/widgets/coustom_text_form_field.dart';
import 'package:bookia/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia/feature/auth/presentation/ui/register/register_screen.dart';
import 'package:bookia/feature/home/presentation/ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29),
              Text(
                "Welcome back! Glad\nto see you, Again!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 32),
              CoustomTextFormField(
                controller: emailController,
                hintText: 'Enter your email',
              ),
              SizedBox(height: 15),
              CoustomTextFormField(
                controller: passwordController,
                hintText: 'Enter your password',
                isPassword: true,
              ),
              SizedBox(height: 13),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkgrayColor,
                  ),
                ),
              ),
              SizedBox(height: 30),

              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is LoginLodingState) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is LoginErrorState) {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(content: Text(state.errorMassage)),
                    );
                  } else if (state is LoginSuccessState) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (builder) => HomeScreen()),
                      (e) => false,
                    );
                  }
                },
                child: CoustomButtom(
                  titel: "Login",
                  onTap: () {
                    context.read<AuthCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },
                ),
              ),
              SizedBox(height: 34),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.borderColor,
                      endIndent: 10,

                      thickness: 2,
                    ),
                  ),

                  Text(
                    "Or Login with",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkgrayColor,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.borderColor,
                      indent: 10,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21),
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/googel.svg"),
                    SizedBox(width: 10),
                    Text(
                      "Sign in with Google",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkgrayColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/appel.svg"),
                    SizedBox(width: 10),
                    Text(
                      "Sign in with Apple",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkgrayColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => AuthCubit(),
                        child: RegisterScreen(),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account?",
                          style: TextStyle(
                            color: AppColors.darkColor,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "Register Now",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
