import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _StateSliderPage createState() => _StateSliderPage();
}

class _StateSliderPage extends State<SliderPage> {
  double _valueSlider = 100.0;
  bool _lockCheck = false;
  bool _lockSwitch = false;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            _createInage(),
            _createCheckBox(),
            _createSwitch()
          ],
        ),
      ),
    ));
  }

  Widget _createSlider() {
    return (Slider(
      activeColor: Colors.indigoAccent,
      label: "Size of image",
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_lockCheck)
          ? null
          : (value) {
              setState(() {
                _valueSlider = value;
              });
            },
    ));
  }

  Widget _createInage() {
    return (Expanded(
      child: Image(
        image: NetworkImage(
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/45398eda-8ea0-4803-9d71-4435240c2ab1/d2c8i7w-3c9bf55b-98ef-49d8-ba4f-77c0e907456e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ1Mzk4ZWRhLThlYTAtNDgwMy05ZDcxLTQ0MzUyNDBjMmFiMVwvZDJjOGk3dy0zYzliZjU1Yi05OGVmLTQ5ZDgtYmE0Zi03N2MwZTkwNzQ1NmUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4lF5Mmz39c1Wgymddx7VwEJcURLxbpDc1Hjm5iYM_vQ'),
        width: _valueSlider,
        fit: BoxFit.contain,
      ),
    ));
  }

  Widget _createCheckBox() {
    return (CheckboxListTile(
      title: Text("bloquear slider"),
      activeColor: Colors.amber,
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    ));
  }

  Widget _createSwitch() {
    return (SwitchListTile(
      title: Text("ddd"),
      value: _lockSwitch,
      onChanged: (value) {
        setState(() {
          _lockSwitch = value;
        });
      },
    ));
  }
}
