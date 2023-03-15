bool isEmailValid(String value) {
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
}

bool isPhoneNumberValid(String value) {
  return RegExp(r'^\d{7,14}$').hasMatch(value);
}

bool isMinLengthValid(String value, int minLenght) {
  return value.length >= minLenght;
}

bool isMaxLengthValid(String value, int minLenght) {
  return value.length <= minLenght;
}

bool areTwoStringsEqual(String a, String b) {
  return a.startsWith(b) && a.length == b.length;
}
