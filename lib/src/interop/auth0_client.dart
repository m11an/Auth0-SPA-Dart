// ignore_for_file: non_constant_identifier_names

@JS()
library auth0_spa;

import 'package:js/js.dart';

@JS('Auth0Client')
class Auth0Client {
  external Auth0Client(Auth0ClientOptions options);
  external buildAuthorizeUrl();
  external buildLogoutUrl();
  external checkSession();
  external getIdTokenClaims();
  external getTokenSilently(GetTokenSilentlyOptions options);
  external getTokenWithPopup();
  external getUser();
  external handleRedirectCallback();
  external isAuthenticated();
  external loginWithPopup(LoginWithPopupOptions options);
  external loginWithRedirect(RedirectLoginOptions options);
  external logout(RedirectLogoutOptions options);
  external logoutWithRedirect(RedirectLogoutOptions options);
}

@JS()
@anonymous
class Auth0ClientOptions {
  external factory Auth0ClientOptions(
      {String client_id,
      String domain,
      bool useRefreshTokens = false,
      String cacheLocation = "memory"});
  external String get client_id;
  external String get domain;
  external bool get useRefreshTokens;
  external String get cacheLocation;
}

@JS()
@anonymous
class RedirectLoginOptions {
  external factory RedirectLoginOptions({String redirect_uri});
  external String get redirect_uri;
}

@JS()
@anonymous
class RedirectLogoutOptions {
  external factory RedirectLogoutOptions({String redirectTo});
  external String get redirectTo;
}

@JS()
@anonymous
class GetTokenSilentlyOptions {
  external factory GetTokenSilentlyOptions(
      {bool detailedResponse = false, String? audience});
  external bool get detailedResponse;
  external String? get audience;
}

@JS()
@anonymous
class LoginWithPopupOptions {
  external factory LoginWithPopupOptions({String? audience, String? scope});
  external bool get detailedResponse;
  external String? get audience;
}
