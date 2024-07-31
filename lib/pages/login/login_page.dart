import 'package:flutter/material.dart';
import 'package:inastagram/generated/assets.dart';

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                key: globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Username'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill field';
                        }
                        else if (value.length < 8) {
                          return 'not correct';
                        }
                        return '';
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill field';
                        }

                        return '';
                      },
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ],
                )),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: const Text('Forgot password?'))),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: () {
                    if (globalKey.currentState!.validate()) {
                      print('welcome');
                    }
                  },
                  child: const Text('Login')),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                ),
                label: const Text('Log in with Facebook')),
            const SizedBox(
              height: 16,
            ),
            const Row(
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
            const Spacer(),
            Text.rich(TextSpan(text: "Don't have an account?", children: [
              WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Sign up'),
                  ))
            ])),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
