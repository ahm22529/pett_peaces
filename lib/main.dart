import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pett_peaces/constant.dart';

import 'package:pett_peaces/core/utiles/services/fcmservices/fire_base_massing.dart';
import 'package:pett_peaces/core/utiles/services/localservices/manager/cubit/localdata_cubit.dart';

import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/changepassword/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/changepassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_rep.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_repo_imp.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/home_scrren.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/splash/presention/view/splash_view.dart';
import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';
import 'package:pett_peaces/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  NotificationService.initialize();
  Hive.registerAdapter(UserEntityAdapter());
  Hive.registerAdapter(SubdepartAdapter());
  await Hive.initFlutter();

  await Hive.openBox<UserEntity>(box);
  await Hive.openBox<SubdepartEntity>(boxdepart);
  

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
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
  ChangepassRepo changepassRepo = ChangRepoImp();
  late bool islogin;
  late Widget fristscreen;

  @override
  void initState() {
    super.initState();
    isLoggedIn();
  }

  void isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    islogin = prefs.getBool('isLoggedIn') ?? false;
    print(islogin);
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
          create: (context) => LocaldataCubit(),
        ),
        BlocProvider(
          create: (context) => UpdaepassCubit(changepassRepo),
        )
      ],
      child: MaterialApp(
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
        home: Splashview(),
      ),
    );
  }
}
