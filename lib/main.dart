import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_l5/controllers/services/globals/globals.dart' as globals;
import 'package:task_l5/views/screens/check_out/check_out_screen.dart';
import 'package:task_l5/views/screens/contact_us/contact_us_screen.dart';
import 'package:task_l5/views/screens/home/home_screen.dart';
import 'package:task_l5/views/screens/language/language.dart';
import 'package:task_l5/views/screens/loading/loading_screen.dart';
import 'package:task_l5/views/screens/login/login_screen.dart';
import 'package:task_l5/views/screens/my_account/my_account_screen.dart';
import 'package:task_l5/views/screens/my_cards/my_cards_screen.dart';
import 'package:task_l5/views/screens/my_order/my_order_screen.dart';
import 'package:task_l5/views/screens/notification/notification_screen.dart';
import 'package:task_l5/views/screens/payment_success/payment_success_screen.dart';
import 'package:task_l5/views/screens/settings/settings_screen.dart';
import 'package:task_l5/views/screens/shipping_address/shipping_address_screen.dart';
import 'package:task_l5/views/screens/signup/signup_screen.dart';
import 'package:task_l5/views/screens/users/users_screen.dart';
import 'package:task_l5/views/screens/verification/verification_screen.dart';
import 'package:task_l5/views/screens/your_cart.dart/your_cart_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getApplicationDocumentsDirectory().then((dir) => globals.appDir = dir.path); 
  await globals.db.initDB();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoadingScreen.route,
      routes: {
        LoadingScreen.route: (context) => LoadingScreen(),
        UsersScreen.route: (context) => const UsersScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        SignUpScreen.route: (context) => const SignUpScreen(),
        VerificationScreen.route: (context) => const VerificationScreen(),
        MyCardsScreen.route : (context)=> const MyCardsScreen(), 
        Language.route: (context)=> const Language(),
        MyAccountScreen.route : (contex)=> const MyAccountScreen(), 
        SettingsScreen.route : (context)=> const SettingsScreen(),
        ContactUs.route : (context) => const ContactUs(),
        MyOrderScreen.route : (context)=> const MyOrderScreen(),
        ShippinAddressScreen.route : (context)=> const ShippinAddressScreen(),
        NotificationScreen.route : (context) => const NotificationScreen(),
        YourCartScreen.route : (context) =>  const YourCartScreen(),
        CheckOutScreen.route : (context) => const CheckOutScreen(),
        PaymentSuccessScreen.route : (context) => const PaymentSuccessScreen(),      },
    );
  }
}
