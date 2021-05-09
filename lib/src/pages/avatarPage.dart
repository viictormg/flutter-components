import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("V"),
              backgroundColor: Colors.purple,
            ),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/45398eda-8ea0-4803-9d71-4435240c2ab1/d2c8i7w-3c9bf55b-98ef-49d8-ba4f-77c0e907456e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ1Mzk4ZWRhLThlYTAtNDgwMy05ZDcxLTQ0MzUyNDBjMmFiMVwvZDJjOGk3dy0zYzliZjU1Yi05OGVmLTQ5ZDgtYmE0Zi03N2MwZTkwNzQ1NmUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4lF5Mmz39c1Wgymddx7VwEJcURLxbpDc1Hjm5iYM_vQ'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/45398eda-8ea0-4803-9d71-4435240c2ab1/d2c8i7w-3c9bf55b-98ef-49d8-ba4f-77c0e907456e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ1Mzk4ZWRhLThlYTAtNDgwMy05ZDcxLTQ0MzUyNDBjMmFiMVwvZDJjOGk3dy0zYzliZjU1Yi05OGVmLTQ5ZDgtYmE0Zi03N2MwZTkwNzQ1NmUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4lF5Mmz39c1Wgymddx7VwEJcURLxbpDc1Hjm5iYM_vQ'),
          placeholder: AssetImage('assets/loading.gif'),
          width: 300,
          fadeInDuration: Duration(microseconds: 3000),
        ),
      ),
    ));
  }
}
