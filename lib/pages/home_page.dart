import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth; //device width and height

  HomePage({Key? key}) : super(key: key); //defining our constructor

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              _destinationDropDownWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  // _ coming before a name signifys private
  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> _items = [
      'James Web Station',
      'Prenure Station',
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(
            53,
            53,
            53,
            1.0,
          ),
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: DropdownButton(
        value: _items.first,
        onChanged: (_) {},
        items: _items.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
