import 'package:barcodescanner/constants/color.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserNameInputFieldS extends StatelessWidget {
  const UserNameInputFieldS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Username",
        prefixIcon: const Icon(Iconsax.user),
      ),
    );
  }
}

//
//
//

class PhoneNumberInputFieldS extends StatelessWidget {
  const PhoneNumberInputFieldS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Phone Number",
        prefixIcon: const Icon(Iconsax.call),
      ),
    );
  }
}

//
//
//

class OrSignInDividerS extends StatelessWidget {
  const OrSignInDividerS({
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

class EmailInputFieldS extends StatelessWidget {
  const EmailInputFieldS({
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

class PasswordInputFieldS extends StatefulWidget {
  const PasswordInputFieldS({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputFieldS> {
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

class TermsAndConditionS extends StatelessWidget {
  const TermsAndConditionS({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
            activeColor: TColors.primary,
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "I agree to the ",
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: "Terms and Conditions",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                  ),
            ),
            TextSpan(
                text: " and ", style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: "Terms of Use",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                  ),
            ),
          ]),
        ),
      ],
    );
  }
}

//
//
//

class GoogleLoginButtonS extends StatelessWidget {
  const GoogleLoginButtonS({
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
