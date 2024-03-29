part of 'home_items_bloc.dart';

@immutable
sealed class HomeItemsState {}

final class HomeItemsInitial extends HomeItemsState {}

class LikedState extends HomeItemsState{
}
class DisLikedState extends HomeItemsState{
}
class ComentState extends HomeItemsState{
}
class ShareState extends HomeItemsState{
}
