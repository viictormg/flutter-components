import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numerImages = [];
  int _lastImage = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addNewImages();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: Stack(
        children: [_createList(), _toggleLoading()],
      ),
    );
  }

  Widget _createList() {
    return (RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numerImages.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numerImages[index];
          return (Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FadeInImage(
              image:
                  NetworkImage("https://picsum.photos/400/300/?image=$image"),
              placeholder: AssetImage('assets/loading.gif'),
            ),
          ));
        },
      ),
    ));
  }

  void _addNewImages() {
    for (var i = 0; i < 10; i++) {
      setState(() {
        _lastImage++;
        _numerImages.add(_lastImage);
      });
    }
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, responseHttp);
  }

  void responseHttp() {
    _isLoading = false;
    final durationAnimation = Duration(milliseconds: 500);
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: durationAnimation, curve: Curves.fastOutSlowIn);
    _addNewImages();
  }

  Widget _toggleLoading() {
    if (_isLoading) {
      return (Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          )
        ],
      ));
    } else {
      return (Container());
    }
  }

  Future<Null> _refresh() async {
    final durationRefresh = new Duration(seconds: 2);
    new Timer(durationRefresh, () {
      setState(() {
        _numerImages.clear();
        _lastImage++;
        _addNewImages();
      });
    });

    return Future.delayed(durationRefresh);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
