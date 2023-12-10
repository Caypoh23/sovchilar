sealed class MainEvent {}

class OnItemPressed extends MainEvent {
  int newIndex;

  OnItemPressed({required this.newIndex});
}
