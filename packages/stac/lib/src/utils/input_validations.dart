enum InputValidationType {
  isEmail,
  isName,
  isPassword,
  isNotEmpty,
  compare,
  general;

  RegExp get _emailRegExp => RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  RegExp get _nameRegExp => RegExp(r"^[A-Za-z .`'/-]{2,32}$");
  RegExp get _passwordRegExp => RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$!%*?&])[A-Za-z\d@#$%^&£*\-_+=[\]{}|\\:,?\/`~""()<>;!]*$');
  RegExp get _isNotEmptyRegExp => RegExp("^[0-9a-zA-Z .`'/-]{1,50}\$");

  bool validate(String value, String rule, {String? compareValue}) {
    switch (this) {
      case InputValidationType.isEmail:
        return _emailRegExp.hasMatch(value);

      case InputValidationType.isName:
        return _nameRegExp.hasMatch(value);

      case InputValidationType.isPassword:
        return _passwordRegExp.hasMatch(value);

      case InputValidationType.isNotEmpty:
        return _isNotEmptyRegExp.hasMatch(value);

      case InputValidationType.compare:
        return value == compareValue;

      default:
        return RegExp(rule).hasMatch(value);
    }
  }
}
