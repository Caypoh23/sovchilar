// Package imports:
import 'package:easy_localization/easy_localization.dart';

//
abstract class MyStrings {
  static String get appName => 'appName'.tr();

  static String get areYouSureCancelBooking => 'areYouSureCancelBooking'.tr();

  static String get description => 'description'.tr();

  static String get timeoutError => 'timeoutError'.tr();
  static String get noConnectionError => 'noConnectionError'.tr();
  static String get parsError => 'parsError'.tr();
  static String get serverError => 'serverError'.tr();
  static String get someError => 'someError'.tr();

  static String get error => 'error'.tr();
  static String get success => 'success'.tr();
  static String get cancelBookingFailed => 'cancelBookingFailed'.tr();

  static String get listEmpty => 'listEmpty'.tr();
  static String get title => 'title'.tr();

  static String get permissionError => 'permissionError'.tr();

  static String get name => 'name'.tr();
  static String get bookAppointment => 'bookAppointment'.tr();

  static String get chooseSpecialist => 'chooseSpecialist'.tr();
  static String get mySpecialist => 'mySpecialist'.tr();
  static String get specialists => 'specialists'.tr();

  static String get fromPhoneBook => 'fromPhoneBook'.tr();
  static String get phoneBook => 'phoneBook'.tr();

  static String get contactsList => 'contactsList'.tr();
  static String get loadPhoneBook => 'loadPhoneBook'.tr();

  static String get addNote => 'addNote'.tr();
  static String get editNote => 'editNote'.tr();
  static String get notes => 'notes'.tr();
  static String get photo => 'photo'.tr();
  static String get confirmPhotoDeletion => 'confirmPhotoDeletion'.tr();

  static String get history => 'history'.tr();

  static String get selectTime => 'selectTime'.tr();
  static String get confirmation => 'confirmation'.tr();

  static String get requestSent => 'requestSent'.tr();

  static String get youAddedClientToTimetable =>
      'youAddedClientToTimetable'.tr();

  static String get masterMustAcceptYourBooking =>
      'masterMustAcceptYourBooking'.tr();

  static String get confirmYourBooking => 'confirmYourBooking'.tr();
  static String get about => 'about'.tr();
  static String get chooseClient => 'chooseClient'.tr();
  static String get chooseClientHeader => 'chooseClientHeader'.tr();
  static String get chooseProcedures => 'chooseProcedures'.tr();
  static String get information => 'information'.tr();
  static String get serviceInformation => 'serviceInformation'.tr();
  static String get clientsCard => 'clientsCard'.tr();
  static String get procedure => 'procedure'.tr();

  static String get addNewClient => 'addNewClient'.tr();
  static String get addClient => 'addClient'.tr();

  static String get timewindowUnabalable => 'timewindowUnabalable'.tr();

  static String get dayOfBirth => 'dayOfBirth'.tr();
  static String get gender => 'gender'.tr();
  static String get femail => 'femail'.tr();
  static String get male => 'male'.tr();
  static String get eMail => 'eMail'.tr();

  static String get sunday => 'sunday'.tr();
  static String get monday => 'monday'.tr();
  static String get tuesday => 'tuesday'.tr();
  static String get wednesday => 'wednesday'.tr();
  static String get thursday => 'thursday'.tr();
  static String get friday => 'friday'.tr();
  static String get saturday => 'saturday'.tr();

  static String get addClientToTimeTable => 'addClientToTimeTable'.tr();

  static String get waitingForResponse => 'waitingForResponse'.tr();

  static String get forTheNextWeek => 'forTheNextWeek'.tr();

  static String get closed => 'closed'.tr();
  static String get week => 'week'.tr();
  static String get month => 'month'.tr();

  static String get upcoming => 'upcoming'.tr();
  static String get previous => 'previous'.tr();

  static String get change => 'change'.tr();
  static String get edit => 'edit'.tr();

  static String get back => 'back'.tr();
  static String get add => 'add'.tr();
  static String get delete => 'delete'.tr();
  static String get deleteContact => 'deleteContact'.tr();
  static String get confirm => 'confirm'.tr();
  static String get confirmBooking => 'confirmBooking'.tr();
  static String get yourClient => 'yourClient'.tr();

