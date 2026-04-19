
enum HomeStatus { initial, loading, success, error }

class HomeState {
  final int currentIndex;
  final HomeStatus status;

  const HomeState({
    this.currentIndex = 0,
    this.status = HomeStatus.initial,
  });

  HomeState copyWith({
    int? currentIndex,
    HomeStatus? status,
  }) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
      status: status ?? this.status,
    );
  }
}