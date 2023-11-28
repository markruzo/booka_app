late String email;
late String password;
late String repetePassword;
late String name;
late String address;
late String? street;
late String? houseNumber;
late String? postalCode;

String? validateEmail(String? input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (input == null || input.isEmpty) {
    return 'Enter email';
  } else if (RegExp(emailRegex).hasMatch(input)) {
    email = input;
    return null;
  } else {
    return 'Invalid email';
  }
}

String? validatePassword(String? input) {
  if (input == null || input.isEmpty) {
    return 'Enter password';
  } else if (input.length >= 6) {
    password = input;
    return null;
  } else {
    return 'Invalid password';
  }
}

String? validateRepetePassword(String? input) {
  if (input == null || input.isEmpty) {
    return 'Enter password';
  } else if (input.length >= 6) {
    repetePassword = input;
    return null;
  } else {
    return 'Password does not match';
  }
}

String? validateName(String? input) {
  if (input == null || input.isEmpty) {
    return 'Enter username';
  } else if (input.length >= 6) {
    name = input;
    return null;
  } else {
    return 'Invalid username';
  }
}

String? validateAddress(String? input) {
  if (input == null || input.isEmpty) {
    return 'Enter address';
  } else {
    List<String> addressParts = input.split(',');
    if (addressParts.length == 3) {
      street = addressParts[0].trim();
      houseNumber = addressParts[1].trim();
      postalCode = addressParts[2].trim();
      return null;
    } else {
      return 'Street, Number, Postal Code';
    }
  }
}
