import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavButton extends StatefulWidget {
  FavButton({
    super.key,
    required this.isFav,
    required this.id,
  });

  bool isFav;
  final int id;

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isFav
            ? context
                .read<WishlistBloc>()
                .add(WishlistEvent.removeWhislitEvent(id: widget.id))
            : context
                .read<WishlistBloc>()
                .add(WishlistEvent.addWishlistEvent(id: widget.id));
        widget.isFav = !widget.isFav;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: widget.isFav
            ? Icon(Icons.favorite, color: kRed.withOpacity(0.9))
            : const Icon(Icons.favorite_border_outlined),
      ),
    );
  }
}
