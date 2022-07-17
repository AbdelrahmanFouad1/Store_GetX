import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_getx/core/models/select_government_model.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';
import 'package:store_getx/core/util/widgets/logo.dart';
import 'package:store_getx/core/util/widgets/my_button.dart';
import 'package:store_getx/core/util/widgets/my_form.dart';
import 'package:store_getx/features/register/controller/register_controller.dart';

class RegisterWidget extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController(), permanent: true);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: responsiveValue(
          context,
          16.0,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    children: [
                      const AppLogo(),
                      Text(
                        'registerUserHead'.tr,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                space40Vertical(context),
                MyForm(
                  isPassword: false,
                  type: TextInputType.name,
                  error: 'fullNameError'.tr,
                  controller:
                  controller.registerUserFullNameController,
                  label: 'fullName'.tr,
                ),
                space8Vertical(context),
                MyForm(
                  isPassword: false,
                  type: TextInputType.phone,
                  error: 'mobileNumberError'.tr,
                  controller:
                  controller.registerUserMobileController,
                  label: 'mobileNumber'.tr,
                ),
                space8Vertical(context),
                MyForm(
                  isPassword: false,
                  type: TextInputType.text,
                  error: 'addressError'.tr,
                  controller:
                  controller.registerUserAddressController,
                  label: 'address'.tr,
                ),
                space8Vertical(context),
                MyForm(
                  isPassword: false,
                  type: TextInputType.emailAddress,
                  error: 'emailAddressError'.tr,
                  controller: controller.registerUserEmailAddressController,
                  label: 'emailAddress'.tr,
                ),
                space8Vertical(context),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'government'.tr,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    space8Vertical(context),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        border: Border.all(
                          color: ColorManager.darkGrey,
                          width: 1.0,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: responsiveValue(
                          context,
                          16.0,
                        ),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Get.isDarkMode
                              ? ColorManager.scaffoldBackgroundDark
                              : ColorManager.regularGrey,
                        ),
                        child: GetBuilder<RegisterController>(
                          init: RegisterController(),
                          builder: (controller) => DropdownButton<SelectGovernmentModel>(
                            value: controller.selectedGovernment,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              color:  Get.isDarkMode
                                  ? ColorManager.regularGrey
                                  : ColorManager.primaryColor,
                            ),
                            onChanged: (SelectGovernmentModel? newValue) {
                              controller.changeSelectedGovernment(
                                value: newValue!,
                              );
                            },
                            isExpanded: true,
                            underline: Container(),
                            items: cities
                                .map<DropdownMenuItem<SelectGovernmentModel>>(
                                  (value) {
                                return DropdownMenuItem<SelectGovernmentModel>(
                                  value: value,
                                  child: GetBuilder<RegisterController>(
                                    builder: (controller) {
                                      return Text(
                                        Get.locale == 'ar' ? value.titleAr : value.titleEn,
                                      );
                                    },
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                space8Vertical(context),
                MyForm(
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  error: 'passwordError'.tr,
                  controller:
                  controller.registerUserPasswordController,
                  label: 'password'.tr,
                ),
                space8Vertical(context),
                MyForm(
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  error: 'confirmPasswordError'.tr,
                  controller:controller.registerUserConfirmPasswordController,
                  label: 'confirmPassword'.tr,
                ),
                space40Vertical(context),
                MyButton(
                  // isLoading: state is UserRegisterLoading,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // FocusScope.of(context).requestFocus(FocusNode());
                      // navigateAndFinish(context, const MainPage());
                    }
                  },
                  text: 'registerNow'.tr,
                ),

                space40Vertical(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
