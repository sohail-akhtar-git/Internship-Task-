part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {
}
class ChatState extends HomeState{}
class EventState extends HomeState{}
class ProfileState extends HomeState{}
class SearchState extends HomeState{}

class PostLikedState extends HomeState{}
class CommentState extends HomeState{}
class ShareState extends HomeState{}

class ItemsLoddingState extends HomeState{}
