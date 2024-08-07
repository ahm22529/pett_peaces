import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pett_peaces/constant.dart';
import 'package:pett_peaces/core/utiles/authservices/manger/cubit/is_log_in_cubit.dart';
import 'package:pett_peaces/core/utiles/authservices/repo/auth_repo.dart';
import 'package:pett_peaces/core/utiles/fcmservices/fire_base_massing.dart';
import 'package:pett_peaces/core/utiles/localservices/manager/cubit/localdata_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repo.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/home_scrren.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/login.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/splash/presention/view/splash_view.dart';
import 'package:pett_peaces/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  NotificationService.initialize();
  Hive.registerAdapter(UserEntityAdapter());
  await Hive.initFlutter();

  await Hive.openBox<UserEntity>(box);
  ;

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ContactusRepo contactusRepo = ContactusRepoimp();
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  Buyandsell buyandsell = SellRepoImp();
  Boxrepo boxrepo = BoxRepoImp();

  IsLogInCubit authCubit = IsLogInCubit(authRepository: AuthRepository());

  @override
  void initState()  {
    super.initState();
    _islogin;
  }
  _islogin()async{
    await authCubit.checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactCubit(contactusRepo),
        ),
        BlocProvider(
          create: (context) => AddAmilesCubit(anmilesRepo),
        ),
        BlocProvider(
          create: (context) => SelCubit(buyandsell),
        ),
        BlocProvider(
          create: (context) => AddBoxCubit(boxrepo),
        ),
        BlocProvider(
          create: (context) => authCubit,
        ),
        BlocProvider(
          create: (context) => LocaldataCubit(),
        ),
      ],
      child: BlocBuilder<IsLogInCubit, IsLogInState>(
        builder: (context, state) {
          Widget home;
          if (state is IsLoging) {
            home = HomeScreen(
                userEntitymodel: BlocProvider.of<LocaldataCubit>(context)
                    .getUser()); // Replace with your HomePage widget
          } else {
            home = Splashview(); // Replace with your LoginPage widget
          }
          return MaterialApp(
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: fontfamily),
            locale: const Locale("ar"),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: home,
          );
        },
      ),
    );
  }
}
