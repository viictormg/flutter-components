import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _date = "";
  String _powerSelected = "fly";
  List<String> _powers = ["fly", "smash", "ray x", "stronger"];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        children: [
          _createInput(),
          Divider(
            height: 4.0,
          ),
          _createPerson(),
          Divider(
            height: 4.0,
          ),
          _createEmail(),
          Divider(
            height: 20.0,
          ),
          _cretaeDate(context),
          Divider(
            height: 20.0,
          ),
          _createDropDown()
        ],
      ),
    ));
  }

  Widget _createInput() {
    return (TextField(
      autocorrect: true,
      autofocus: false,
      // textInputAction: TextInputAction,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('letras ${_name.length}'),
          hintText: "nombre de la persona",
          labelText: "Nombre",
          icon: Icon(
            Icons.access_alarm_sharp,
            color: Colors.black38,
          ),
          suffix: Icon(
            Icons.accessibility,
            color: Colors.brown,
          )),
      onChanged: (value) => getName(value),
    ));
  }

  Widget _createPerson() {
    return (ListTile(
      title: Text("Nombre es: $_name"),
    ));
  }

  Widget _createEmail() {
    return (TextField(
      enableInteractiveSelection: false,
      textCapitalization: TextCapitalization.none,
      // maxLength: 4,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue)),
          suffixIcon: Icon(Icons.lock_open)),
    ));
  }

  Widget _cretaeDate(context) {
    return (TextField(
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          suffixIcon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    ));
  }

  List<DropdownMenuItem<String>> _getOptionsDropDown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    _powers.forEach((power) {
      var tempItem = DropdownMenuItem(
        child: Text(power),
        value: power.toString(),
      );
      dropdownItems.add(tempItem);
    });
    return dropdownItems;
  }

  Widget _createDropDown() {
    return (DropdownButton(
      value: _powerSelected,
      items: _getOptionsDropDown(),
      onChanged: (option) {
        setState(() {
          _powerSelected = option;
        });
      },
    ));
  }

  void _selectDate(context) async {
    DateTime piked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2015),
        lastDate: new DateTime(2050),
        locale: Locale('es', "ES"));

    if (piked != null) {
      setState(() {
        _date = piked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

  void getName(value) {
    setState(() {
      _name = value;
    });
  }
}
