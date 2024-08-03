import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pett_peaces/constant.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repo.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/splash/presention/view/splash_view.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ), // Wrap your app
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  ContactusRepo contactusRepo = ContactusRepoimp();
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  Buyandsell buyandsell = SellRepoImp();
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
        )
      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
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
        home: const Splashview(),
      ),
    );
  }
}
