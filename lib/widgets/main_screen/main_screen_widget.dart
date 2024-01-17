import 'package:flutter/material.dart';

import '../../Theme/app_text.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void _onSelectTab(int index){
    if(_selectedTab == index) return;
    _selectedTab = index;
    setState(() {});
  }

  static const List<Widget> _widgetOptions = [
    Text('Новости', style: TextStyleList.textStyle,),
    Text('Фильмы', style: TextStyleList.textStyle),
    Text('Сериалы', style: TextStyleList.textStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Новости'  ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Сериалы',
          ),
        ],
        onTap: _onSelectTab,
      ),
    );
  }
}
