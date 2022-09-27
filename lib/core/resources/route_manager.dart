import 'package:flutter/material.dart';
import 'package:sausau/features/groups/presentation/screens/group_pay_details.dart';
import 'package:sausau/features/groups/presentation/screens/group_pay_success.dart';
import 'package:sausau/features/groups/presentation/screens/join_additional_view.dart';

import 'package:sausau/features/home/presentation/screens/home_view.dart';
import 'package:sausau/features/home/presentation/screens/main_screen_with_navbar.dart';
import 'package:sausau/features/instruction/presentation/screens/faq_view.dart';
import 'package:sausau/features/instruction/presentation/screens/how_it_works_view.dart';
import 'package:sausau/features/instruction/presentation/screens/invite_others_view.dart';
import 'package:sausau/features/otp/presentation/screens/otp_verfication.dart';
import 'package:sausau/features/payment/presentation/screens/payment_details.dart';
import 'package:sausau/features/payment/presentation/screens/payment_success.dart';
import 'package:sausau/features/privacy/presentation/screens/about_us_view.dart';
import 'package:sausau/features/profile/presentation/screens/edit_profile_view.dart';
import 'package:sausau/features/profile/presentation/screens/profile_view.dart';
import 'package:sausau/features/settings/presentation/screens/change_language_view.dart';
import 'package:sausau/features/settings/presentation/screens/change_passowrd_view.dart';
import 'package:sausau/features/settings/presentation/screens/notifitcation_view.dart';
import 'package:sausau/features/settings/presentation/screens/saved_cards_view.dart';
import 'package:sausau/features/settings/presentation/screens/settings_view.dart';
import 'package:sausau/features/wallet/presentation/screens/transaction_details_view.dart';
import 'package:sausau/features/wallet/presentation/screens/wallet_view.dart';
import 'package:sausau/features/wallet/presentation/screens/withdraw_view.dart';
import '../../features/auth/presentation/screens/login_view.dart';
import '../../features/auth/presentation/screens/register_view.dart';
import '../../features/groups/presentation/screens/group_details_view.dart';
import '../../features/groups/presentation/screens/history_view.dart';
import '../../features/privacy/presentation/screens/contact_view.dart';
import '../../features/privacy/presentation/screens/privacy_view.dart';
import '../../features/privacy/presentation/screens/terms_view.dart';
import '../../features/splash/presentation/screens/splash_view.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String otpRoute = "/otpVerfiy";
  static const String paymentDetailsRoute = "/paymentDetails";

  static const String paymentSuccessRoute = "/paymentSuccess";
  static const String mainRoute = "/mainRoute";

  static const String homeRoute = "/homeRoute";
  static const String walletRoute = "/walletRoute";

  static const String transactionDetailsRoute = "/transactionDetailsRoute";
  static const String withdrawRoute = "/withdrawRoute";
  static const String historyRoute = "/historyRoute";
  static const String settingsRoute = "/settingsRoute";

  static const String profileRoute = "/profile";
  static const String editProfileRoute = "/editProfileRoute";

  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainPlanetsRoute = "/mainPlanets";
  static const String storeDetailsRoute = "/storeDetails";
  static const String qrDetails = "/qrDetails";
  static const String cartRoute = "/cart";
  static const String groupPaySuccessRoute = "/groupPaySuccessRoute";
  static const String joinGroupRoute = "/joinGroupRoute";
  static const String groupDetailsRoute = "/groupRoute";
  static const String groupPayDetailsRoute = "/groupPayDetailsRoute";
  static const String notificationRoute = "/notification";
  static const String contactRoute = "/contactRoute";
  static const String changePasswordRoute = "/changePasswordRoute";
  static const String changeLanguagesRoute = "/changeLanguagesRoute";
  static const String savedCardsRoute = "/savedCardsRoute";
  static const String termsRoute = "/termsRoute";

  static const String privacyPolicyRoute = "/privacyPolicyRoute";
  static const String aboutUs = "/aboutUs";
  static const String inviteOthersRoute = "/inviteOthersRoute";
  static const String howItWorksRoute = "/howItWorksRoute";
  static const String faqRoute = "/faqRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      case Routes.registerRoute:
        //  initRegisterModule();
        return MaterialPageRoute(builder: (_) => const RegisterView());

      case Routes.otpRoute:
        return MaterialPageRoute(builder: (_) => const OtpVerfication());
      case Routes.paymentSuccessRoute:
        return MaterialPageRoute(builder: (_) => const PaymentSucessView());
      case Routes.paymentDetailsRoute:
        return MaterialPageRoute(builder: (_) => const PayementDetailsView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainScreenWithNavBar());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.walletRoute:
        return MaterialPageRoute(builder: (_) => const WalletView());
      case Routes.transactionDetailsRoute:
        return MaterialPageRoute(
            builder: (_) => const TransactionDetailsView());
      case Routes.withdrawRoute:
        return MaterialPageRoute(builder: (_) => const WithdrawView());
      case Routes.historyRoute:
        return MaterialPageRoute(builder: (_) => const HistoryView());
      case Routes.groupDetailsRoute:
        return MaterialPageRoute(builder: (_) => const GroupDetailsView());
      case Routes.joinGroupRoute:
        return MaterialPageRoute(builder: (_) => const JoinGroupsView());
      case Routes.groupPayDetailsRoute:
        return MaterialPageRoute(builder: (_) => const GroupPayDetails());
      case Routes.groupPaySuccessRoute:
        return MaterialPageRoute(builder: (_) => const GroupPaySuccess());
      case Routes.settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsView());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: (_) => const NotificationView());
      case Routes.contactRoute:
        return MaterialPageRoute(builder: (_) => const ContactView());
      case Routes.changePasswordRoute:
        return MaterialPageRoute(builder: (_) => const ChangePasswordView());
      case Routes.changeLanguagesRoute:
        return MaterialPageRoute(builder: (_) => const ChangeLanguagesView());
      case Routes.savedCardsRoute:
        return MaterialPageRoute(builder: (_) => const SavedCardsView());
      case Routes.termsRoute:
        return MaterialPageRoute(builder: (_) => const TermsView());
      case Routes.privacyPolicyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyView());
      case Routes.aboutUs:
        return MaterialPageRoute(builder: (_) => const AboutUsView());
      case Routes.inviteOthersRoute:
        return MaterialPageRoute(builder: (_) => const InviteOthersView());
      case Routes.howItWorksRoute:
        return MaterialPageRoute(builder: (_) => const HowItWorksView());
      case Routes.faqRoute:
        return MaterialPageRoute(builder: (_) => const FaqView());
      // case Routes.forgotPasswordRoute:
      //   //  initForgotPasswordModule();
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      // case Routes.homeRoute:
      //   //  initHomeModule();
      //   return MaterialPageRoute(
      //       builder: (_) => MultiBlocProvider(
      //             providers: [
      //               BlocProvider(
      //                 create: (context) => getIt<ProductsCubit>(),
      //               ),
      //               BlocProvider(
      //                 create: (context) => getIt<ForumsCubit>(),
      //               )
      //             ],
      //             child: const HomeView(),
      //           ));
      // case Routes.mainPlanetsRoute:
      //   //initLoginModule();
      //   return MaterialPageRoute(builder: (_) => const MainPlanetsView());
      // case Routes.storeDetailsRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const DetailsView());
      // case Routes.qrDetails:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const ScannedItemDetails());
      // case Routes.cartRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const CartView());
      // case Routes.profileRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const ProfileView());
      // case Routes.createPostsRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => getIt<ForumsCubit>(),
      //             child: const CreatePostsView(),
      //           ));
      // case Routes.discussionForumRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => getIt<ForumsCubit>(),
      //             child: const DiscussionForumView(),
      //           ));
      // case Routes.quizRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const QuizView());
      // case Routes.blogRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const BlogView());
      // case Routes.singleBlogRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const SingleBlogView());
      // case Routes.notificationRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const NotifiticationView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound.trim()),
        ),
        body: Center(child: Text(AppStrings.noRouteFound.trim())),
      ),
    );
  }
}
