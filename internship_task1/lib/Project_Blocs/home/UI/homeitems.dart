import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../homeItems/home_items_bloc.dart';

class HomeItems extends StatelessWidget {
  HomeItems({super.key,required this.imageUrl,required this.postUrl});

  String imageUrl ;
  String postUrl ;

  HomeItemsBloc _newBlock = HomeItemsBloc();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(10),
        child: Container(
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(imageUrl),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Sameer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Image.network(postUrl),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mountain Image with beautiful view",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BlocConsumer<HomeItemsBloc, HomeItemsState>(
                bloc: _newBlock,
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        state is LikedState
                            ? IconButton(
                                onPressed: () {
                                  if (state is LikedState) {
                                    _newBlock.add(PostDisLikedEvent());
                                  } else {
                                    _newBlock.add(PostLikedEvent());
                                  }
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  _newBlock.add(PostLikedEvent());
                                },
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                ),
                              ),
                        IconButton(
                          onPressed: () {
                            _newBlock.add(CommentBtnClickedEvent());
                          },
                          icon: Icon(
                            Icons.comment,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _newBlock.add(ShareBtnClickedEvent());
                          },
                          icon: Icon(
                            Icons.share_rounded,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