  static String get reschedule => 'reschedule'.tr();
  static String get noKeepIt => 'noKeepIt'.tr();

  static String get theAppointment => 'theAppointment'.tr();

  static String get date => 'date'.tr();

  static String get details => 'details'.tr();
  static String get emptyTitle => 'emptyTitle'.tr();

  ///
  /// Home
  ///

  static String get timetable => 'timetable'.tr();
  static String get myAppointments => 'myAppointments'.tr();
  static String get clients => 'clients'.tr();

  static String get oneMoreService => 'oneMoreService'.tr();
  static String get moreServices => 'moreServices'.tr();
  static String get services => 'services'.tr();

  static String get notifs => 'notifs'.tr();
  static String get profile => 'profile'.tr();

  ///
  /// Notifs
  ///

  static String get notifPermission => 'notifPermission'.tr();
  static String get notifPermissionDesc => 'notifPermissionDesc'.tr();

  ///
  /// Profile
  ///

  static String get oneMoreClient => 'oneMoreClient'.tr();
  static String get moreClients => 'moreClients'.tr();
  static String get clientsCount => 'clientsCount'.tr();

  static String get workplace => 'workplace'.tr();
  static String get socialMedia => 'socialMedia'.tr();

  static String get confirmLogout => 'confirmLogout'.tr();
  static String get confirmAccDeletion => 'confirmAccDeletion'.tr();
  static String get openIn => 'openIn'.tr();

  static String get businessProfile => 'businessProfile'.tr();

  ///
  /// Business permissions
  ///

  static String get hideContactsAndForbidCalls =>
      'hideContactsAndForbidCalls'.tr();
  static String get forbidBrowsingClients => 'forbidBrowsingClients'.tr();
  static String get syncLocationAndSocialNetworks =>
      'syncLocationAndSocialNetworks'.tr();
  static String get hideInSearch => 'hideInSearch'.tr();
  static String get clearBookingsHistory => 'clearBookingsHistory'.tr();

  ///
  /// Invitaion Success sheet
  ///

  static String get inivitationSuccessTitle => 'inivitationSuccessTitle'.tr();

  static String get inivitationSuccessDesc1 => 'inivitationSuccessDesc1'.tr();
  static String get inivitationSuccessDesc2 => 'inivitationSuccessDesc2'.tr();
  static String get inivitationSuccessDesc3 => 'inivitationSuccessDesc3'.tr();

  static String get understandable => 'understandable'.tr();

  static String get invitationWarningDesc => 'invitationWarningDesc'.tr();

  ///
  /// Notifs
  ///

  static String get notifsEmpty => 'notifsEmpty'.tr();
  static String get notifsEmptyDesc => 'notifsEmptyDesc'.tr();

  ///
  /// Price list
  ///

  static String get addService => 'addService'.tr();
  static String get editService => 'editService'.tr();

  static String get chooseCategory => 'chooseCategory'.tr();

  static String get confirmPriceListDeletion => 'confirmPriceListDeletion'.tr();

  static String get priceListEmpty => 'priceListEmpty'.tr();
  static String get priceListEmptyDesc => 'priceListEmptyDesc'.tr();

  static String get selectCurrency => 'selectCurrency'.tr();

  ///
  /// Employees
  ///

  static String get employeeListEmpty => 'employeeListEmpty'.tr();
  static String get employeeListEmptyDesc => 'employeeListEmptyDesc'.tr();

  static String get addSpecialist => 'addSpecialist'.tr();

  ///
  /// App Update
  ///

  static String get optionalUpdate => 'optionalUpdate'.tr();
  static String get optionalUpdateDesc => 'optionalUpdateDesc'.tr();

  static String get forcedUpdate => 'forcedUpdate'.tr();
  static String get forcedUpdateDesc => 'forcedUpdateDesc'.tr();

  ///
  /// Working Schedule
  ///

  static String get workingSchedule => 'workingSchedule'.tr();

  static String get editWorkingSchedule => 'editWorkingSchedule'.tr();

  static String get everyDay => 'everyDay'.tr();
  static String get custom => 'custom'.tr();
  static String get evenDays => 'evenDays'.tr();
  static String get oddDays => 'oddDays'.tr();

