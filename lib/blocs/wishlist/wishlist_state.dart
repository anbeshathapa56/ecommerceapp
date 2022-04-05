import 'package:equatable/equatable.dart';

import '../../models/category_model.dart';

abstract class WishListState extends Equatable{
  const WishListState();
  @override
  List<Object> get props=> [];
}

class WishListLoading extends WishListState {}
class WishListLoaded extends WishListState {
  final WishList wishList;
  const WishListLoaded({this.wishList = const WishList()});

  @override
  List<Object> get props => [wishList];

}
class WishListError extends WishListState {}