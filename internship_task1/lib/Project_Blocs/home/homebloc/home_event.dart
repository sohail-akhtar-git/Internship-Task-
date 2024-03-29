part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeBtnClickedEvent extends HomeEvent{}
class ChatBtnClickedEvent extends HomeEvent{}
class EventBtnClickedEvent extends HomeEvent{}
class ProfileBtnClickedEvent extends HomeEvent{}
class ProfilePicClickedEvent extends HomeEvent{}
class SearchBtnClickedEvent extends HomeEvent{}

class HomeItemsLoddingEvent extends HomeEvent{}