  static String get everyDayDesc => 'everyDayDesc'.tr();
  static String get customDesc => 'customDesc'.tr();
  static String get evenDaysDesc => 'evenDaysDesc'.tr();
  static String get oddDaysDesc => 'oddDaysDesc'.tr();

  static String get chooseScheduleType => 'chooseScheduleType'.tr();
  static String get confirmChangingScheduleType =>
      'confirmChangingScheduleType'.tr();

  static String get workingHours => 'workingHours'.tr();
  static String get addWorkingHoursDesc => 'addWorkingHoursDesc'.tr();

  static String get workingHoursIntersectError =>
      'workingHoursIntersectError'.tr();
  static String get workingHoursTooSmallError =>
      'workingHoursTooSmallError'.tr();

  ///
  /// Holidays
  ///

  static String get holidays => 'holidays'.tr();

  static String get addHolidays => 'addHolidays'.tr();
  static String get holidaysEditorDesc => 'holidaysEditorDesc'.tr();
  static String get confirmHolidayDeletion => 'confirmHolidayDeletion'.tr();

  static String get holidaysEmpty => 'holidaysEmpty'.tr();
  static String get holidaysEmptyDesc => 'holidaysEmptyDesc'.tr();

  ///
  /// Portfolio
  ///

  static String get emptyPortfolioDesc => 'emptyPortfolioDesc'.tr();
  static String get confirmPortfolioDeletion => 'confirmPortfolioDeletion'.tr();

  static String get outOf => 'outOf'.tr();

  ///
  /// Auth
  ///

  static String get authDesc => 'authDesc'.tr();
  static String get signIn => 'signIn'.tr();

  static String get privacyPolicyP1 => 'privacyPolicyP1'.tr();
  static String get privacyPolicyP2 => 'privacyPolicyP2'.tr();

  static String get theTermsOfUse => 'theTermsOfUse'.tr();
  static String get termsOfUse => 'termsOfUse'.tr();
  static String get and => 'and'.tr();

  ///
  /// Verification
  ///

  static String get verifCode => 'verifCode'.tr();
  static String get verifDesc => 'verifDesc'.tr();

  static String get after => 'after'.tr();

  ///
  /// Settings
  ///

  static String get settings => 'settings'.tr();

  static String get specialistRestrictions => 'specialistRestrictions'.tr();
  static String get langs => 'langs'.tr();
  static String get changePhone => 'changePhone'.tr();
  static String get privacyPolicy => 'privacyPolicy'.tr();
  static String get support => 'support'.tr();
  static String get deleteAccount => 'deleteAccount'.tr();
  static String get logoutFromAccount => 'logoutFromAccount'.tr();

  ///
  /// Langs
  ///

  static String get changeLang => 'changeLang'.tr();

  static String get uzLang => 'uzLang'.tr();
  static String get ruLang => 'ruLang'.tr();
  static String get enLang => 'enLang'.tr();
  static String get kkLang => 'kkLang'.tr();

  ///
  /// Buttons
  ///

  static String get skip => 'skip'.tr();
  static String get notNow => 'notNow'.tr();

  static String get camera => 'camera'.tr();
  static String get gallery => 'gallery'.tr();
  static String get uploadPhoto => 'uploadPhoto'.tr();

  static String get editProfileButton => 'editProfileButton'.tr();

  static String get sendCode => 'sendCode'.tr();
  static String get addWorkingHours => 'addWorkingHours'.tr();

  static String get more => 'more'.tr();
  static String get hide => 'hide'.tr();
  static String get cont => 'cont'.tr();

  static String get save => 'save'.tr();
  static String get cancel => 'cancel'.tr();
  static String get cancel2 => 'cancel2'.tr();
  static String get saveChanges => 'saveChanges'.tr();

  static String get update => 'update'.tr();
  static String get updateNow => 'updateNow'.tr();

  static String get resendCode => 'resendCode'.tr();
  static String get confirmCode => 'confirmCode'.tr();

  static String get book => 'book'.tr();
  static String get grantPermission => 'grantPermission'.tr();

  static String get accept => 'accept'.tr();
  static String get decline => 'decline'.tr();

