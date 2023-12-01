import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/ios_top.dart';
import 'package:booka_service_app/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();

  bool _showPasswordSuffixIcon = false;
  bool _showEmailSuffixIcon = false;
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
  }

  final AuthService _auth = AuthService();
  bool isLoading = false;

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
                    left: 16, right: 16, bottom: 12, top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const Center(
                            child: Text(
                              'Signin to Booka',
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            validator: null,
                            autovalidateMode: null,
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
                                          debugPrint('Toggle email visibility');
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
                            obscureText: false,
                            focusNode: _emailFocus,
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
                            controller: _passwordController,
                            validator: (value) {
                              return null;
                            },
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
                                          debugPrint(
                                              'Toggle password visibility');
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
                            obscureText: !_showPassword,
                            focusNode: _passwordFocus,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: kColorWater),
                                  ),
                                ),
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: kColorWater,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (isLoading) {
                          return;
                        }

                        setState(() {
                          isLoading = true;
                        });

                        String email = _emailController.text.trim();
                        String password = _passwordController.text.trim();

                        try {
                          UserCredential? result = await _auth
                              .signInWithEmailAndPassword(email, password);

                          if (result != null && result.user != null) {
                            debugPrint('Sign-in successful');

                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BottomBar(),
                            ));
                          } else {
                            debugPrint('Sign-in failed');
                            // Show Snackbar for sign-in failure
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Sign-in failed. Please check your credentials.'),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                          }
                        } catch (e) {
                          debugPrint('Error signing in: $e');

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Error signing in. Please try again.'),
                              backgroundColor: Colors.redAccent,
                            ),
                          );
                        } finally {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(52),
                          color: kColorWater,
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
                                        : const Text('Sign in',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: kColorClean,
                                            )),
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
            )
          ],
        ),
      ),
    );
  }
}
