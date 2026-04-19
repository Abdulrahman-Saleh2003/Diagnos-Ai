enum SignUpStatus { initial, loading, success, error }


class PatientRegistrationState {




  final SignUpStatus status;

  final String selectedGender;
  final double weight;
  final bool isLoading;
  final bool registrationSuccess;

  const PatientRegistrationState({
    this.status = SignUpStatus.initial,

    this.selectedGender = 'Male',
    this.weight = 75.0,
    this.isLoading = false,
    this.registrationSuccess = false,
  });

  PatientRegistrationState copyWith({
    SignUpStatus? status,

    String? selectedGender,
    double? weight,
    bool? isLoading,
    bool? registrationSuccess,
  }) {
    return PatientRegistrationState(
      selectedGender: selectedGender ?? this.selectedGender,
      weight: weight ?? this.weight,
      isLoading: isLoading ?? this.isLoading,
      registrationSuccess: registrationSuccess ?? this.registrationSuccess,
    );
  }
}
