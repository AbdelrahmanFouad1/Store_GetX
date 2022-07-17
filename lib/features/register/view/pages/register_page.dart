import 'package:flutter/material.dart';
import 'package:store_getx/core/util/widgets/back_scaffold.dart';
import 'package:store_getx/core/util/widgets/hide_keyboard_page.dart';
import 'package:store_getx/features/register/view/widgets/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackScaffold(
      body: Scaffold(
        body: SafeArea(
          child: HideKeyboardPage(
            child: RegisterWidget(),
          ),
        ),
      ),
    );
  }
}