  ///
  /// Text Fields
  ///
  ///

  static String get fullName => 'fullName'.tr();
  static String get phoneNumber => 'phoneNumber'.tr();
  static String get aboutYourself => 'aboutYourself'.tr();

  static String get website => 'website'.tr();
  static String get telegram => 'telegram'.tr();
  static String get instagram => 'instagram'.tr();

  static String get city => 'city'.tr();
  static String get district => 'district'.tr();
  static String get street => 'street'.tr();
  static String get address => 'address'.tr();

  static String get startFrom => 'startFrom'.tr();
  static String get endAt => 'endAt'.tr();

  static String get price => 'price'.tr();
  static String get duration => 'duration'.tr();
  static String get currency => 'currency'.tr();
  static String get category => 'category'.tr();
  static String get serviceName => 'serviceName'.tr();

  static String get firstName => 'firstName'.tr();
  static String get lastName => 'lastName'.tr();

  static String get name2 => 'name2'.tr();

  static String get exampleCom => 'exampleCom'.tr();
  static String get username => 'username'.tr();
  static String get search => 'search'.tr();

  ///
  /// Country Picker
  ///

  static String get selectCountry => 'selectCountry'.tr();
  static String get selectCity => 'selectCity'.tr();

  ///
  /// Color Picker
  ///

  static String get selectColor => 'selectColor'.tr();

  ///
  /// Mode
  ///

  static String get changeMode => 'changeMode'.tr();

  static String get client => 'client'.tr();
  static String get business => 'business'.tr();
  static String get manager => 'manager'.tr();

  static String get clientProfile => 'clientProfile'.tr();
  static String get specialistProfile => 'specialistProfile'.tr();
  static String get managerProfile => 'managerProfile'.tr();

  static String get clientRole => 'clientRole'.tr();
  static String get businessRole => 'businessRole'.tr();
  static String get managerRole => 'managerRole'.tr();

  static String get clientRoleDesc => 'clientRoleDesc'.tr();
  static String get businessRoleDesc => 'businessRoleDesc'.tr();
  static String get managerRoleDesc => 'managerRoleDesc'.tr();

  ///
  /// Lang Selector
  ///

  static String get langSelectorDesc => 'langSelectorDesc'.tr();

  ///
  /// Become Business
  ///

  static String get doYouWantToOpenBusinessAccount =>
      'doYouWantToOpenBusinessAccount'.tr();
  static String get fillOutAdditionInfo => 'fillOutAdditionInfo'.tr();

  static String get becomeBusiness => 'becomeBusiness'.tr();

  static String get personalData => 'personalData'.tr();
  static String get additionalInfo => 'additionalInfo'.tr();

  static String get setUpWorkingSchedule => 'setUpWorkingSchedule'.tr();
  static String get addYourServices => 'addYourServices'.tr();

  static String get brand => 'brand'.tr();

  static String get addYourEmployees => 'addYourEmployees'.tr();

  static String get intitationDesc => 'intitationDesc'.tr();

  ///
  /// Profile Editor
  ///

  static String get editProfile => 'editProfile'.tr();

  static String get specialistInTeam => 'specialistInTeam'.tr();

  static String get confirmUnlinkBusiness => 'confirmUnlinkBusiness'.tr();
  static String get stopCooperation => 'stopCooperation'.tr();

  static String get fillProfile => 'fillProfile'.tr();

  ///
  /// Location Picker
  ///

  static String get locateMe => 'locateMe'.tr();

  static String get mm => 'mm'.tr();
  static String get km => 'km'.tr();

  static String get chooseAddress => 'chooseAddress'.tr();
  static String get landmark => 'landmark'.tr();
  static String get specifyLandmark => 'specifyLandmark'.tr();
  static String get loadingAddress => 'loadingAddress'.tr();

  static String get locationPermission => 'locationPermission'.tr();
  static String get locationPermissionDesc => 'locationPermissionDesc'.tr();

  ///
  /// Role Selector
  ///

  static String get chooseType => 'chooseType'.tr();
  static String get roleSelectorDesc => 'roleSelectorDesc'.tr();

  ///
  /// Phone Editor
  ///

