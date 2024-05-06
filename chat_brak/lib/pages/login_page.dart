import 'package:chat_brak/services/auth/auth_service.dart';
import 'package:chat_brak/components/my_button.dart';
import 'package:chat_brak/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailContol = TextEditingController();
  final TextEditingController _pwcontrol = TextEditingController();
  final void Function()? onTa;
  LoginPage({super.key, this.onTa});

  void login(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signInWithEmailPassword(
          _emailContol.text, _pwcontrol.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
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
              "Welcome You have been missed",
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
              height: 35,
            ),
            MyButton(
              text: "Sing In",
              ontap: () => login(context),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? "),
                GestureDetector(
                    onTap: onTa,
                    child: Text(
                      "Register now !",
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
