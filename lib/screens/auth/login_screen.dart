import 'package:flutter/material.dart';
import '../../ui-elements/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Color(Colours.dark)),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(Colours.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Spacing.size32),
                        topRight: Radius.circular(Spacing.size32))),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Spacing.size32,
                      left: Spacing.size16,
                      right: Spacing.size16),
                  child: Column(
                    children: [
                      FormInput(
                        label: "Username",
                        placeholder: "Jhon Doe",
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: Spacing.size24,
                      ),
                      FormInput(
                        label: "Password",
                        placeholder: "Password",
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: Spacing.size24,
                      ),
                      const Button(
                        label: "Add new todo",
                        variant: ButtonVariant.primary,
                        size: ButtonSize.md,
                      ),
                      SizedBox(
                        height: Spacing.size24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const UIText(
                            text: "Don't have an account yet?",
                          ),
                          SizedBox(width: Spacing.size4),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0)),
                            child: const Text('Create account'),
                          )
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: Spacing.size32),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: const Text(
                              "TIMELIN",
                              style: TextStyle(color: Color(Colours.p100)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