  static String get phoneEditorDesc => 'phoneEditorDesc'.tr();

  ///
  /// Shared
  ///

  static String get h => 'h'.tr();
  static String get m => 'm'.tr();
  static String get min => 'min'.tr();

  ///
  /// Showcases
  ///

  static String get showcaseClients => 'showcaseClients'.tr();
  static String get showcaseTimetable => 'showcaseTimetable'.tr();

  static String get showcaseServices => 'showcaseServices'.tr();
  static String get showcaseSchedule => 'showcaseSchedule'.tr();

  ///
  /// Appointments
  ///

  static String get myAppoinements => 'myAppoinements'.tr();

  static String get repeatBooking => 'repeatBooking'.tr();
  static String get cancelBooking => 'cancelBooking'.tr();

  static String get appointmentsEmpty => 'appointmentsEmpty'.tr();
  static String get appointmentsEmptyDesc => 'appointmentsEmptyDesc'.tr();

  ///
  /// Booking Statuses
  ///

  static String get status => 'status'.tr();

  static String get cancelled => 'cancelled'.tr();

  static String get cancelledByClient => 'cancelledByClient'.tr();
  static String get cancelledByMaster => 'cancelledByMaster'.tr();

  static String get confirmed => 'confirmed'.tr();
  static String get declined => 'declined'.tr();

  static String get waitingForFeedback => 'waitingForFeedback'.tr();
  static String get waitingForConfirmation => 'waitingForConfirmation'.tr();

  static String get completed => 'completed'.tr();

  ///
  /// Timetable
  ///

  static String get timetableEmpty => 'timetableEmpty'.tr();
  static String get timetableEmptyShort => 'timetableEmptyShort'.tr();
  static String get timetableEmptyDesc => 'timetableEmptyDesc'.tr();

  static String get timetableHistoryEmptyDesc =>
      'timetableHistoryEmptyDesc'.tr();

  static String get timetableHistory => 'timetableHistory'.tr();

  static String get timetableMode => 'timetableMode'.tr();

  static String get timetableModeList => 'timetableModeList'.tr();
  static String get day => 'day'.tr();
  static String get timetableModeWeek => 'timetableModeWeek'.tr();
  static String get timetableModeMonth => 'timetableModeMonth'.tr();
  static String get timetableModeListDesc => 'timetableModeListDesc'.tr();
  static String get timetableModeDayDesc => 'timetableModeDayDesc'.tr();
  static String get timetableModeWeekDesc => 'timetableModeWeekDesc'.tr();
  static String get timetableModeMonthDesc => 'timetableModeMonthDesc'.tr();

  static String get oneMoreBooking => 'oneMoreBooking'.tr(); // 1 запись
  static String get moreBookings => 'moreBookings'.tr(); // 2-4 записи
  static String get bookings => 'bookings'.tr(); // n записей
  static String get today => 'today'.tr();
  static String get yesterday => 'yesterday'.tr();
  static String get dayBeforeYesterday => 'dayBeforeYesterday'.tr();

  ///
  /// BS Timetable
  ///

  static String get dayTimetableEmpty => 'dayTimetableEmpty'.tr();
  static String get dayTimetableEmptyDesc => 'dayTimetableEmptyDesc'.tr();

  static String get employeeTimetableEmpty => 'employeeTimetableEmpty'.tr();
  static String get employeeTimetableEmptyDesc =>
      'employeeTimetableEmptyDesc'.tr();

  ///
  /// Favorite Specialists
  ///

  static String get mySpecialists => 'mySpecialists'.tr();
  static String get favoritesEmpty => 'favoritesEmpty'.tr();
  static String get favoritesEmptyDesc => 'favoritesEmptyDesc'.tr();

  ///
  /// Specialists
  ///

  static String get list => 'list'.tr();
  static String get nearby => 'nearby'.tr();

  static String get lastSeen => 'lastSeen'.tr();
  static String get inActive => 'inActive'.tr();

  static String get selectedSpecialist => 'selectedSpecialist'.tr();
  static String get viewProfile => 'viewProfile'.tr();

  static String get specialistsEmpty => 'specialistsEmpty'.tr();
  static String get specialistsEmptyDesc => 'specialistsEmptyDesc'.tr();

