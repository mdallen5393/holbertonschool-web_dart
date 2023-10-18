class Password {
  String? password;

  bool isValid() {
    if (password == null) return false;
    if (password!.length < 8 || password!.length > 16) return false;
    if (!password!.contains(new RegExp(r'[A-Z]'))) return false;
    if (!password!.contains(new RegExp(r'[a-z]'))) return false;
    if (!password!.contains(new RegExp(r'[0-9]'))) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: ${password ?? "not set"}';
  }
}
