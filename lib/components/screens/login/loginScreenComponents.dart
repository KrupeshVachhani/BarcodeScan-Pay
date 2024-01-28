import 'package:barcodescanner/components/screens/singup/signup.dart';
import 'package:barcodescanner/constants/color.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//password input field
class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: "Password",
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}

//
//
//

//email input field
class EmailInputField extends StatelessWidget {
  const EmailInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        labelText: "E-mail",
      ),
    );
  }
}

//
//
//

//google login button
class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? TColors.darkGrey : TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconLg,
              height: TSizes.iconLg,
              image: AssetImage('assets/google.png'),
            ),
          ),
        ),
      ],
    );
  }
}

//
//
//

class OrSignInDivider extends StatelessWidget {
  const OrSignInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: TColors.darkGrey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          'Or Sign in with',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: TColors.darkGrey,
                fontSize: TSizes.md - 3,
              ),
        ),
        const Flexible(
          child: Divider(
            color: TColors.darkGrey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

//
//
//

class CreateAnAccountButton extends StatelessWidget {
  const CreateAnAccountButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => Get.to(() => SignUpPage()),
          child: Text(
            'Create an account',
            style: TextStyle(color: dark ? TColors.white : TColors.black),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: dark ? TColors.black : TColors.white,
          )),
    );
  }
}

//
//
//

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Sign in'),
      ),
    );
  }
}

//
//
//

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text('Forget Password'),
    );
  }
}

//
//
//

class RememberMeCheckBox extends StatelessWidget {
  const RememberMeCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //checkbox remember me
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        Text(
          'Remember me',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

//
//
//

