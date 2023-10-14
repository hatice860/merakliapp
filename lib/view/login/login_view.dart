import 'package:flutter/Material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_elevated_button.dart';
import 'package:flutter_merakli/core/components/custom_textfield.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/service/auth.dart';
import 'package:flutter_merakli/view/home/home_view.dart';
import 'package:flutter_merakli/view/login/signup_view.dart';
import 'package:svg_flutter/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: CustomAppbar(
            title: "",
          ).preferredSize,
          child: CustomAppbar(title: "Meraklı")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Hesabınız Yok mu?",
                style: AppTextStyle.interTight(context),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupView()));
                },
                child: Text(
                  "Üye Olun!",
                  style: AppTextStyle.interTight(context),
                ),
              ),
              Image.asset(Assets.image.imLinePNG),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: CustomTextField(
              controller: _emailController,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Color(0xFFC4CDD5))),
              hintText: "kullanici@mail.com",
              hintStyle: AppTextStyle.interTight(context)
                  .copyWith(color: const Color(0xFFC4CDD5), fontSize: 20),
              leading: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: SvgPicture.asset(
                    Assets.icon.icUserSVG,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
            child: CustomTextField(
              controller: _passwordController,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Color(0xFFC4CDD5))),
              obscureText: isObscure,
              hintText: "Şifre",
              hintStyle: AppTextStyle.interTight(context)
                  .copyWith(color: const Color(0xFFC4CDD5), fontSize: 20),
              leading: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(Assets.icon.icLockSVG),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: isObscure
                    ? SvgPicture.asset(Assets.icon.icEyeBlocked)
                    : const Icon(Icons.visibility),
              ),
              suffix: InkWell(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(isObscure ? 'Şifreyi Göster' : 'Şifreyi Gizle'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CustomElevatedButton(
              onPressed: () {
                _authService.SignIn(
                        _emailController.text, _passwordController.text)
                    .then((value) {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                });
              },
              text: "Giris Yap",
            ),
          )
        ],
      ),
    );
  }
}
