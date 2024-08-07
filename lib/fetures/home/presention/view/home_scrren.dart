import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/account/presention/view/account.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/home/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/home/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/home/presention/manager/cubit/home_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/home_viewb_ody.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/massage.dart';
import 'package:pett_peaces/fetures/serviecs/presention/view/services.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<ProducEntity> product = [];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  HomeRepo homeRepo = HomeRepoImp();
  Boxrepo boxrepo = BoxRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(homeRepo),
        ),
        BlocProvider(
          create: (context) => AddBoxCubit(boxrepo),
        )
      ],
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "Asset/image/home 04.png",
                color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
              ),
              label: 'الرئيسبه',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "Asset/image/store.png",
                color: _selectedIndex == 1 ? Colors.orange : Colors.grey,
              ),
              label: 'المتجر',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "Asset/image/Frame 16487.png",
                color: _selectedIndex == 2 ? Colors.orange : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "Asset/image/chat 2.png",
                color: _selectedIndex == 3 ? Colors.orange : Colors.grey,
              ),
              label: 'الرسايل',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "Asset/image/user-circle.png",
                color: _selectedIndex == 4 ? Colors.orange : Colors.grey,
              ),
              label: 'الحساب',
            ),
          ],
        ),
        body: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomeSucess) {
              setState(() {
                product = state.homeEntity.product;
              });
            }
          },
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              HomeViewBody(
                userEntitymodel: widget.userEntitymodel,
              ),
              Store(
                pro: product,
                userEntitymodel: widget.userEntitymodel,
              ),
              Services(
                userEntitymodel: widget.userEntitymodel,
              ),
              Massage(
                userEntity: widget.userEntitymodel,
                token: widget.userEntitymodel.token,
              ),
              // الصفحة الجديدة
              Acountff(
                userEntitymodel: widget.userEntitymodel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
