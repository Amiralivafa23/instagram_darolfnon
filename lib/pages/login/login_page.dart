import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inastagram/generated/assets.dart';
import 'package:inastagram/pages/home_page/home_page.dart';

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> loginForm = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();

  String email = '';

  @override
  Widget build(BuildContext context) {
    bool _keyboardVisible = MediaQuery.of(context).viewInsets.bottom == 0;

    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
                width: mediaQuery.width / 1.5,
                child: Image.asset(Assets.assetsInstagramLogo)),
            const SizedBox(
              height: 32,
            ),
            Form(
              key: loginForm,
              child: Column(
                children: [
                  TextFormField(
                    controller: userNameController,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(hintText: 'Username'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your username';
                      } else if (value.length <= 4) {
                        return 'username is not correct';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length <= 4) {
                        return 'username is not correct';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _keyboardVisible,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text('Forgot password?'))),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: () {
                    if (loginForm.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              email: email,
                            ),
                          ));
                    }
                  },
                  child: const Text('Login')),
            ),
            const SizedBox(
              height: 16,
            ),
            Visibility(
              visible: _keyboardVisible,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                  ),
                  label: const Text('Log in with Facebook')),
            ),
            const SizedBox(
              height: 16,
            ),
            Visibility(
              visible: _keyboardVisible,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: Divider()),
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: Text(
                        'OR',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.grey),
                      ))),
                  Expanded(flex: 2, child: Divider()),
                ],
              ),
            ),
            const Spacer(),
            Visibility(
              visible: _keyboardVisible,
              child: Text.rich(TextSpan(text: "Don't have an account?", children: [
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign up'),
                    ))
              ])),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
