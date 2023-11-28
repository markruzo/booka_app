import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/utils/validator.dart';
import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/ios_top.dart';
import 'package:booka_service_app/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _userNameFocus = FocusNode();

  final AuthService _auth = AuthService();

  String? Function(String?)? validator;
  AutovalidateMode? autovalidateMode;

  bool isLoading = false;
  bool isChecked = false;

  bool _showPasswordSuffixIcon = false;
  bool _showEmailSuffixIcon = false;
  bool _showUserNameSuffixIcon = false;
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() {
      setState(() {
        _showEmailSuffixIcon = _emailFocus.hasFocus;
      });
    });

    _passwordFocus.addListener(() {
      setState(() {
        _showPasswordSuffixIcon = _passwordFocus.hasFocus;
      });
    });

    _userNameFocus.addListener(() {
      setState(() {
        _showUserNameSuffixIcon = _userNameFocus.hasFocus;
      });
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _saveUserDataToFirestore(
    String fullname,
    String email,
    String address,
    String phone,
  ) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference users = firestore.collection('users');

    users.add({
      'username': fullname,
      'email': email,
      'address': address,
      'phone': phone,
    }).then((value) {
      debugPrint("User data added: $fullname, $email, $address, $phone");
    }).catchError((error) {
      debugPrint("Failed to add user data to Firestore: $error");
    });
  }

  void _onFormSubmit() {
    // Is on Button
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String email = _emailController.text;

      String address = "User's Address"; // _userAddressController.text
      String phone = "User's Phone"; // _userPhoneController.text

      _saveUserDataToFirestore(username, email, address, phone);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IosTop(
              leftIcon: 'assets/icons/svg/x24/line/s-left.svg',
              onLeftIconTap: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                  top: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const Center(
                            child: Text(
                              'Let\'s get started!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kColorBlack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'My Full name is',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kColorBlack,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Form(
                              key: _formKey,
                              child: TextFormField(
                                controller: _usernameController,
                                focusNode: _userNameFocus,
                                validator: validateName,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: kColorBlack.withOpacity(0.3),
                                  ),
                                  suffixIcon: _showUserNameSuffixIcon
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 12),
                                          child: GestureDetector(
                                            onTap: () {
                                              _usernameController.clear();
                                              debugPrint('Username');
                                            },
                                            child: SvgPicture.asset(
                                              'assets/icons/svg/x24/line/close-circle.svg',
                                              colorFilter: ColorFilter.mode(
                                                kColorBlack.withOpacity(0.2),
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        )
                                      : null,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 12),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        const BorderSide(color: kColorWater),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kColorBlack.withOpacity(0.3)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.redAccent),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.redAccent),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'My Email is',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kColorBlack,
                              ),
                            ),
                            const SizedBox(height: 6),
                            TextFormField(
                              focusNode: _emailFocus,
                              validator: validateEmail,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: kColorBlack.withOpacity(0.3)),
                                suffixIcon: _showEmailSuffixIcon
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 12),
                                        child: GestureDetector(
                                          onTap: () {
                                            _emailController.clear();
                                            debugPrint('Email');
                                          },
                                          child: SvgPicture.asset(
                                            'assets/icons/svg/x24/line/close-circle.svg',
                                            colorFilter: ColorFilter.mode(
                                              kColorBlack.withOpacity(0.2),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                      )
                                    : null,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: kColorWater),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kColorBlack.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorStyle:
                                    const TextStyle(color: Colors.redAccent),
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'My Password is',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kColorBlack,
                              ),
                            ),
                            const SizedBox(height: 6),
                            TextFormField(
                              obscureText: !_showPassword,
                              focusNode: _passwordFocus,
                              controller: _passwordController,
                              validator: validatePassword,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: kColorBlack.withOpacity(0.3)),
                                suffixIcon: _showPasswordSuffixIcon
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 12,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _showPassword = !_showPassword;
                                            });
                                            debugPrint('Password visibility');
                                          },
                                          child: SvgPicture.asset(
                                            _showPassword
                                                ? 'assets/icons/svg/x24/line/eye.svg'
                                                : 'assets/icons/svg/x24/line/eye-off.svg',
                                            colorFilter: ColorFilter.mode(
                                              kColorBlack.withOpacity(0.2),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                      )
                                    : null,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: kColorWater),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kColorBlack.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorStyle:
                                    const TextStyle(color: Colors.redAccent),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              height: 32,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked;
                                      });
                                    },
                                    child: SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: Center(
                                        child: isChecked
                                            ? SvgPicture.asset(
                                                'assets/icons/svg/x24/fill/checkbox_check.svg',
                                                height: 20,
                                                width: 20,
                                              )
                                            : SvgPicture.asset(
                                                'assets/icons/svg/x24/line/checkbox.svg',
                                                height: 20,
                                                width: 20,
                                                colorFilter: ColorFilter.mode(
                                                  kColorBlack.withOpacity(0.3),
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: kColorBlack,
                                      ),
                                      text: 'I agree to the ',
                                      children: [
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {},
                                          text: 'terms and conditions',
                                          style: const TextStyle(
                                            color: kColorWater,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: isChecked
                          ? () async {
                              // Save Username on Firestore
                              _onFormSubmit();

                              if (isLoading) {
                                return;
                              }

                              setState(() {
                                isLoading = true;
                              });

                              String email = _emailController.text.trim();
                              String password = _passwordController.text.trim();

                              try {
                                UserCredential? result =
                                    await _auth.createUserWithEmailAndPassword(
                                        email, password);

                                if (result != null && result.user != null) {
                                  debugPrint('Account created successfully');

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const BottomBar()));
                                } else {
                                  debugPrint('Account creation failed');
                                }
                              } catch (e) {
                                debugPrint('Error creating account: $e');
                              } finally {
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            }
                          : null,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(52),
                          color: isChecked ? kColorWater : kColorDisabled,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: Align(
                                    child: isLoading
                                        ? const CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              kColorClean,
                                            ),
                                          )
                                        : Text(
                                            'Sign up',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: isChecked
                                                  ? kColorClean
                                                  : kColorClean,
                                            ),
                                          ),
                                  ),
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
          ],
        ),
      ),
    );
  }
}
