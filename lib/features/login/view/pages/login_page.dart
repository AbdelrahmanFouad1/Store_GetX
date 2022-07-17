import 'package:flutter/material.dart';
import 'package:store_getx/core/util/widgets/hide_keyboard_page.dart';
import 'package:store_getx/features/login/view/widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: HideKeyboardPage(
          child: LoginWidget(),
        ),
      ),
    );
  }
}
