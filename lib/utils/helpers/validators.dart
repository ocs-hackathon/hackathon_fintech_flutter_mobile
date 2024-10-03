abstract class Validator {
  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return "Please enter your email";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      return "Please enter a valid email officer@qena.dev";
    }
    return null;
  }

  static String? phoneNumberValidator(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return "Please enter phone number";
    } else if (!RegExp(r"^[79]\d{8}$").hasMatch(phoneNumber)) {
      return "Please enter a valid phone number\nExample: +251 912 345 678";
    }
    return null;
  }

  static String? intNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    final parsedNumber = int.tryParse(value);
    if (parsedNumber == null ||
        parsedNumber < 0 ||
        parsedNumber != double.parse(value)) {
      return 'Please enter a valid positive integer';
    }
    return null;
  }

  static String? nameValidator(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter text";
    } else if (!RegExp(r"^([A-Za-z]+)*\s*$").hasMatch(text)) {
      return "Please enter only letters without numbers or special characters";
    }
    return null;
  }

  static String? requiredNameValidator(String? text) {
    if (text == null || text.isEmpty) {
      return "Please enter text";
    } else if (!RegExp(r"^[A-Za-z]+(\s+[A-Za-z]+)*\s*$").hasMatch(text)) {
      return "Please enter only letters without numbers or special characters";
    }
    return null;
  }

  static String? requiredValidator(String? name) {
    if (name == null || name.isEmpty) {
      return "This Field is required";
    }
    return null;
  }

  static String? dateTimeValidator(DateTime? date) {
    if (date == null) {
      return "Please select a date";
    }
    return null;
  }

  static String? fileValidator(String? filePath) {
    if (filePath == null || filePath.isEmpty) {
      return "Please select a file";
    }
    return null;
  }

  static String? requiredDynamicValidator(dynamic data) {
    if (data == null) {
      return "Please Fill This field";
    }
    return null;
  }

  static String? createPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password.';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }

  static String? confirmPasswordValidator(String? value, String? mainPassword) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password.';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    } else if (mainPassword != null && mainPassword != value) {
      return 'Passwords do not match';
    }
    return null;
  }
}
