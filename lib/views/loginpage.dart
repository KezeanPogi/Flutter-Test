import 'package:flutter/material.dart';
import 'package:module2_4_lab_exercise/views/Widget/style.dart';
import 'package:module2_4_lab_exercise/views/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    buildSocialButton(dynamic icon, colorVal, final name) => Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(76, 226, 226, 226)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
                color: colorVal,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(name),
            ],
          ),
        );

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 52, vertical: 47),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                child: const CircleAvatar(
                  child: Text('Logo'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              customTextfield(emailController, 'Email', false),
              const SizedBox(
                height: 25,
              ),
              customTextfield(passwordController, 'Password', true),
              const SizedBox(
                height: 40,
              ),
              customElevetedbtn('LOGIN', () {}),
              const SizedBox(
                height: 20,
              ),
              OrDivider(),
              const Text(
                'Login using',
                style: TextStyle(
                  color: Color.fromARGB(200, 0, 0, 0),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: buildSocialButton(Icons.mail, Colors.pink, 'Google'),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child:
                    buildSocialButton(Icons.facebook, Colors.blue, 'Facebook'),
              ),
              const SizedBox(
                height: 20,
              ),
              footerTitle(
                () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
                },
                'Dont Have An Account?',
                'Register',
              ),
            ],
          )),
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          buildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(),
    );
  }
}
