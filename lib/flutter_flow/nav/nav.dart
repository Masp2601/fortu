import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  FortunatorsFirebaseUser? initialUser;
  FortunatorsFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(FortunatorsFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'registro',
              path: 'registro',
              builder: (context, params) => RegistroWidget(),
            ),
            FFRoute(
              name: 'completeProfile',
              path: 'completeProfile',
              requireAuth: true,
              builder: (context, params) => CompleteProfileWidget(),
            ),
            FFRoute(
              name: 'forgotPassword',
              path: 'forgotPassword',
              requireAuth: true,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'onboarding',
              path: 'onboarding',
              requireAuth: true,
              builder: (context, params) => OnboardingWidget(),
            ),
            FFRoute(
              name: 'createBudgetBegin',
              path: 'createBudgetBegin',
              requireAuth: true,
              builder: (context, params) => CreateBudgetBeginWidget(),
            ),
            FFRoute(
              name: 'MY_Card',
              path: 'mYCard',
              requireAuth: true,
              builder: (context, params) => MYCardWidget(),
            ),
            FFRoute(
              name: 'MY_Budgets',
              path: 'mYBudgets',
              requireAuth: true,
              builder: (context, params) => MYBudgetsWidget(),
            ),
            FFRoute(
              name: 'paymentDetails',
              path: 'paymentDetails',
              requireAuth: true,
              builder: (context, params) => PaymentDetailsWidget(
                transactionDetails: params.getParam('transactionDetails',
                    ParamType.DocumentReference, false, ['transactions']),
                userSpent: params.getParam(
                    'userSpent', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'MY_profilePage',
              path: 'mYProfilePage',
              requireAuth: true,
              builder: (context, params) => MYProfilePageWidget(
                userProfile: params.getParam('userProfile',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'budgetDetails',
              path: 'budgetDetails',
              requireAuth: true,
              builder: (context, params) => BudgetDetailsWidget(
                budgetDetails: params.getParam('budgetDetails',
                    ParamType.DocumentReference, false, ['budgets']),
              ),
            ),
            FFRoute(
              name: 'transferComplete',
              path: 'transferComplete',
              requireAuth: true,
              builder: (context, params) => TransferCompleteWidget(),
            ),
            FFRoute(
              name: 'transferFunds',
              path: 'transferFunds',
              requireAuth: true,
              builder: (context, params) => TransferFundsWidget(),
            ),
            FFRoute(
              name: 'requestFunds',
              path: 'requestFunds',
              requireAuth: true,
              builder: (context, params) => RequestFundsWidget(),
            ),
            FFRoute(
              name: 'transaction_ADD',
              path: 'transactionADD',
              requireAuth: true,
              builder: (context, params) => TransactionADDWidget(),
            ),
            FFRoute(
              name: 'createBudget',
              path: 'createBudget',
              requireAuth: true,
              builder: (context, params) => CreateBudgetWidget(),
            ),
            FFRoute(
              name: 'transaction_EDIT',
              path: 'transactionEDIT',
              requireAuth: true,
              builder: (context, params) => TransactionEDITWidget(
                transactionDetails: params.getParam('transactionDetails',
                    ParamType.DocumentReference, false, ['transactions']),
              ),
            ),
            FFRoute(
              name: 'notificationsSettings',
              path: 'notificationsSettings',
              requireAuth: true,
              builder: (context, params) => NotificationsSettingsWidget(),
            ),
            FFRoute(
              name: 'privacyPolicy',
              path: 'privacyPolicy',
              requireAuth: true,
              builder: (context, params) => PrivacyPolicyWidget(),
            ),
            FFRoute(
              name: 'homePage',
              path: 'homePage',
              requireAuth: true,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'homePage_alt',
              path: 'homePageAlt',
              requireAuth: true,
              builder: (context, params) => HomePageAltWidget(),
            ),
            FFRoute(
              name: 'homePage_alt_1',
              path: 'homePageAlt1',
              requireAuth: true,
              builder: (context, params) => HomePageAlt1Widget(),
            ),
            FFRoute(
              name: 'profilepage',
              path: 'profilepage',
              requireAuth: true,
              builder: (context, params) => ProfilepageWidget(),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'conection',
              path: 'conection',
              builder: (context, params) => ConectionWidget(),
            ),
            FFRoute(
              name: 'game',
              path: 'game',
              requireAuth: true,
              builder: (context, params) => GameWidget(),
            ),
            FFRoute(
              name: 'tarjeta',
              path: 'tarjeta',
              requireAuth: true,
              builder: (context, params) => TarjetaWidget(),
            ),
            FFRoute(
              name: 'thankspay',
              path: 'thankspay',
              requireAuth: true,
              builder: (context, params) => ThankspayWidget(),
            ),
            FFRoute(
              name: 'paysave',
              path: 'paysave',
              requireAuth: true,
              builder: (context, params) => PaysaveWidget(),
            ),
            FFRoute(
              name: 'politicas',
              path: 'politicas',
              requireAuth: true,
              builder: (context, params) => PoliticasWidget(),
            ),
            FFRoute(
              name: 'cashtable',
              path: 'cashtable',
              requireAuth: true,
              builder: (context, params) => CashtableWidget(
                users: params.getParam('users', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'goldtable',
              path: 'goldtable',
              requireAuth: true,
              builder: (context, params) => GoldtableWidget(
                users: params.getParam('users', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'fortunatable',
              path: 'fortunatable',
              requireAuth: true,
              builder: (context, params) => FortunatableWidget(
                users: params.getParam('users', ParamType.String),
                saldo: params.getParam('saldo', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'ndqueperder',
              path: 'ndqueperder',
              requireAuth: true,
              builder: (context, params) => NdqueperderWidget(
                users: params.getParam('users', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'home',
              path: 'home',
              requireAuth: true,
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'avatars',
              path: 'avatars',
              requireAuth: true,
              builder: (context, params) => AvatarsWidget(),
            ),
            FFRoute(
              name: 'rules',
              path: 'rules',
              requireAuth: true,
              builder: (context, params) => RulesWidget(),
            ),
            FFRoute(
              name: 'disfrutaygana',
              path: 'disfrutaygana',
              requireAuth: true,
              builder: (context, params) => DisfrutayganaWidget(),
            ),
            FFRoute(
              name: 'changePassword',
              path: 'changePassword',
              requireAuth: true,
              builder: (context, params) => ChangePasswordWidget(),
            ),
            FFRoute(
              name: 'thereismethod',
              path: 'thereismethod',
              requireAuth: true,
              builder: (context, params) => ThereismethodWidget(),
            ),
            FFRoute(
              name: 'espejo',
              path: 'espejo',
              requireAuth: true,
              builder: (context, params) => EspejoWidget(),
            ),
            FFRoute(
              name: 'mundomagico',
              path: 'mundomagico',
              requireAuth: true,
              builder: (context, params) => MundomagicoWidget(),
            ),
            FFRoute(
              name: 'ciencop',
              path: 'ciencop',
              requireAuth: true,
              builder: (context, params) => CiencopWidget(
                users: params.getParam('users', ParamType.String),
                saldo: params.getParam('saldo', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'docientoscop',
              path: 'docientoscop',
              requireAuth: true,
              builder: (context, params) => DocientoscopWidget(
                users: params.getParam('users', ParamType.String),
                saldo: params.getParam('saldo', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'cashavatar',
              path: 'cashavatar',
              requireAuth: true,
              builder: (context, params) => CashavatarWidget(),
            ),
            FFRoute(
              name: 'corona',
              path: 'corona',
              requireAuth: true,
              builder: (context, params) => CoronaWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/welcome.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      );
}
