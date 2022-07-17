import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';
import 'package:store_getx/core/util/resources/routes_manager.dart';
import 'package:store_getx/core/util/widgets/logo.dart';
import 'package:store_getx/core/util/widgets/my_button.dart';
import 'package:store_getx/core/util/widgets/my_form.dart';
import 'package:store_getx/features/login/controller/login_controller.dart';


class LoginWidget extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller =  Get.put(LoginController(), permanent: true);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: responsiveValue(context, 16.0,),),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: AlignmentDirectional.center,
                child: AppLogo(),
              ),
              space40Vertical(context),
              Text(
                'loginHead'.tr,
                style: Theme
                    .of(context)
                    .textTheme
                    .headline6,
              ),
              space40Vertical(context),
              MyForm(
                isPassword: false,
                type: TextInputType.emailAddress,
                error: 'emailAddressError'.tr,
                controller: controller.loginEmailController,
                label: 'emailAddress'.tr,
              ),
              space8Vertical(context),
              MyForm(
                isPassword: true,
                type: TextInputType.visiblePassword,
                error: 'passwordError'.tr,
                controller: controller.loginPasswordController,
                label: 'password'.tr,
              ),
              space40Vertical(context),
              MyButton(
                // isLoading: state is UserLoginLoading,
                onPressed: () {
                  // if (formKey.currentState!.validate()) {
                  //   FocusScope.of(context).requestFocus(FocusNode());
                  //   AppCubit.get(context).userLogin();
                  // }
                },
                text: 'loginHead'.tr,
              ),
              space10Vertical(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   'donNotHaveAccount'.tr,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(
                      color: Get.isDarkMode
                          ? ColorManager.whiteColor
                          : ColorManager.secondaryColor,
                      fontSize: responsiveValue(context, 14.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.register);
                    },
                    child: Text(
                     'registerNow'.tr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      Theme
                          .of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(
                        color: ColorManager.primaryColor,
                        fontSize: responsiveValue(context, 13.0),
                      ),
                    ),
                  ),
                ],
              ),
              space10Vertical(context),
            ],
          ),
        ),
      ),
    );
  }
}
