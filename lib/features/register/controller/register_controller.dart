import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_getx/core/models/select_government_model.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';

class RegisterController extends GetxController {
  final registerUserFullNameController = TextEditingController();
  final registerUserIdController = TextEditingController();
  final registerUserMobileController = TextEditingController();
  final registerUserAddressController = TextEditingController();
  final registerUserEmailAddressController = TextEditingController();
  final registerUserPasswordController = TextEditingController();
  final registerUserConfirmPasswordController = TextEditingController();

  SelectGovernmentModel selectedGovernment = cities[0];

  void changeSelectedGovernment({
    required SelectGovernmentModel value,
  }) {
    selectedGovernment = value;
    update();
  }
}