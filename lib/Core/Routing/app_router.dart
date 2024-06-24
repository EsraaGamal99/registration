import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  ///*** OnBoarding Views ***///
  static const konBoardingView = '/onBoardingView';

  ///*** Login Views ***///
  static const kLoginView = '/loginView';
  static const kLoginVerificationOTPView = '/loginVerificationOTPView';

  ///*** Register Views ***///
  static const kRegisterVerificationOTPView = '/registerVerificationOTPView';
  static const kPersonalInformationView = '/personalInformation';
  static const kCreateYourProfessionalRank = '/createYourProfessionalRank';
  static const kEditProfessionalRankView = '/EditProfessionalRankBody';
  static const kCardDetailsView = '/CardDetailsView';
  static const kCongratulationsView = "/CongratulationsView";
  static const kPaymentWebView = "/PaymentWebView";
  static const kPaymentLostCardWebView = "/PaymentLostCardWebView";


  ///*** Home Views ***///
  static const kHomeView = '/homeView';
  static const kMyProfilePersonalDetailsView = '/myProfilePersonalDetailsView';
  static const kEditProfileView = '/editProfileView';
  static const kFeaturedMerchantsView = '/featuredMerchantsView';

  static const kChampionBoardView = '/championBoardView';
  static const kChampionRoadmapView = '/championRoadmapView';
  static const kMerchantView = '/merchantView';
  static const kSpecificCategoryView = '/specificCategoryView';
  static const kSportsKitsView = '/sportsKitsView';
  static const kSearchView = '/searchView';
  static const kCategoriesView = '/categoriesView';
  static const kFlashDealsView = '/flashDealsView';
  static const kMainHomeView = '/mainHomeView';
  static const kFQAsView = '/FQAsView';
  static const kTermsAndConditionsView = '/TermsAndConditionsView';
  static const kPrivacyView = '/privacyView';
  static const kChatView = '/chatView';
  static const kSplashScreen = '/splashScreen';


  //Registered Number
  //1006837941
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const WelcomeScreen();
          // return (Hive.box<bool>(kOnBoardingBox)
          //                 .get('completed', defaultValue: false) ==
          //             null ||
          //         Hive.box<bool>(kOnBoardingBox)
          //                 .get('completed', defaultValue: false) ==
          //             false)
          //     ? const OnBoardingView()
          //     : (kToken != '' && kToken != null)
          //         ? const MainHomeView()
          //         : const LoginView();
        },
      ),
      //
      // GoRoute(
      //   path: konBoardingView,
      //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      //     context: context,
      //     state: state,
      //     child: const OnBoardingView(),
      //   ),
      // ),
    ],
  );
}
