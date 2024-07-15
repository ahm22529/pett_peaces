import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/account/presention/view/account.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/homeviewbody.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/massage.dart';
import 'package:pett_peaces/fetures/se3rviecs/presention/view/services.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items:  [
          BottomNavigationBarItem(
            icon: Image.asset("Asset/image/home 04.png",color: _selectedIndex==0?Colors.orange:Colors.grey, ),
            label: 'الرئيسبه',
          ),
          BottomNavigationBarItem(
            icon:Image.asset("Asset/image/store.png",color: _selectedIndex==1?Colors.orange:Colors.grey,),
            label: 'المتجر',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("Asset/image/store.png",color: _selectedIndex==2?Colors.orange:Colors.grey,),
            label: 'خدمتنا',
          ),
          BottomNavigationBarItem(
            icon:Image.asset("Asset/image/chat 2.png",color: _selectedIndex==3?Colors.orange:Colors.grey,),
            label: 'الرسايل',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("Asset/image/user-circle.png",color: _selectedIndex==4?Colors.orange:Colors.grey,),
            label: 'الحساب',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeViewBody(),
          const Store(), 
          const Services(),
          const Massage(),
          // الصفحة الجديدة
          Acountff(),
        ],
      ),
    );
  }
}
