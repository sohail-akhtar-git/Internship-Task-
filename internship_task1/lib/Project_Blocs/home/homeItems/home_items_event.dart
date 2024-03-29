part of 'home_items_bloc.dart';

@immutable
sealed class HomeItemsEvent {}
class PostLikedEvent extends HomeItemsEvent{}
class PostDisLikedEvent extends HomeItemsEvent{}
class CommentBtnClickedEvent extends HomeItemsEvent{}
class ShareBtnClickedEvent extends HomeItemsEvent{}
