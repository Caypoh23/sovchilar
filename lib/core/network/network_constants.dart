class NetworkConstants {
  ///
  /// Auth
  ///
  static String auth = 'api/auth';

  ///
  /// Profile
  ///

  static String getProfile = '/api/user/';
  static String editProfile = 'api/personals/';
  static String deleteProfile = '/api/user/';

  ///
  /// Ads
  ///

  static String ads([int page = 1]) => 'api/personals/all';
  static String postAd = 'api/personals/';

  ///
  /// Payment
  ///
  static String price = 'api/payment/price';
  static String payment = 'api/payment/make';
  static String confirmPayment = 'api/payment/confirm';
}