  static String get nearbyPermission => 'nearbyPermission'.tr();
  static String get nearbyPermissionDesc => 'nearbyPermissionDesc'.tr();

  static String get businessEmpty => 'businessEmpty'.tr();
  static String get businessEmptyDesc => 'businessEmptyDesc'.tr();

  static String get businessEmployeeListEmpty =>
      'businessEmployeeListEmpty'.tr();
  static String get businessEmployeeListEmptyDesc =>
      'businessEmployeeListEmptyDesc'.tr();

  ///
  /// Location
  ///

  static String get location => 'location'.tr();

  static String get turnOnLocation => 'turnOnLocation'.tr();
  static String get turnOnLocationDesc => 'turnOnLocationDesc'.tr();

  static String get automatically => 'automatically'.tr();

  static String get useLocation => 'useLocation'.tr();
  static String get indicateLocation => 'indicateLocation'.tr();
  static String get notIndicated => 'notIndicated'.tr();

  static String get countrySelection => 'countrySelection'.tr();
  static String get citySelection => 'citySelection'.tr();

  static String get countrySearchEmptyDesc => 'countrySearchEmptyDesc'.tr();
  static String get citySearchEmptyDesc => 'citySearchEmptyDesc'.tr();

  static String get enterCityName => 'enterCityName'.tr();

  ///
  /// Contacts
  ///

  static String get selectFromContacts => 'selectFromContacts'.tr();
  static String get myContacts => 'myContacts'.tr();

  static String get selected => 'selected'.tr();
  static String get selectAll => 'selectAll'.tr();
  static String get deselectAll => 'deselectAll'.tr();

  static String get confirmContactDeletion => 'confirmContactDeletion'.tr();

  static String get contactsEmpty => 'contactsEmpty'.tr();
  static String get contactsEmptyDesc => 'contactsEmptyDesc'.tr();

  static String get contactsPermission => 'contactsPermission'.tr();
  static String get contactsPermissionDesc => 'contactsPermissionDesc'.tr();

  ///
  /// Contact Editor
  ///

  static String get addNew => 'addNew'.tr();
  static String get addContact => 'addContact'.tr();
  static String get editContact => 'editContact'.tr();

  static String get sameAsOwnerPhoneError => 'sameAsOwnerPhoneError'.tr();

  ///
  /// Invite
  ///

  static String get clientNotInTheSystem => 'clientNotInTheSystem'.tr();
  static String get specialistNotInTheSystem => 'specialistNotInTheSystem'.tr();
  static String get sendInvite => 'sendInvite'.tr();

  ///
  /// Search
  ///

  static String get searchEmpty => 'searchEmpty'.tr();
  static String get searchEmptyDesc => 'searchEmptyDesc'.tr();

  static String get noInputSearchDesc => 'noInputSearchDesc'.tr();

  static String get searchServiceEmptyDesc => 'searchServiceEmptyDesc'.tr();

  ///
  /// Specialist Profile
  ///

  static String get specialistPortfolioEmpty => 'specialistPortfolioEmpty'.tr();
  static String get specialistPortfolioEmptyDesc =>
      'specialistPortfolioEmptyDesc'.tr();

  static String get specialistPriceListEmpty => 'specialistPriceListEmpty'.tr();
  static String get specialistPriceListEmptyDesc =>
      'specialistPriceListEmptyDesc'.tr();

  static String get clientPriceListEmpty => 'clientPriceListEmpty'.tr();
  static String get clientPriceListEmptyDesc => 'clientPriceListEmptyDesc'.tr();

  static String get specialistBusinessEmpty => 'specialistBusinessEmpty'.tr();
  static String get specialistBusinessEmptyDesc =>
      'specialistBusinessEmptyDesc'.tr();

  static String get specialistScheduleEmpty => 'specialistScheduleEmpty'.tr();
  static String get specialistScheduleEmptyDesc =>
      'specialistScheduleEmptyDesc'.tr();

  ///
  /// Share
  ///

  static String get inviteFriends => 'inviteFriends'.tr();
  static String get writeInviteText => 'writeInviteText'.tr();
  static String get share => 'share'.tr();
  static String get shareInvitation => 'shareInvitation'.tr();
  static String get copySuccess => 'copySuccess'.tr();

