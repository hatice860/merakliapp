import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_dropdown_menu.dart';
import 'package:flutter_merakli/core/components/custom_elevated_button.dart';
import 'package:flutter_merakli/core/components/custom_textfield.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/core/constants/phone_number_formatters.dart';
import 'package:flutter_merakli/service/auth.dart';
import 'package:flutter_merakli/view/login/login_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final AuthService _authService = AuthService();
  bool isChecked = false;
  DateTime? selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const CustomAppbar(
            title: "",
          ).preferredSize,
          child: const CustomAppbar(title: "Meraklı")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: [
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Hesap Oluştur",
              style: AppTextStyle.ArialText(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: CustomTextField(
                controller: _nameController,
                hintText: "İsim Soyisim",
                hintStyle: AppTextStyle.ArialText(context).copyWith(
                    color: const Color(0xFF258661),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Color(0xFFBCE0FD))),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12),
                  child: Text(
                    "Isim Soyisim",
                    style: AppTextStyle.AeonikRegular(context)
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: CustomTextField(
                controller: _emailController,
                hintText: "hesap@mail.com",
                hintStyle: AppTextStyle.ArialText(context).copyWith(
                    color: const Color(0xFF258661),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Color(0xFFBCE0FD))),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12),
                  child: Text(
                    "E-mail",
                    style: AppTextStyle.AeonikRegular(context)
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: CustomTextField(
                controller: _phoneController,
                inputFormatters: [
                  FilteringTextInputFormatter
                      .digitsOnly, // Sadece rakamları kabul eder
                  LengthLimitingTextInputFormatter(10),
                  PhoneNumberFormatter() // En fazla 10 karakter (bir telefon numarası) kabul eder
                ],
                keyboardType: TextInputType
                    .phone, // Sadece telefon numarası formatı için klavye kullanılmasını sağlar
                hintText: "0555 555 55 55",
                hintStyle: AppTextStyle.ArialText(context).copyWith(
                    color: const Color(0xFF258661),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Color(0xFFBCE0FD))),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12),
                  child: Text(
                    "Telefon",
                    style: AppTextStyle.AeonikRegular(context)
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: CustomTextField(
                controller: _passwordController,
                obscureText: true,
                hintText: "Şifre",
                hintStyle: AppTextStyle.ArialText(context).copyWith(
                    color: const Color(0xFF258661),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Color(0xFFBCE0FD))),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12),
                  child: Text(
                    "Sifre",
                    style: AppTextStyle.AeonikRegular(context)
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                )),
          ),
          Row(
            children: [
              CustomDropdownMenu(
                list: const ['Cinsiyet', 'Kadın', 'Erkek', 'Diğer'],
              ),
              const Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFBCE0FD)),
                  elevation: 0,
                  backgroundColor: const Color(0xFFFFFFFF),
                ),
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDate!,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(3000));

                  if (dateTime != null) {
                    setState(() {
                      selectedDate = dateTime;
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      selectedDate != null
                          ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                          : "Doğum Tarihi",
                      style: AppTextStyle.ArialText(context).copyWith(
                          color: const Color(0xFF258661),
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                    activeColor: AppColor.splashTextColor,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Kullanıcı Sözleşmesi",
                      style: AppTextStyle.ArialText(context)
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: CustomElevatedButton(
              onPressed: () {
                _authService
                    .createPerson(
                        _emailController.text, _passwordController.text)
                    .then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Kayıt başarıyla tamamlandı.'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                                    return Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()));

                }).catchError((error) {
                  print('Kayıt sırasında hata oluştu: $error');
                });
              },
              text: "Kayıt Ol",
            ),
          )
        ],
      ),
    );
  }
}
