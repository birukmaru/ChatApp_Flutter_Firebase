import 'package:chat_brak/services/auth/auth_service.dart';
import 'package:chat_brak/components/my_button.dart';
import 'package:chat_brak/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailContol = TextEditingController();
  final TextEditingController _pwcontrol = TextEditingController();
  final TextEditingController _cpwcontrol = TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key, this.onTap});

  void register(BuildContext context) {
    // get auth service
    final _auth = AuthService();

    // passwords match -> create user
    if (_pwcontrol.text == _cpwcontrol.text) {
      try {
        _auth.signUpwithEmailPassword(_emailContol.text, _pwcontrol.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(title: Text(e.toString())));
      }
    } else {
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(title: Text("Password do not match!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Welcome, Let's create an account for you",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.tertiary),
            ),
            MyTextField(
              hint: "User Name",
              control: _emailContol,
              obscure: false,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              control: _pwcontrol,
              obscure: true,
              hint: "Password",
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              control: _cpwcontrol,
              obscure: true,
              hint: "Confirm Password",
            ),
            SizedBox(
              height: 35,
            ),
            MyButton(
              text: "Sing Up",
              ontap: () => register(context),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login now !",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
