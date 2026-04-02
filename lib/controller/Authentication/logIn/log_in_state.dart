
class LogInState {
  final String phone;
  final String password;
  final bool isObscure;
  final bool isLoading;
  final String? errorMessage;
  final bool isSuccess;

  const LogInState({
    this.phone = '',
    this.password = '',
    this.isObscure = true,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  LogInState copyWith({
    String? phone,
    String? password,
    bool? isObscure,
    bool? isLoading,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return LogInState(
      phone: phone ?? this.phone,
      password: password ?? this.password,
      isObscure: isObscure ?? this.isObscure,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  bool get isFormValid => phone.trim().length >= 9 && password.trim().isNotEmpty;
}