class NetworkConstants {
  ///
  ///auth
  ///
  static String login = 'v1/api/login/';
  static String sendVerificationCode = 'v1/api/send/verification/code/';
  static String registration = 'v1/api/user/register/second/version/';
  static String loginApple = 'v1/api/social/auth/apple/jwt/';
  static String loginGoogle = 'v1/api/social/auth/google/';
  static String confirmMailVerification =
      'v1/api/onfirm/email/for/reset/password';
  static String getVerificationCode = 'v1/api/send/code/for/reset/password/';
  static String resetPassword = 'v1/api/reset/password/';
  static String deleteUser = 'v1/api/user/delete/request/';
  static String refreshToken = '/v1/api/token/refresh/';
  static String verifyDeleteUser(String code) =>
      'v1/api/user/accept/delete/request/$code/';

  ///
  /// Accident
  ///

  static const String accident = 'v2/api/accident/';

  static String history = 'v1/api/accident/breakdown/history/?page=1';
  static String deleteReport = '${accident}breakdown/delete';

  static String getDriverB(int id) => 'v1/api/user/$id/mini/';

  static String connectBDriver(int accidentId) =>
      '/v2/api/adriver/accident/$accidentId/connect_bdriver_with_qr_code/';

  ///
  /// Profile
  ///

  static String profile = 'v1/api/profile/';
  static String profileData = '${profile}with/all/datas/';

  static String changeEmail = '${profile}change/email/';
  static String verifyEmail = '${profile}verify/changed/email/';
  static String changePassword = 'change/password/in/profile/';
  static String changeLanguage = 'change/language/';

  static String insurance = '${profile}insurance/update/';
  static String policyHolder = '${profile}policy/holder/update/';

  static String vehicle = '${profile}vehicle/update/';

  static String car = '${profile}vehicle/update/';
  static String userVehicle = '${profile}vehicle/datas/update/';

  static String brands = 'v1/api/vehicle/brands/';
  static String models = 'v1/api/vehicle/brand/models/';
  static String colors = 'v1/api/vehicle/brand/colors/';

  static String checkAccountData = 'v1/api/check/account/datas/';

  ///
  ///  Contact
  ///
  static String contact = 'v1/api/contact/';
  static String editContact(int id) => '$contact$id/';

  static String premadeMessage = 'v1/api/pre/made/message/';
  static String editpremadeMessage(int id) => '$premadeMessage$id/';

  ///
  /// Personals
  ///

  static String personals([int page = 1]) => 'api/personals/all';
}
