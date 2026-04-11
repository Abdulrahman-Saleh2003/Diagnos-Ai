
class LoginState {
  final String selectedType;
  final String countryCode;
  final bool isPasswordVisible;
  final bool isLoading;
  final bool loginSuccess;

  const LoginState({
    this.selectedType = 'email',
    this.countryCode = '+966',
    this.isPasswordVisible = true,
    this.isLoading = false,
    this.loginSuccess = false,
  });

  LoginState copyWith({
    String? selectedType,
    String? countryCode,
    bool? isPasswordVisible,
    bool? isLoading,
    bool? loginSuccess,
  }) {
    return LoginState(
      selectedType: selectedType ?? this.selectedType,
      countryCode: countryCode ?? this.countryCode,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isLoading: isLoading ?? this.isLoading,
      loginSuccess: loginSuccess ?? this.loginSuccess,
    );
  }
}