  ///
  /// Booking
  ///

  static String get chooseService => 'chooseService'.tr();

  static String get chooseDateAndTime => 'chooseDateAndTime'.tr();
  static String get chooseDate => 'chooseDate'.tr();
  static String get chooseTime => 'chooseTime'.tr();

  static String get bookingDetails => 'bookingDetails'.tr();
  static String get selectedServices => 'selectedServices'.tr();

  static String get dateAndTime => 'dateAndTime'.tr();

  static String get openProfile => 'openProfile'.tr();

  static String get bookingTimeWarningTitle => 'bookingTimeWarningTitle'.tr();
  static String get bookingTimeWarningDesc => 'bookingTimeWarningDesc'.tr();

  static String get numberNotAvailable => 'numberNotAvailable'.tr();

  static String get brandAndSpecialist => 'brandAndSpecialist'.tr();

  static String get timezoneWarning => 'timezoneWarning'.tr();

  ///
  /// Rating
  ///

  static String get rating => 'rating'.tr();

  static String get oneMoreReview => 'oneMoreReview'.tr();
  static String get moreReviews => 'moreReviews'.tr();
  static String get reviews => 'reviews'.tr();

  static String get leaveFeedback => 'leaveFeedback'.tr();
  static String get leaveFeedbackDesc => 'leaveFeedbackDesc'.tr();

  static String get specialistRating => 'specialistRating'.tr();
  static String get serviceRating => 'serviceRating'.tr();

  static String get writeFeedback => 'writeFeedback'.tr();
  static String get rateNow => 'rateNow'.tr();

  ///
  /// Feedback
  ///

  static String get report => 'report'.tr();

  static String get feedback => 'feedback'.tr();

  static String get reportReason => 'reportReason'.tr();
  static String get reportReasonDesc => 'reportReasonDesc'.tr();
  static String get incorrectFeedback => 'incorrectFeedback'.tr();
  static String get inappropriateContent => 'inappropriateContent'.tr();
  static String get specifyAnotherReason => 'specifyAnotherReason'.tr();

  static String get sendReport => 'sendReport'.tr();

  static String get reportSentTitle => 'reportSentTitle'.tr();
  static String get reportSentDesc => 'reportSentDesc'.tr();

  static String get feedbackEmpty => 'feedbackEmpty'.tr();
  static String get feedbackEmptyDesc => 'feedbackEmptyDesc'.tr();

  ///
  /// Clients
  ///

  static String get clientsEmpty => 'clientsEmpty'.tr();
  static String get clientsEmptyDesc => 'clientsEmptyDesc'.tr();

  ///
  /// Client Profile
  ///

  static String get contactDetails => 'contactDetails'.tr();

  static String get record => 'record'.tr();

  static String get call => 'call'.tr();

  static String get historyEmpty => 'historyEmpty'.tr();
  static String get clientHistoryEmptyDesc => 'clientHistoryEmptyDesc'.tr();

  static String get clientNotesEmpty => 'clientNotesEmpty'.tr();
  static String get clientNotesEmptyDesc => 'clientNotesEmptyDesc'.tr();
  static String get confirmNoteDeletion => 'confirmNoteDeletion'.tr();

  static String get clientPhotoEmptyDesc => 'clientPhotoEmptyDesc'.tr();

  /// Showcases
  ///

  static String get addClientShowcaseTitle => 'addClientShowcaseTitle'.tr();
  static String get addClientShowcaseDesc => 'addClientShowcaseDesc'.tr();

  static String get addBookingShowcaseTitle => 'addBookingShowcaseTitle'.tr();
  static String get addBookingShowcaseDesc => 'addBookingShowcaseDesc'.tr();

  static String get addSpecialistShowcaseTitle =>
      'addSpecialistShowcaseTitle'.tr();
  static String get addSpecialistShowcaseDesc =>
      'addSpecialistShowcaseDesc'.tr();

  static String get addEmployeeShowcaseTitle => 'addEmployeeShowcaseTitle'.tr();
  static String get addEmployeeShowcaseDesc => 'addEmployeeShowcaseDesc'.tr();
}
