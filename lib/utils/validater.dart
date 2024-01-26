class TValidater {
  static String? validEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    final emailExp = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailExp.hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validPassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }

    if (password.length > 15) {
      return 'Password must be less than 15 characters';
    }

    if (password.contains(' ')) {
      return 'Password must not contain spaces';
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }
}
