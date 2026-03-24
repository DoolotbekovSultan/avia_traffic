class Validator {
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите номер телефона';
    }
    // Simple check for phone length/format
    final cleanPhone = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (cleanPhone.length < 9) {
      return 'Неверный формат телефона';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите пароль';
    }
    if (value.length < 6) {
      return 'Пароль должен быть не менее 6 символов';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите имя';
    }
    return null;
  }

  static String? validateConfirmPassword(
    String? password,
    String? confirmPassword,
  ) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Повторите пароль';
    }
    if (password != confirmPassword) {
      return 'Пароли не совпадают';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Email is optional in some cases
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Неверный формат email';
    }
    return null;
  }

  static String? validateCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите код подтверждения';
    }
    if (value.length != 6) {
      return 'Код должен состоять из 6 цифр';
    }
    final codeRegex = RegExp(r'^\d{6}$');
    if (!codeRegex.hasMatch(value)) {
      return 'Код должен содержать только цифры';
    }
    return null;
  }
}
