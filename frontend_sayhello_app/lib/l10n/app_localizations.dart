import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en'),
    Locale('es'),
    Locale('ja'),
    Locale('ko'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'SayHello'**
  String get appTitle;

  /// Subtitle about practicing languages
  ///
  /// In en, this message translates to:
  /// **'Practice 5+ languages'**
  String get practiceLanguages;

  /// Subtitle about meeting friends
  ///
  /// In en, this message translates to:
  /// **'Meet 50 million global friends'**
  String get meetFriends;

  /// Button text for learner login
  ///
  /// In en, this message translates to:
  /// **'I am a Learner'**
  String get iAmLearner;

  /// Button text for instructor login
  ///
  /// In en, this message translates to:
  /// **'I am an Instructor'**
  String get iAmInstructor;

  /// Terms of service link text
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// Privacy policy link text
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Agreement text before terms and privacy policy links
  ///
  /// In en, this message translates to:
  /// **'Your first login creates your account, and in doing so you agree to our'**
  String get agreementText;

  /// Conjunction word
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// Greeting text
  ///
  /// In en, this message translates to:
  /// **'Hello,'**
  String get hello;

  /// Language selector label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Select language dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Learner sign in page title
  ///
  /// In en, this message translates to:
  /// **'Learner Sign In'**
  String get learnerSignIn;

  /// Instructor sign in page title
  ///
  /// In en, this message translates to:
  /// **'Instructor Sign In'**
  String get instructorSignIn;

  /// Greeting message for instructor
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get welcomeBack;

  /// Sign in page subtitle
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue learning.'**
  String get signInToContinue;

  /// Username field label
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// Password field label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Sign in button text
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Learner sign up page title
  ///
  /// In en, this message translates to:
  /// **'Learner Sign Up'**
  String get learnerSignUp;

  /// Instructor sign up page title
  ///
  /// In en, this message translates to:
  /// **'Instructor Sign Up'**
  String get instructorSignUp;

  /// Create account header text
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// Sign up page subtitle
  ///
  /// In en, this message translates to:
  /// **'Join our learning community.'**
  String get joinCommunity;

  /// Email field label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Confirm password field label
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// Link text to sign in page
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// Welcome message for instructor
  ///
  /// In en, this message translates to:
  /// **'Welcome Instructor'**
  String get welcomeInstructor;

  /// Subtitle for instructor sign in
  ///
  /// In en, this message translates to:
  /// **'Please sign in to manage your courses.'**
  String get signInToManageCourses;

  /// Sign up page header
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get createYourAccount;

  /// Name field label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Native language dropdown label
  ///
  /// In en, this message translates to:
  /// **'Native Language'**
  String get nativeLanguage;

  /// Learning language dropdown label
  ///
  /// In en, this message translates to:
  /// **'Learning Language'**
  String get learningLanguage;

  /// Gender filter
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// Country field label
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// Bio field label
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get bio;

  /// Male gender option
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// Female gender option
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// Other gender option
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// English language option
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Arabic language option
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// Japanese language
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// Bangla language option
  ///
  /// In en, this message translates to:
  /// **'Bangla'**
  String get bangla;

  /// Korean language option
  ///
  /// In en, this message translates to:
  /// **'Korean'**
  String get korean;

  /// Bengali language option
  ///
  /// In en, this message translates to:
  /// **'Bengali'**
  String get bengali;

  /// Message when language is changed
  ///
  /// In en, this message translates to:
  /// **'Language changed to'**
  String get languageChangedTo;

  /// Profile photo section title
  ///
  /// In en, this message translates to:
  /// **'Profile Photo'**
  String get profilePhoto;

  /// Instruction to add profile photo
  ///
  /// In en, this message translates to:
  /// **'Tap to add photo'**
  String get tapToAddPhoto;

  /// Home tab label
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Connect tab label
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get connect;

  /// Feed tab label
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// Learn tab label
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get learn;

  /// Profile tab label
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Edit button text
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Delete button text
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Settings menu label
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Step 1 title for personal information (short)
  ///
  /// In en, this message translates to:
  /// **'Step 1: Personal Info'**
  String get step1PersonalInfo;

  /// Step 2 title for language and bio
  ///
  /// In en, this message translates to:
  /// **'Step 2: Language & Bio'**
  String get step2LanguageBio;

  /// Step 3 title for additional information
  ///
  /// In en, this message translates to:
  /// **'Step 3: Additional Info'**
  String get step3AdditionalInfo;

  /// Full name field label
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// Date of birth field label
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// Choose date of birth button text
  ///
  /// In en, this message translates to:
  /// **'Choose DOB'**
  String get chooseDOB;

  /// Label for upcoming sessions count
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Back button text
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Submit button text
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Required field validation message
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// Teaching language dropdown label
  ///
  /// In en, this message translates to:
  /// **'Teaching Language'**
  String get teachingLanguage;

  /// Optional bio field label
  ///
  /// In en, this message translates to:
  /// **'Bio (Optional)'**
  String get bioOptional;

  /// Success message for instructor registration
  ///
  /// In en, this message translates to:
  /// **'Instructor Registered Successfully!'**
  String get instructorRegisteredSuccessfully;

  /// Success message for learner registration
  ///
  /// In en, this message translates to:
  /// **'Learner Registered Successfully!'**
  String get learnerRegisteredSuccessfully;

  /// Skill level label
  ///
  /// In en, this message translates to:
  /// **'Skill Level'**
  String get skillLevel;

  /// Beginner level option
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get beginner;

  /// Basic skill level
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basic;

  /// Intermediate level option
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get intermediate;

  /// Advanced level option
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advanced;

  /// Fluent skill level
  ///
  /// In en, this message translates to:
  /// **'Fluent'**
  String get fluent;

  /// Select interests label
  ///
  /// In en, this message translates to:
  /// **'Select Interests'**
  String get selectInterests;

  /// Music interest
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// Travel interest
  ///
  /// In en, this message translates to:
  /// **'Travel'**
  String get travel;

  /// Books interest
  ///
  /// In en, this message translates to:
  /// **'Books'**
  String get books;

  /// Gaming interest
  ///
  /// In en, this message translates to:
  /// **'Gaming'**
  String get gaming;

  /// Cooking interest
  ///
  /// In en, this message translates to:
  /// **'Cooking'**
  String get cooking;

  /// Movies interest
  ///
  /// In en, this message translates to:
  /// **'Movies'**
  String get movies;

  /// Photography interest
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get photography;

  /// Fitness interest
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get fitness;

  /// Art interest
  ///
  /// In en, this message translates to:
  /// **'Art'**
  String get art;

  /// Other files count label
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// Bangladesh country option
  ///
  /// In en, this message translates to:
  /// **'Bangladesh'**
  String get bangladesh;

  /// USA country option
  ///
  /// In en, this message translates to:
  /// **'USA'**
  String get usa;

  /// UK country option
  ///
  /// In en, this message translates to:
  /// **'UK'**
  String get uk;

  /// India country option
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get india;

  /// Japan country option
  ///
  /// In en, this message translates to:
  /// **'Japan'**
  String get japan;

  /// Korea country option
  ///
  /// In en, this message translates to:
  /// **'Korea'**
  String get korea;

  /// Saudi Arabia country option
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia'**
  String get saudiArabia;

  /// Step 2 title for language information
  ///
  /// In en, this message translates to:
  /// **'Step 2: Language Info'**
  String get step2LanguageInfo;

  /// Native language dropdown label (short)
  ///
  /// In en, this message translates to:
  /// **'Native Language'**
  String get nativeLanguageShort;

  /// Learning language dropdown label (short)
  ///
  /// In en, this message translates to:
  /// **'Learning Language'**
  String get learningLanguageShort;

  /// All courses page title
  ///
  /// In en, this message translates to:
  /// **'All Courses'**
  String get allCourses;

  /// Play category label
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get play;

  /// Translate page title and button
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translate;

  /// Japanese AI category label
  ///
  /// In en, this message translates to:
  /// **'Japanese AI'**
  String get japaneseAi;

  /// More category label
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// How are you greeting
  ///
  /// In en, this message translates to:
  /// **'Hello, how are you?'**
  String get howAreYou;

  /// New user greeting
  ///
  /// In en, this message translates to:
  /// **'Hi, I am new here!'**
  String get hiNewHere;

  /// Waved interaction message
  ///
  /// In en, this message translates to:
  /// **'You waved at'**
  String get youWavedAt;

  /// Search text
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Search placeholder for people
  ///
  /// In en, this message translates to:
  /// **'Search People'**
  String get searchPeople;

  /// Courses text
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get courses;

  /// Chat label
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// Online status text
  ///
  /// In en, this message translates to:
  /// **'online'**
  String get online;

  /// Offline status
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// Typing indicator
  ///
  /// In en, this message translates to:
  /// **'Typing...'**
  String get typing;

  /// Send message placeholder
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get sendMessage;

  /// No messages placeholder
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get noMessages;

  /// Loading indicator
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Error message
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Try again button
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// Success message
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Message failed status
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// Confirm button text
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Yes button
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No button
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Open button
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// View button
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// Add button
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Remove button
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// Button text to update session
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// Refresh button
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// Share button
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Copy button
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// Paste button
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// Cut button
  ///
  /// In en, this message translates to:
  /// **'Cut'**
  String get cut;

  /// Select all button
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// Clear button
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Reset button
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Apply button
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// Send button
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// Receive button
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get receive;

  /// Upload button text
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// Download button
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// Import button
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get importData;

  /// Export button
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get exportData;

  /// Print button
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// Preview button
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// Continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Skip button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Finish button
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// Label for completed sessions count
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Complete status
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// Button text to start session
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// Stop button
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// Pause button
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// Resume button
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;

  /// Mute button
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get mute;

  /// Unmute button
  ///
  /// In en, this message translates to:
  /// **'Unmute'**
  String get unmute;

  /// Volume control
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get volume;

  /// Brightness control
  ///
  /// In en, this message translates to:
  /// **'Brightness'**
  String get brightness;

  /// Notifications page title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Privacy label
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// Security label
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// Account label
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// General settings
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// About section title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Help section
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// Support section
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// Tab label for feedback
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// Contact section
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// Version label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// Changelog label
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get changelog;

  /// License label
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get license;

  /// Legal section
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get legal;

  /// Terms label
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;

  /// Disclaimer label
  ///
  /// In en, this message translates to:
  /// **'Disclaimer'**
  String get disclaimer;

  /// Acknowledgments section
  ///
  /// In en, this message translates to:
  /// **'Acknowledgments'**
  String get acknowledgments;

  /// Language Talks app name
  ///
  /// In en, this message translates to:
  /// **'Language Talks'**
  String get languageTalks;

  /// Last seen status
  ///
  /// In en, this message translates to:
  /// **'Last seen'**
  String get lastSeen;

  /// Message input placeholder
  ///
  /// In en, this message translates to:
  /// **'Type a message...'**
  String get typeMessage;

  /// Just now time indicator
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// Days ago with count
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String daysAgoCount(int count);

  /// Hours ago with count
  ///
  /// In en, this message translates to:
  /// **'{count}h ago'**
  String hoursAgoCount(int count);

  /// Minutes ago with count
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String minutesAgoCount(int count);

  /// Yesterday time indicator
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// Today time indicator
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// Call started notification
  ///
  /// In en, this message translates to:
  /// **'Call started'**
  String get callStarted;

  /// Video call label
  ///
  /// In en, this message translates to:
  /// **'Video Call'**
  String get videoCall;

  /// Audio call label
  ///
  /// In en, this message translates to:
  /// **'Audio Call'**
  String get audioCall;

  /// End call button
  ///
  /// In en, this message translates to:
  /// **'End Call'**
  String get endCall;

  /// Answer call button
  ///
  /// In en, this message translates to:
  /// **'Answer Call'**
  String get answerCall;

  /// Decline call button
  ///
  /// In en, this message translates to:
  /// **'Decline Call'**
  String get declineCall;

  /// Calling status
  ///
  /// In en, this message translates to:
  /// **'Calling...'**
  String get calling;

  /// Connecting status
  ///
  /// In en, this message translates to:
  /// **'Connecting...'**
  String get connecting;

  /// Connected status
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connected;

  /// Disconnected status
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get disconnected;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Block user button
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// Unblock user button
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get unblock;

  /// Report user button
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// Report user dialog title
  ///
  /// In en, this message translates to:
  /// **'Report User'**
  String get reportUser;

  /// Block user dialog title
  ///
  /// In en, this message translates to:
  /// **'Block User'**
  String get blockUser;

  /// Age filter
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// Interests label
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get interests;

  /// Native language label
  ///
  /// In en, this message translates to:
  /// **'Native Language'**
  String get nativeLanguageLabel;

  /// Learning language label
  ///
  /// In en, this message translates to:
  /// **'Learning Language'**
  String get learningLanguageLabel;

  /// Wave action
  ///
  /// In en, this message translates to:
  /// **'Wave'**
  String get wave;

  /// Waved past tense
  ///
  /// In en, this message translates to:
  /// **'Waved'**
  String get waved;

  /// Waved at someone
  ///
  /// In en, this message translates to:
  /// **'waved at'**
  String get wavedAt;

  /// React to message
  ///
  /// In en, this message translates to:
  /// **'React'**
  String get react;

  /// Reply to comment
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// Forward message
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get forward;

  /// Message info
  ///
  /// In en, this message translates to:
  /// **'Message Info'**
  String get messageInfo;

  /// Message delivered status
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// Message read status
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get read;

  /// Message sent status
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get sent;

  /// Message sending status
  ///
  /// In en, this message translates to:
  /// **'Sending'**
  String get sending;

  /// Select contact title
  ///
  /// In en, this message translates to:
  /// **'Select Contact'**
  String get selectContact;

  /// New message title
  ///
  /// In en, this message translates to:
  /// **'New Message'**
  String get newMessage;

  /// New group title
  ///
  /// In en, this message translates to:
  /// **'New Group'**
  String get newGroup;

  /// Create group button
  ///
  /// In en, this message translates to:
  /// **'Create Group'**
  String get createGroup;

  /// Group name field
  ///
  /// In en, this message translates to:
  /// **'Group Name'**
  String get groupName;

  /// Add members button
  ///
  /// In en, this message translates to:
  /// **'Add Members'**
  String get addMembers;

  /// Members label
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// Admin role
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// Moderator role
  ///
  /// In en, this message translates to:
  /// **'Moderator'**
  String get moderator;

  /// Member role
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// Leave group button
  ///
  /// In en, this message translates to:
  /// **'Leave Group'**
  String get leaveGroup;

  /// Delete group button
  ///
  /// In en, this message translates to:
  /// **'Delete Group'**
  String get deleteGroup;

  /// Group info title
  ///
  /// In en, this message translates to:
  /// **'Group Info'**
  String get groupInfo;

  /// Edit group button
  ///
  /// In en, this message translates to:
  /// **'Edit Group'**
  String get editGroup;

  /// Add member button
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// Remove member button
  ///
  /// In en, this message translates to:
  /// **'Remove Member'**
  String get removeMember;

  /// Make admin button
  ///
  /// In en, this message translates to:
  /// **'Make Admin'**
  String get makeAdmin;

  /// Remove admin button
  ///
  /// In en, this message translates to:
  /// **'Remove Admin'**
  String get removeAdmin;

  /// You left group message
  ///
  /// In en, this message translates to:
  /// **'You left'**
  String get youLeft;

  /// You joined group message
  ///
  /// In en, this message translates to:
  /// **'You joined'**
  String get youJoined;

  /// Joined days label
  ///
  /// In en, this message translates to:
  /// **'Joined'**
  String get joined;

  /// Someone left message
  ///
  /// In en, this message translates to:
  /// **'left'**
  String get left;

  /// Someone was removed message
  ///
  /// In en, this message translates to:
  /// **'was removed'**
  String get wasRemoved;

  /// Someone was added message
  ///
  /// In en, this message translates to:
  /// **'was added'**
  String get wasAdded;

  /// Someone became admin message
  ///
  /// In en, this message translates to:
  /// **'became admin'**
  String get becameAdmin;

  /// Someone is no longer admin message
  ///
  /// In en, this message translates to:
  /// **'is no longer admin'**
  String get noLongerAdmin;

  /// Emoji picker feature notification
  ///
  /// In en, this message translates to:
  /// **'Emoji picker coming soon!'**
  String get emojiPickerComingSoon;

  /// Starting video call notification
  ///
  /// In en, this message translates to:
  /// **'Starting video call...'**
  String get startingVideoCall;

  /// Message sent notification
  ///
  /// In en, this message translates to:
  /// **'Message sent'**
  String get messageSent;

  /// View profile action
  ///
  /// In en, this message translates to:
  /// **'View Profile'**
  String get viewProfile;

  /// Mute chat action
  ///
  /// In en, this message translates to:
  /// **'Mute Chat'**
  String get muteChat;

  /// Unmute chat action
  ///
  /// In en, this message translates to:
  /// **'Unmute Chat'**
  String get unmuteChat;

  /// Clear chat action
  ///
  /// In en, this message translates to:
  /// **'Clear Chat'**
  String get clearChat;

  /// Delete chat action
  ///
  /// In en, this message translates to:
  /// **'Delete Chat'**
  String get deleteChat;

  /// Chat options title
  ///
  /// In en, this message translates to:
  /// **'Chat Options'**
  String get chatOptions;

  /// Add course tab label
  ///
  /// In en, this message translates to:
  /// **'Add Course'**
  String get addCourse;

  /// Search placeholder text for seeing other people's chats
  ///
  /// In en, this message translates to:
  /// **'See People\'s Chats'**
  String get seePeoplesChats;

  /// Search courses placeholder
  ///
  /// In en, this message translates to:
  /// **'Search for courses...'**
  String get searchCourses;

  /// New message indicator
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newLabel;

  /// Popular courses filter
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// Swap languages tooltip
  ///
  /// In en, this message translates to:
  /// **'Swap Languages'**
  String get swapLanguages;

  /// Translation input placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter text to translate'**
  String get enterTextToTranslate;

  /// Recent tab in feed
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// For You tab in feed
  ///
  /// In en, this message translates to:
  /// **'For You'**
  String get forYou;

  /// Number of likes
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get likes;

  /// Number of comments
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// View all comments button text
  ///
  /// In en, this message translates to:
  /// **'View all {count} comments'**
  String viewAllComments(int count);

  /// See more text for expandable content
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get seeMore;

  /// See less text for expandable content
  ///
  /// In en, this message translates to:
  /// **'less'**
  String get seeLess;

  /// Translated content indicator
  ///
  /// In en, this message translates to:
  /// **'Translated'**
  String get translated;

  /// Following button state
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// Follow button
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// Details page title
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// Liked by users text
  ///
  /// In en, this message translates to:
  /// **'Liked by'**
  String get likedBy;

  /// Add comment placeholder
  ///
  /// In en, this message translates to:
  /// **'Add a comment...'**
  String get addComment;

  /// Find partners page title
  ///
  /// In en, this message translates to:
  /// **'Find Partners'**
  String get findPartners;

  /// Filter option for all courses
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Serious learners filter
  ///
  /// In en, this message translates to:
  /// **'Serious Learners'**
  String get seriousLearners;

  /// Nearby filter
  ///
  /// In en, this message translates to:
  /// **'Nearby'**
  String get nearby;

  /// Language level section
  ///
  /// In en, this message translates to:
  /// **'Language Level'**
  String get languageLevel;

  /// Elementary level
  ///
  /// In en, this message translates to:
  /// **'Elementary'**
  String get elementary;

  /// Proficient level
  ///
  /// In en, this message translates to:
  /// **'Proficient'**
  String get proficient;

  /// New users filter
  ///
  /// In en, this message translates to:
  /// **'New Users'**
  String get newUsers;

  /// Advanced search section
  ///
  /// In en, this message translates to:
  /// **'Advanced Search'**
  String get advancedSearch;

  /// Region dropdown label
  ///
  /// In en, this message translates to:
  /// **'Region of language partner'**
  String get regionOfLanguagePartner;

  /// City dropdown label
  ///
  /// In en, this message translates to:
  /// **'City of language partner'**
  String get cityOfLanguagePartner;

  /// Comments section with count
  ///
  /// In en, this message translates to:
  /// **'Comments ({count})'**
  String commentsWithCount(int count);

  /// Likes count text
  ///
  /// In en, this message translates to:
  /// **'{count} Likes >'**
  String likesWithCount(int count);

  /// No likes message
  ///
  /// In en, this message translates to:
  /// **'No likes yet'**
  String get noLikesYet;

  /// Just now time indicator
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get now;

  /// You pronoun
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// Language learning page title
  ///
  /// In en, this message translates to:
  /// **'Language Learn'**
  String get languageLearn;

  /// Enrolled course status
  ///
  /// In en, this message translates to:
  /// **'Enrolled'**
  String get enrolled;

  /// Other courses tab label
  ///
  /// In en, this message translates to:
  /// **'Other Courses'**
  String get otherCourses;

  /// Text label for number of students
  ///
  /// In en, this message translates to:
  /// **'students'**
  String get students;

  /// Status badge for completed courses
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// In progress status
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// Course completed status text
  ///
  /// In en, this message translates to:
  /// **'Course Completed'**
  String get courseCompleted;

  /// View all button text
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// Instructor role label
  ///
  /// In en, this message translates to:
  /// **'Instructor'**
  String get instructor;

  /// Course description section title
  ///
  /// In en, this message translates to:
  /// **'Course Description'**
  String get courseDescription;

  /// Course duration label
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// Start date field label
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// End date field label
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// Course price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// Enroll button prefix
  ///
  /// In en, this message translates to:
  /// **'Enroll for'**
  String get enrollFor;

  /// Successful enrollment message
  ///
  /// In en, this message translates to:
  /// **'Enrolled successfully!'**
  String get enrolledSuccessfully;

  /// Tab label for course details
  ///
  /// In en, this message translates to:
  /// **'Course Details'**
  String get courseDetails;

  /// Tab label for online sessions
  ///
  /// In en, this message translates to:
  /// **'Online Sessions'**
  String get onlineSessions;

  /// Tab label for recorded classes
  ///
  /// In en, this message translates to:
  /// **'Recorded Classes'**
  String get recordedClasses;

  /// Recorded sessions description
  ///
  /// In en, this message translates to:
  /// **'Access all recorded sessions anytime'**
  String get accessAllRecordedSessions;

  /// Video library title
  ///
  /// In en, this message translates to:
  /// **'Video Library'**
  String get videoLibrary;

  /// Total videos count label
  ///
  /// In en, this message translates to:
  /// **'Total Videos'**
  String get totalVideos;

  /// Total duration stat label
  ///
  /// In en, this message translates to:
  /// **'Total Duration'**
  String get totalDuration;

  /// Total size label
  ///
  /// In en, this message translates to:
  /// **'Total Size'**
  String get totalSize;

  /// Loading message while video metadata is being loaded
  ///
  /// In en, this message translates to:
  /// **'Loading video metadata...'**
  String get loadingVideoMetadata;

  /// Progress completion percentage
  ///
  /// In en, this message translates to:
  /// **'{percent}% Complete'**
  String completeProgress(int percent);

  /// Error message when video metadata loading fails
  ///
  /// In en, this message translates to:
  /// **'Failed to load video metadata'**
  String get failedToLoadVideoMetadata;

  /// Empty state message when no videos
  ///
  /// In en, this message translates to:
  /// **'No videos available'**
  String get noVideosAvailable;

  /// Empty state subtitle message
  ///
  /// In en, this message translates to:
  /// **'Check back later for recorded classes'**
  String get checkBackLaterForRecorded;

  /// Failed videos count message
  ///
  /// In en, this message translates to:
  /// **'{failed} of {total} videos failed to load metadata'**
  String failedVideosCount(int failed, int total);

  /// Error message for failed video loading
  ///
  /// In en, this message translates to:
  /// **'Failed to load'**
  String get failedToLoad;

  /// Message when video has no description
  ///
  /// In en, this message translates to:
  /// **'No description available'**
  String get noDescriptionAvailable;

  /// Video error message
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String videoError(String error);

  /// Unknown upload date placeholder
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknownUploadDate;

  /// Watch video button text
  ///
  /// In en, this message translates to:
  /// **'Watch Now'**
  String get watchNow;

  /// Success message for video metadata loading
  ///
  /// In en, this message translates to:
  /// **'✅ Video metadata loaded successfully'**
  String get videoMetadataLoadedSuccessfully;

  /// Snackbar error message for video metadata loading
  ///
  /// In en, this message translates to:
  /// **'❌ Failed to load video metadata'**
  String get failedToLoadVideoMetadataSnackbar;

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'❌ Error: {error}'**
  String errorMessage(String error);

  /// Cannot play video error message
  ///
  /// In en, this message translates to:
  /// **'❌ Cannot play video: {error}'**
  String cannotPlayVideoError(String error);

  /// Loading dialog message for video player
  ///
  /// In en, this message translates to:
  /// **'Loading Video Player...'**
  String get loadingVideoPlayer;

  /// Video duration and size display
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration} • Size: {size}'**
  String videoDurationSize(String duration, String size);

  /// Video information snackbar header
  ///
  /// In en, this message translates to:
  /// **'📹 Video Information:'**
  String get videoInformation;

  /// Label for video title field
  ///
  /// In en, this message translates to:
  /// **'Video Title'**
  String get videoTitle;

  /// Video duration in info
  ///
  /// In en, this message translates to:
  /// **'• Duration: {duration}'**
  String videoDurationInfo(String duration);

  /// Video status in info
  ///
  /// In en, this message translates to:
  /// **'• Status: {status}'**
  String videoStatusInfo(String status);

  /// Video resolution in info
  ///
  /// In en, this message translates to:
  /// **'• Resolution: {width}x{height}'**
  String videoResolutionInfo(int width, int height);

  /// Video status when loaded
  ///
  /// In en, this message translates to:
  /// **'Loaded'**
  String get videoStatusLoaded;

  /// Video status when loading
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get videoStatusLoading;

  /// Video info button tooltip
  ///
  /// In en, this message translates to:
  /// **'Video Info'**
  String get videoInfo;

  /// Loading video message
  ///
  /// In en, this message translates to:
  /// **'Loading video...'**
  String get loadingVideo;

  /// Failed to load video error message
  ///
  /// In en, this message translates to:
  /// **'Failed to load video'**
  String get failedToLoadVideo;

  /// Preparing video loading message
  ///
  /// In en, this message translates to:
  /// **'Preparing video...'**
  String get preparingVideo;

  /// Connection timeout error message
  ///
  /// In en, this message translates to:
  /// **'Connection timeout. Please check your internet and try again.'**
  String get connectionTimeoutMessage;

  /// Video not found error message
  ///
  /// In en, this message translates to:
  /// **'Video not found. The video URL may be invalid.'**
  String get videoNotFoundMessage;

  /// Network error message
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your internet connection.'**
  String get networkErrorMessage;

  /// Video loading timeout error message
  ///
  /// In en, this message translates to:
  /// **'Video loading timeout - Check your internet connection'**
  String get videoLoadingTimeoutMessage;

  /// Generic video error message
  ///
  /// In en, this message translates to:
  /// **'Video Error: {error}'**
  String videoErrorGeneric(String error);

  /// Unknown error fallback message
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// Tab label for study materials
  ///
  /// In en, this message translates to:
  /// **'Study Materials'**
  String get studyMaterials;

  /// Study materials description
  ///
  /// In en, this message translates to:
  /// **'Download and access course materials'**
  String get downloadAndAccessMaterials;

  /// Label for total sessions count
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// PDF files count label
  ///
  /// In en, this message translates to:
  /// **'PDFs'**
  String get pdfs;

  /// Image files count label
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get images;

  /// Button to expand description text
  ///
  /// In en, this message translates to:
  /// **'Show More'**
  String get showMore;

  /// Button to collapse description text
  ///
  /// In en, this message translates to:
  /// **'Show Less'**
  String get showLess;

  /// Default title for materials without name
  ///
  /// In en, this message translates to:
  /// **'Untitled Material'**
  String get untitledMaterial;

  /// Error message when material has no URL
  ///
  /// In en, this message translates to:
  /// **'❌ No URL available for this material'**
  String get noUrlAvailable;

  /// Loading message when opening file
  ///
  /// In en, this message translates to:
  /// **'Opening {type}...'**
  String openingFileType(String type);

  /// Error message when no download URL
  ///
  /// In en, this message translates to:
  /// **'❌ No URL available for download'**
  String get noUrlForDownload;

  /// Download dialog title
  ///
  /// In en, this message translates to:
  /// **'Download File'**
  String get downloadFile;

  /// Download confirmation message
  ///
  /// In en, this message translates to:
  /// **'This will open the file in your browser for download.'**
  String get downloadConfirmation;

  /// File type display with label
  ///
  /// In en, this message translates to:
  /// **'Type: {type}'**
  String fileTypeLabel(String type);

  /// Browser download explanation
  ///
  /// In en, this message translates to:
  /// **'Your browser will handle the download to your default downloads folder.'**
  String get browserHandleDownload;

  /// Open in browser button text
  ///
  /// In en, this message translates to:
  /// **'Open in Browser'**
  String get openInBrowser;

  /// Error message when browser cannot be opened
  ///
  /// In en, this message translates to:
  /// **'Could not open browser. Link copied to clipboard.'**
  String get couldNotOpenBrowser;

  /// Error message when browser fails
  ///
  /// In en, this message translates to:
  /// **'❌ Failed to open browser'**
  String get failedToOpenBrowser;

  /// Fallback action message
  ///
  /// In en, this message translates to:
  /// **'Link copied to clipboard instead.'**
  String get linkCopiedInstead;

  /// Success message for link copying
  ///
  /// In en, this message translates to:
  /// **'📎 Download link copied to clipboard'**
  String get downloadLinkCopied;

  /// Paste and go action text
  ///
  /// In en, this message translates to:
  /// **'Paste & Go'**
  String get pasteAndGo;

  /// Download instructions dialog title
  ///
  /// In en, this message translates to:
  /// **'Download Instructions'**
  String get downloadInstructions;

  /// Snackbar message when item is copied to clipboard
  ///
  /// In en, this message translates to:
  /// **'{item} copied to clipboard'**
  String linkCopiedToClipboard(String item);

  /// Download steps header
  ///
  /// In en, this message translates to:
  /// **'To download:'**
  String get toDownload;

  /// Download step 1
  ///
  /// In en, this message translates to:
  /// **'1. Open your browser'**
  String get openYourBrowser;

  /// Download step 2
  ///
  /// In en, this message translates to:
  /// **'2. Paste the link in the address bar'**
  String get pasteLinkInAddress;

  /// Download step 3
  ///
  /// In en, this message translates to:
  /// **'3. Press Enter to start download'**
  String get pressEnterToDownload;

  /// Acknowledgment button text
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// Error message when copying fails
  ///
  /// In en, this message translates to:
  /// **'Failed to copy link: {error}'**
  String failedToCopyLink(String error);

  /// Loading message in viewer
  ///
  /// In en, this message translates to:
  /// **'Loading {type}...'**
  String loadingFileTypeViewer(String type);

  /// Document loading error message
  ///
  /// In en, this message translates to:
  /// **'Failed to load document'**
  String get failedToLoadDocument;

  /// PDF loading success message
  ///
  /// In en, this message translates to:
  /// **'PDF loaded: {pages} pages'**
  String pdfLoadedPages(int pages);

  /// Image loading message
  ///
  /// In en, this message translates to:
  /// **'Loading image...'**
  String get loadingImage;

  /// Image loading error
  ///
  /// In en, this message translates to:
  /// **'Failed to load image'**
  String get failedToLoadImage;

  /// Image URL check instruction
  ///
  /// In en, this message translates to:
  /// **'Please check the image URL'**
  String get checkImageUrl;

  /// Document opening explanation
  ///
  /// In en, this message translates to:
  /// **'This document will open in your default browser or Google Docs app'**
  String get documentOpenInBrowser;

  /// Open document button text
  ///
  /// In en, this message translates to:
  /// **'Open Document'**
  String get openDocument;

  /// Go back button text
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// Unsupported file type message
  ///
  /// In en, this message translates to:
  /// **'Unsupported file type'**
  String get unsupportedFileType;

  /// URL opening error message
  ///
  /// In en, this message translates to:
  /// **'Failed to open URL: {error}'**
  String failedToOpenUrl(String error);

  /// Document opening loading message
  ///
  /// In en, this message translates to:
  /// **'Opening document in browser...'**
  String get openingDocumentInBrowser;

  /// Error message when there's an error opening browser
  ///
  /// In en, this message translates to:
  /// **'Error opening browser. Link copied to clipboard.'**
  String get errorOpeningBrowser;

  /// Link copied success message
  ///
  /// In en, this message translates to:
  /// **'{label} copied to clipboard'**
  String linkCopiedToClipboardViewer(String label);

  /// Copy failure message
  ///
  /// In en, this message translates to:
  /// **'Failed to copy {label}'**
  String failedToCopyLabel(String label);

  /// Document link label
  ///
  /// In en, this message translates to:
  /// **'Document link'**
  String get documentLink;

  /// Tab label for group chat
  ///
  /// In en, this message translates to:
  /// **'Group Chat'**
  String get groupChat;

  /// Progress indicator label
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// Learning journey subtitle
  ///
  /// In en, this message translates to:
  /// **'Your Learning Journey'**
  String get yourLearningJourney;

  /// Learning portal title
  ///
  /// In en, this message translates to:
  /// **'Learning Portal'**
  String get learningPortal;

  /// Course discussion chat title
  ///
  /// In en, this message translates to:
  /// **'Course Discussion'**
  String get courseDiscussion;

  /// Participants count text
  ///
  /// In en, this message translates to:
  /// **'participants'**
  String get participants;

  /// Chat message input hint
  ///
  /// In en, this message translates to:
  /// **'Type your message...'**
  String get typeYourMessage;

  /// Completed status in lowercase
  ///
  /// In en, this message translates to:
  /// **'completed'**
  String get completedLowercase;

  /// All enrolled courses title
  ///
  /// In en, this message translates to:
  /// **'All Enrolled Courses'**
  String get allEnrolledCourses;

  /// All other courses title
  ///
  /// In en, this message translates to:
  /// **'All Other Courses'**
  String get allOtherCourses;

  /// Message when no courses match search
  ///
  /// In en, this message translates to:
  /// **'No courses found'**
  String get noCoursesFound;

  /// Live sessions header
  ///
  /// In en, this message translates to:
  /// **'Live Sessions'**
  String get liveSessions;

  /// Live sessions description
  ///
  /// In en, this message translates to:
  /// **'Join interactive sessions with your instructor'**
  String get joinInteractiveSessions;

  /// Total sessions field label
  ///
  /// In en, this message translates to:
  /// **'Total Sessions'**
  String get totalSessions;

  /// Attended sessions label
  ///
  /// In en, this message translates to:
  /// **'Attended'**
  String get attended;

  /// Scheduled sessions title
  ///
  /// In en, this message translates to:
  /// **'Scheduled Sessions'**
  String get scheduledSessions;

  /// Topics covered label
  ///
  /// In en, this message translates to:
  /// **'Topics Covered:'**
  String get topicsCovered;

  /// Reminder set message prefix
  ///
  /// In en, this message translates to:
  /// **'Reminder set for'**
  String get reminderSetFor;

  /// Joining session message
  ///
  /// In en, this message translates to:
  /// **'Joining'**
  String get joining;

  /// Loading recording message prefix
  ///
  /// In en, this message translates to:
  /// **'Loading recording for'**
  String get loadingRecordingFor;

  /// Join session button
  ///
  /// In en, this message translates to:
  /// **'Join Session'**
  String get joinSession;

  /// Set reminder button
  ///
  /// In en, this message translates to:
  /// **'Set Reminder'**
  String get setReminder;

  /// View recording button
  ///
  /// In en, this message translates to:
  /// **'View Recording'**
  String get viewRecording;

  /// Session cancelled status
  ///
  /// In en, this message translates to:
  /// **'Session Cancelled'**
  String get sessionCancelled;

  /// View details button
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// Learning progress header
  ///
  /// In en, this message translates to:
  /// **'Learning Progress'**
  String get learningProgress;

  /// Learning progress description
  ///
  /// In en, this message translates to:
  /// **'Track your learning journey and achievements'**
  String get trackYourLearningJourney;

  /// Overall progress label
  ///
  /// In en, this message translates to:
  /// **'Overall Progress'**
  String get overallProgress;

  /// Course modules title
  ///
  /// In en, this message translates to:
  /// **'Course Modules'**
  String get courseModules;

  /// New filter option
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newText;

  /// Playing video message
  ///
  /// In en, this message translates to:
  /// **'Playing'**
  String get playing;

  /// Downloading message
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get downloading;

  /// Total materials count label
  ///
  /// In en, this message translates to:
  /// **'Total Materials'**
  String get totalMaterials;

  /// Downloaded status
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get downloaded;

  /// Opening file message
  ///
  /// In en, this message translates to:
  /// **'Opening'**
  String get opening;

  /// Watched filter option
  ///
  /// In en, this message translates to:
  /// **'Watched'**
  String get watched;

  /// Spanish language option
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// About me section title
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutMe;

  /// Self introduction label
  ///
  /// In en, this message translates to:
  /// **'Self-introduction'**
  String get selfIntroduction;

  /// Bio edit placeholder
  ///
  /// In en, this message translates to:
  /// **'Tell us about yourself...'**
  String get tellUsAboutYourself;

  /// Edit bio dialog title
  ///
  /// In en, this message translates to:
  /// **'Edit Bio'**
  String get editBio;

  /// Edit profile image dialog title
  ///
  /// In en, this message translates to:
  /// **'Edit Image'**
  String get editImage;

  /// Camera option
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// Gallery option
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// Take photo option
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// Select from gallery option
  ///
  /// In en, this message translates to:
  /// **'Select from Gallery'**
  String get selectFromGallery;

  /// Native language label
  ///
  /// In en, this message translates to:
  /// **'Native'**
  String get native;

  /// Learning language label
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get learning;

  /// Add hobbies button text
  ///
  /// In en, this message translates to:
  /// **'Add Hobbies'**
  String get addHobbies;

  /// Select hobbies dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Hobbies'**
  String get selectHobbies;

  /// Personal information section title
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// Select gender dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Gender'**
  String get selectGender;

  /// Select age dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Age'**
  String get selectAge;

  /// Birthday field label
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// Birthday update success message
  ///
  /// In en, this message translates to:
  /// **'Birthday updated successfully!'**
  String get birthdayUpdatedSuccessfully;

  /// Theme setting label
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Theme mode setting title
  ///
  /// In en, this message translates to:
  /// **'Theme Mode'**
  String get themeMode;

  /// Dark mode label
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// Light mode label
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// Movie hobby
  ///
  /// In en, this message translates to:
  /// **'Movie'**
  String get movie;

  /// Anime hobby
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get anime;

  /// Cosplay hobby
  ///
  /// In en, this message translates to:
  /// **'Cosplay'**
  String get cosplay;

  /// Reading hobby
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// Sports hobby
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get sports;

  /// Dancing hobby
  ///
  /// In en, this message translates to:
  /// **'Dancing'**
  String get dancing;

  /// Video call feature notification
  ///
  /// In en, this message translates to:
  /// **'Video call feature coming soon!'**
  String get videoCallFeature;

  /// Message translated notification
  ///
  /// In en, this message translates to:
  /// **'Message translated!'**
  String get messageTranslated;

  /// Original message label
  ///
  /// In en, this message translates to:
  /// **'Original:'**
  String get originalMessage;

  /// Correction message label
  ///
  /// In en, this message translates to:
  /// **'Correction:'**
  String get correctionMessage;

  /// Correct message dialog title
  ///
  /// In en, this message translates to:
  /// **'Correct Message'**
  String get correctMessage;

  /// Send attachment dialog title
  ///
  /// In en, this message translates to:
  /// **'Send Attachment'**
  String get sendAttachment;

  /// Photo attachment option
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// Voice attachment option
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get voice;

  /// Document attachment option
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// Location attachment option
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// Attachment feature notification
  ///
  /// In en, this message translates to:
  /// **'{attachment} attachment coming soon!'**
  String attachmentComingSoon(String attachment);

  /// Feature coming soon notification
  ///
  /// In en, this message translates to:
  /// **'{feature} feature coming soon!'**
  String featureComingSoon(String feature);

  /// Followers count label
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// Shared interests section title
  ///
  /// In en, this message translates to:
  /// **'Shared Interests'**
  String get sharedInterests;

  /// Interests and hobbies section title
  ///
  /// In en, this message translates to:
  /// **'Interests & Hobbies'**
  String get interestsAndHobbies;

  /// Message button text
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get messageButton;

  /// Call button text
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get callButton;

  /// Camera feature notification
  ///
  /// In en, this message translates to:
  /// **'Camera feature coming soon!'**
  String get cameraFeatureComingSoon;

  /// Gallery feature notification
  ///
  /// In en, this message translates to:
  /// **'Gallery feature coming soon!'**
  String get galleryFeatureComingSoon;

  /// Bio update success message
  ///
  /// In en, this message translates to:
  /// **'Bio updated successfully!'**
  String get bioUpdatedSuccessfully;

  /// Hobbies update success message
  ///
  /// In en, this message translates to:
  /// **'Hobbies updated successfully!'**
  String get hobbiesUpdatedSuccessfully;

  /// Gender update success message
  ///
  /// In en, this message translates to:
  /// **'Gender updated to {gender}'**
  String genderUpdatedTo(String gender);

  /// Age update success message
  ///
  /// In en, this message translates to:
  /// **'Age updated to {age}'**
  String ageUpdatedTo(int age);

  /// Field update success message
  ///
  /// In en, this message translates to:
  /// **'{field} updated successfully!'**
  String fieldUpdatedSuccessfully(String field);

  /// Enter field placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter your {field}'**
  String enterYourField(String field);

  /// Color mode setting label
  ///
  /// In en, this message translates to:
  /// **'Color Mode'**
  String get colorMode;

  /// Change app language subtitle
  ///
  /// In en, this message translates to:
  /// **'Change app language'**
  String get changeAppLanguage;

  /// Language selection description
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language'**
  String get chooseYourPreferredLanguage;

  /// Gender update success message
  ///
  /// In en, this message translates to:
  /// **'Gender updated to {gender}'**
  String genderUpdated(String gender);

  /// Age update success message
  ///
  /// In en, this message translates to:
  /// **'Age updated to {age}'**
  String ageUpdated(int age);

  /// Field update success message
  ///
  /// In en, this message translates to:
  /// **'{field} updated successfully!'**
  String fieldUpdated(String field);

  /// Placeholder text for entering corrections
  ///
  /// In en, this message translates to:
  /// **'Enter correction...'**
  String get enterCorrection;

  /// Message for new users
  ///
  /// In en, this message translates to:
  /// **'Just joined HT'**
  String get justJoinedHT;

  /// Instruction text for greeting users
  ///
  /// In en, this message translates to:
  /// **'Tap to say Hi!'**
  String get tapToSayHi;

  /// Short form of joined text
  ///
  /// In en, this message translates to:
  /// **'joined'**
  String get joinedShort;

  /// Days joined format
  ///
  /// In en, this message translates to:
  /// **'{days}d joined'**
  String daysJoined(String days);

  /// Logout confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get areYouSureLogout;

  /// Edit name dialog title
  ///
  /// In en, this message translates to:
  /// **'Edit Name'**
  String get editName;

  /// Name input placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// Select country dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// Select learning language and level dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Learning Language & Level'**
  String get selectLearningLanguageLevel;

  /// Course level label
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get level;

  /// Detect language button
  ///
  /// In en, this message translates to:
  /// **'Detect'**
  String get detect;

  /// Translation progress text
  ///
  /// In en, this message translates to:
  /// **'Translating...'**
  String get translating;

  /// Translation label
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get translation;

  /// Copy translation tooltip
  ///
  /// In en, this message translates to:
  /// **'Copy translation'**
  String get copyTranslation;

  /// Pronunciation label
  ///
  /// In en, this message translates to:
  /// **'Pronunciation'**
  String get pronunciation;

  /// Copy pronunciation tooltip
  ///
  /// In en, this message translates to:
  /// **'Copy pronunciation'**
  String get copyPronunciation;

  /// Pronunciation unavailable message
  ///
  /// In en, this message translates to:
  /// **'Pronunciation guide not available for this language'**
  String get pronunciationNotAvailable;

  /// Demo mode warning message
  ///
  /// In en, this message translates to:
  /// **'Demo mode: Using fallback translations. Configure Azure credentials in the service code for full functionality.'**
  String get demoModeMessage;

  /// Language detection success message
  ///
  /// In en, this message translates to:
  /// **'Detected language'**
  String get detectedLanguage;

  /// Language detection failure message
  ///
  /// In en, this message translates to:
  /// **'Could not detect language'**
  String get couldNotDetectLanguage;

  /// Success message when copied to clipboard
  ///
  /// In en, this message translates to:
  /// **'{label} copied to clipboard'**
  String copiedToClipboard(String label);

  /// Speech playback failure message
  ///
  /// In en, this message translates to:
  /// **'Failed to play speech'**
  String get failedToPlaySpeech;

  /// Speech error message
  ///
  /// In en, this message translates to:
  /// **'Speech error'**
  String get speechError;

  /// Speaking status indicator
  ///
  /// In en, this message translates to:
  /// **'Speaking...'**
  String get speaking;

  /// Stop speech tooltip
  ///
  /// In en, this message translates to:
  /// **'Stop speech'**
  String get stopSpeech;

  /// Listen to text tooltip
  ///
  /// In en, this message translates to:
  /// **'Listen to text'**
  String get listenToText;

  /// Listen to translation tooltip
  ///
  /// In en, this message translates to:
  /// **'Listen to translation'**
  String get listenToTranslation;

  /// Translation failure message
  ///
  /// In en, this message translates to:
  /// **'Translation failed'**
  String get translationFailed;

  /// Language detection failure message
  ///
  /// In en, this message translates to:
  /// **'Could not detect language'**
  String get failedToDetectLanguage;

  /// Pronunciation guide unavailable message
  ///
  /// In en, this message translates to:
  /// **'Pronunciation guide not available for this language'**
  String get pronunciationGuideNotAvailable;

  /// Azure configuration error message
  ///
  /// In en, this message translates to:
  /// **'Azure credentials not configured'**
  String get azureCredentialsNotConfigured;

  /// Default status when course status is unknown
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// Session alert notification title
  ///
  /// In en, this message translates to:
  /// **'New Session Available'**
  String get newSessionAvailable;

  /// Session scheduled notification message
  ///
  /// In en, this message translates to:
  /// **'{courseName} session has been scheduled by {instructorName} on {date} at {time}. Join now to enhance your learning!'**
  String sessionScheduled(
    String courseName,
    String instructorName,
    String date,
    String time,
  );

  /// Feedback notification title
  ///
  /// In en, this message translates to:
  /// **'Course Feedback Received'**
  String get courseFeedbackReceived;

  /// Feedback received notification message
  ///
  /// In en, this message translates to:
  /// **'You received a {rating} star rating for your {courseName} course from instructor {instructorName}. Keep up the excellent work!'**
  String feedbackReceived(
    String rating,
    String courseName,
    String instructorName,
  );

  /// Time ago in minutes
  ///
  /// In en, this message translates to:
  /// **'{minutes}m ago'**
  String minutesAgo(String minutes);

  /// Time ago in hours
  ///
  /// In en, this message translates to:
  /// **'{hours}h ago'**
  String hoursAgo(String hours);

  /// Time ago in days
  ///
  /// In en, this message translates to:
  /// **'{days}d ago'**
  String daysAgo(String days);

  /// Time ago in weeks
  ///
  /// In en, this message translates to:
  /// **'{weeks}w ago'**
  String weeksAgo(String weeks);

  /// Unread notifications count message
  ///
  /// In en, this message translates to:
  /// **'You have {count} new notification{plural}'**
  String youHaveNewNotifications(String count, String plural);

  /// Empty notifications state message
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get noNotificationsYet;

  /// All caught up message
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up! 🎉'**
  String get allCaughtUp;

  /// Search bar placeholder text
  ///
  /// In en, this message translates to:
  /// **'Search your course here...'**
  String get searchYourCourseHere;

  /// Title for instructor courses page
  ///
  /// In en, this message translates to:
  /// **'My Courses'**
  String get myCourses;

  /// Level category section title
  ///
  /// In en, this message translates to:
  /// **'Level Category'**
  String get levelCategory;

  /// Popular courses section title
  ///
  /// In en, this message translates to:
  /// **'Popular Courses'**
  String get popularCourses;

  /// Expired courses section title
  ///
  /// In en, this message translates to:
  /// **'Expired Courses'**
  String get expiredCourses;

  /// Sessions stat label
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get sessions;

  /// Sessions count text
  ///
  /// In en, this message translates to:
  /// **'{count} Sessions'**
  String sessionsCount(String count);

  /// By instructor text
  ///
  /// In en, this message translates to:
  /// **'by'**
  String get by;

  /// By instructor text
  ///
  /// In en, this message translates to:
  /// **'by {instructor}'**
  String byInstructor(String instructor);

  /// Completion percentage text
  ///
  /// In en, this message translates to:
  /// **'{percentage}% completed'**
  String completedPercentage(String percentage);

  /// Course completion status
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get coursesCompleted;

  /// Filter option for expired courses
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// Empty state text for no enrolled courses
  ///
  /// In en, this message translates to:
  /// **'No enrolled courses'**
  String get noEnrolledCourses;

  /// Search placeholder text for courses
  ///
  /// In en, this message translates to:
  /// **'Search by course name, instructor...'**
  String get searchCoursesByName;

  /// Status filter label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// Filter option for upcoming courses
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// Filter option for active courses
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// Popular filter toggle text
  ///
  /// In en, this message translates to:
  /// **'Show popular only'**
  String get showPopularOnly;

  /// Search results count
  ///
  /// In en, this message translates to:
  /// **'{count} course{plural} found'**
  String coursesFound(String count, String plural);

  /// Default course title when course title is not available
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get courseDefault;

  /// Tooltip for navigation menu button
  ///
  /// In en, this message translates to:
  /// **'Navigation Menu'**
  String get navigationMenu;

  /// Tooltip for close course button
  ///
  /// In en, this message translates to:
  /// **'Close Course'**
  String get closeCourse;

  /// Total sessions stat label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get totalStat;

  /// Completed sessions stat label
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get doneStat;

  /// Upcoming sessions stat label
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextStat;

  /// Next session label in header
  ///
  /// In en, this message translates to:
  /// **'Next Session'**
  String get nextSession;

  /// Session details section title
  ///
  /// In en, this message translates to:
  /// **'Session Details'**
  String get sessionDetails;

  /// Label for session link field
  ///
  /// In en, this message translates to:
  /// **'Session Link'**
  String get sessionLink;

  /// Join session button text
  ///
  /// In en, this message translates to:
  /// **'Join Now'**
  String get joinNow;

  /// Completed session status text
  ///
  /// In en, this message translates to:
  /// **'Session Completed'**
  String get sessionCompleted;

  /// Default session title
  ///
  /// In en, this message translates to:
  /// **'Untitled Session'**
  String get untitledSession;

  /// Duration label with parameter
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration}'**
  String durationLabel(String duration);

  /// Snackbar error message when copying fails
  ///
  /// In en, this message translates to:
  /// **'Failed to copy {item}'**
  String failedToCopy(String item);

  /// Message when opening session
  ///
  /// In en, this message translates to:
  /// **'Opening {platform} session in browser...'**
  String openingSession(String platform);

  /// Course title field label
  ///
  /// In en, this message translates to:
  /// **'Course Title'**
  String get courseTitle;

  /// Meet your instructor section header
  ///
  /// In en, this message translates to:
  /// **'Meet Your Instructor'**
  String get meetYourInstructor;

  /// Courses count label for instructor
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get coursesByInstructor;

  /// Students count label
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get studentsLabel;

  /// Rating label
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get ratingLabel;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceLabel;

  /// Duration stat label
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get durationStat;

  /// Level label
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get levelLabel;

  /// Language label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageLabel;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// Course completed status text
  ///
  /// In en, this message translates to:
  /// **'Course Completed'**
  String get courseCompletedStatus;

  /// Currently enrolled status text
  ///
  /// In en, this message translates to:
  /// **'Currently Enrolled'**
  String get currentlyEnrolled;

  /// Enrollment confirmed status text
  ///
  /// In en, this message translates to:
  /// **'Enrollment Confirmed'**
  String get enrollmentConfirmed;

  /// Default enrollment status text
  ///
  /// In en, this message translates to:
  /// **'Enrollment Status'**
  String get enrollmentStatus;

  /// Experience years text
  ///
  /// In en, this message translates to:
  /// **'{years}+ years'**
  String experienceYears(String years);

  /// Expert in language text
  ///
  /// In en, this message translates to:
  /// **'Expert in {language} Language'**
  String expertIn(String language);

  /// Student count text
  ///
  /// In en, this message translates to:
  /// **'{count} students'**
  String studentCountText(String count);

  /// Default instructor bio text
  ///
  /// In en, this message translates to:
  /// **'Experienced educator with over 8 years of teaching experience. Specializes in modern language learning techniques and interactive teaching methods.'**
  String get instructorBioDefault;

  /// Default instructor experience text
  ///
  /// In en, this message translates to:
  /// **'8+ years'**
  String get instructorExperience;

  /// Instructor education text
  ///
  /// In en, this message translates to:
  /// **'Expert in {language} Language'**
  String instructorEducation(String language);

  /// About instructor section header
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutInstructor;

  /// Instructor student count
  ///
  /// In en, this message translates to:
  /// **'{count} students'**
  String instructorStudents(int count);

  /// Instructor courses label
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get instructorCourses;

  /// Instructor rating stat label
  ///
  /// In en, this message translates to:
  /// **'Instructor Rating'**
  String get instructorRating;

  /// Course by instructor text
  ///
  /// In en, this message translates to:
  /// **'by {instructor}'**
  String courseBy(String instructor);

  /// Expert in language text
  ///
  /// In en, this message translates to:
  /// **'Expert in {language}'**
  String expertInLanguage(String language);

  /// Course feedback title
  ///
  /// In en, this message translates to:
  /// **'Course Feedback'**
  String get courseFeedback;

  /// Course feedback subtitle
  ///
  /// In en, this message translates to:
  /// **'Review instructor feedback and share your course experience'**
  String get reviewInstructorFeedback;

  /// Instructor feedback section title
  ///
  /// In en, this message translates to:
  /// **'Feedback from Instructor'**
  String get feedbackFromInstructor;

  /// Give feedback section title
  ///
  /// In en, this message translates to:
  /// **'Give Your Feedback'**
  String get giveYourFeedback;

  /// Course rating label
  ///
  /// In en, this message translates to:
  /// **'Rate the Course'**
  String get rateCourse;

  /// Rating display value
  ///
  /// In en, this message translates to:
  /// **'{rating}/5'**
  String ratingValue(int rating);

  /// No rating text
  ///
  /// In en, this message translates to:
  /// **'No rating'**
  String get noRating;

  /// Course feedback input label
  ///
  /// In en, this message translates to:
  /// **'Your Course Feedback'**
  String get yourCourseFeedback;

  /// Course feedback input hint
  ///
  /// In en, this message translates to:
  /// **'Share your thoughts about the course content, structure, difficulty...'**
  String get courseFeedbackHint;

  /// Submit course feedback button
  ///
  /// In en, this message translates to:
  /// **'Submit Course Feedback'**
  String get submitCourseFeedback;

  /// Instructor feedback title
  ///
  /// In en, this message translates to:
  /// **'Instructor Feedback'**
  String get instructorFeedback;

  /// Instructor rating label
  ///
  /// In en, this message translates to:
  /// **'Rate the Instructor'**
  String get rateInstructor;

  /// Instructor feedback input label
  ///
  /// In en, this message translates to:
  /// **'Your Instructor Feedback'**
  String get yourInstructorFeedback;

  /// Instructor feedback input hint
  ///
  /// In en, this message translates to:
  /// **'Share your thoughts about teaching style, clarity, support...'**
  String get instructorFeedbackHint;

  /// Submit instructor feedback button
  ///
  /// In en, this message translates to:
  /// **'Submit Instructor Feedback'**
  String get submitInstructorFeedback;

  /// Feedback summary section title
  ///
  /// In en, this message translates to:
  /// **'Feedback Summary'**
  String get feedbackSummary;

  /// Average rating label
  ///
  /// In en, this message translates to:
  /// **'Average Rating'**
  String get averageRating;

  /// Total feedback count label
  ///
  /// In en, this message translates to:
  /// **'Total Feedback'**
  String get totalFeedback;

  /// Positive feedback type
  ///
  /// In en, this message translates to:
  /// **'positive'**
  String get positive;

  /// Constructive feedback type
  ///
  /// In en, this message translates to:
  /// **'constructive'**
  String get constructive;

  /// Improvement feedback type
  ///
  /// In en, this message translates to:
  /// **'improvement'**
  String get improvement;

  /// Empty course feedback validation message
  ///
  /// In en, this message translates to:
  /// **'Please write your course feedback'**
  String get pleaseWriteCourseFeedback;

  /// Missing course rating validation message
  ///
  /// In en, this message translates to:
  /// **'Please provide a rating for the course'**
  String get pleaseRateCourse;

  /// Course feedback submission success message
  ///
  /// In en, this message translates to:
  /// **'✅ Course feedback submitted successfully!'**
  String get courseFeedbackSubmitted;

  /// Empty instructor feedback validation message
  ///
  /// In en, this message translates to:
  /// **'Please write your instructor feedback'**
  String get pleaseWriteInstructorFeedback;

  /// Missing instructor rating validation message
  ///
  /// In en, this message translates to:
  /// **'Please provide a rating for the instructor'**
  String get pleaseRateInstructor;

  /// Instructor feedback submission success message
  ///
  /// In en, this message translates to:
  /// **'✅ Instructor feedback submitted successfully!'**
  String get instructorFeedbackSubmitted;

  /// Enrolled members count
  ///
  /// In en, this message translates to:
  /// **'{count} enrolled members'**
  String enrolledMembers(int count);

  /// Instructor role badge text
  ///
  /// In en, this message translates to:
  /// **'INSTRUCTOR'**
  String get instructorRole;

  /// Enrolled members modal title
  ///
  /// In en, this message translates to:
  /// **'Enrolled Members ({count})'**
  String enrolledMembersTitle(int count);

  /// Video duration display
  ///
  /// In en, this message translates to:
  /// **'• Duration: {duration}'**
  String videoDuration(String duration);

  /// Video status display
  ///
  /// In en, this message translates to:
  /// **'• Status: {status}'**
  String videoStatus(String status);

  /// Video resolution display
  ///
  /// In en, this message translates to:
  /// **'• Resolution: {resolution}'**
  String videoResolution(String resolution);

  /// Video loaded status
  ///
  /// In en, this message translates to:
  /// **'Loaded'**
  String get videoLoaded;

  /// Video loading status
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get videoLoading;

  /// Connection timeout error message
  ///
  /// In en, this message translates to:
  /// **'Connection timeout. Please check your internet and try again.'**
  String get connectionTimeout;

  /// Video not found error message
  ///
  /// In en, this message translates to:
  /// **'Video not found. The video URL may be invalid.'**
  String get videoNotFound;

  /// Network error message
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your internet connection.'**
  String get networkError;

  /// Video loading timeout error
  ///
  /// In en, this message translates to:
  /// **'Video loading timeout - Check your internet connection'**
  String get videoLoadingTimeout;

  /// Video error message with prefix
  ///
  /// In en, this message translates to:
  /// **'❌ {error}'**
  String videoErrorPrefix(String error);

  /// Video error snackbar message
  ///
  /// In en, this message translates to:
  /// **'Video Error: {error}'**
  String videoErrorMessage(String error);

  /// Fullscreen mode notification
  ///
  /// In en, this message translates to:
  /// **'Fullscreen mode'**
  String get fullscreenMode;

  /// Playback settings header
  ///
  /// In en, this message translates to:
  /// **'🎬 Playback Settings:'**
  String get playbackSettings;

  /// Playback speed display
  ///
  /// In en, this message translates to:
  /// **'• Speed: {speed}x'**
  String playbackSpeed(String speed);

  /// Playback quality display
  ///
  /// In en, this message translates to:
  /// **'• Quality: {quality}'**
  String playbackQuality(String quality);

  /// Playback volume display
  ///
  /// In en, this message translates to:
  /// **'• Volume: {volume}%'**
  String playbackVolume(int volume);

  /// Auto quality setting
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get playbackQualityAuto;

  /// Button text to retry failed operation
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryButton;

  /// Auto quality setting
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get qualityAuto;

  /// Learning language display in chat
  ///
  /// In en, this message translates to:
  /// **'Learning {language}'**
  String chatLearningLanguage(String language);

  /// Default bio text in chat profile
  ///
  /// In en, this message translates to:
  /// **'Language enthusiast from {country} {flag}. Love to practice languages and make new friends around the world!'**
  String chatLanguageEnthusiast(String country, String flag);

  /// Placeholder for corrected message
  ///
  /// In en, this message translates to:
  /// **'Corrected text'**
  String get chatCorrectedText;

  /// Placeholder for message translation
  ///
  /// In en, this message translates to:
  /// **'Translation here'**
  String get chatTranslationHere;

  /// Message read status indicator
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get chatRead;

  /// Snackbar message when translation is completed
  ///
  /// In en, this message translates to:
  /// **'Message translated!'**
  String get chatMessageTranslated;

  /// Dialog title for message correction
  ///
  /// In en, this message translates to:
  /// **'Correct Message'**
  String get chatCorrectMessage;

  /// Label for original message in correction dialog
  ///
  /// In en, this message translates to:
  /// **'Original:'**
  String get chatOriginal;

  /// Label for correction input in dialog
  ///
  /// In en, this message translates to:
  /// **'Correction:'**
  String get chatCorrection;

  /// Snackbar message when correction is saved
  ///
  /// In en, this message translates to:
  /// **'Correction saved!'**
  String get chatCorrectionSaved;

  /// Dialog title for message correction
  ///
  /// In en, this message translates to:
  /// **'Correct Message'**
  String get chatDialogCorrectMessage;

  /// Label for original message in correction dialog
  ///
  /// In en, this message translates to:
  /// **'Original:'**
  String get chatDialogOriginal;

  /// Label for correction input in dialog
  ///
  /// In en, this message translates to:
  /// **'Correction:'**
  String get chatDialogCorrection;

  /// Cancel button in correction dialog
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get chatDialogCancel;

  /// Save button in correction dialog
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get chatDialogSave;

  /// Snackbar message when correction is saved
  ///
  /// In en, this message translates to:
  /// **'Correction saved!'**
  String get chatDialogCorrectionSaved;

  /// Debug message for translate action
  ///
  /// In en, this message translates to:
  /// **'Translate icon tapped!'**
  String get chatTranslateIconTapped;

  /// Debug message for correct action
  ///
  /// In en, this message translates to:
  /// **'Correct icon tapped!'**
  String get chatCorrectIconTapped;

  /// Days ago timestamp format
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String chatDaysAgo(int count);

  /// Hours ago timestamp format
  ///
  /// In en, this message translates to:
  /// **'{count} hours ago'**
  String chatHoursAgo(int count);

  /// Minutes ago timestamp format
  ///
  /// In en, this message translates to:
  /// **'{count} minutes ago'**
  String chatMinutesAgo(int count);

  /// Days ago timestamp format for chat messages
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String chatTimestampDaysAgo(int count);

  /// Hours ago timestamp format for chat messages
  ///
  /// In en, this message translates to:
  /// **'{count} hours ago'**
  String chatTimestampHoursAgo(int count);

  /// Minutes ago timestamp format for chat messages
  ///
  /// In en, this message translates to:
  /// **'{count} minutes ago'**
  String chatTimestampMinutesAgo(int count);

  /// Payment page app bar title
  ///
  /// In en, this message translates to:
  /// **'Complete Purchase'**
  String get paymentCompletePurchase;

  /// Fallback course title
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get paymentCourseFallback;

  /// Fallback instructor name
  ///
  /// In en, this message translates to:
  /// **'Instructor'**
  String get paymentInstructorFallback;

  /// Course instructor label
  ///
  /// In en, this message translates to:
  /// **'by {instructor}'**
  String paymentCourseBy(String instructor);

  /// Payment method selection title
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// Credit/Debit card payment option
  ///
  /// In en, this message translates to:
  /// **'Credit/Debit Card'**
  String get paymentCreditDebitCard;

  /// PayPal payment option
  ///
  /// In en, this message translates to:
  /// **'PayPal'**
  String get paymentPayPal;

  /// Card information section title
  ///
  /// In en, this message translates to:
  /// **'Card Information'**
  String get paymentCardInformation;

  /// Card number input label
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get paymentCardNumber;

  /// Card number input hint
  ///
  /// In en, this message translates to:
  /// **'1234 5678 9012 3456'**
  String get paymentCardNumberHint;

  /// Expiry date input label
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get paymentExpiryDate;

  /// Expiry date input hint
  ///
  /// In en, this message translates to:
  /// **'MM/YY'**
  String get paymentExpiryHint;

  /// CVV input label
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get paymentCVV;

  /// CVV input hint
  ///
  /// In en, this message translates to:
  /// **'123'**
  String get paymentCVVHint;

  /// Billing information section title
  ///
  /// In en, this message translates to:
  /// **'Billing Information'**
  String get paymentBillingInformation;

  /// Cardholder name input label
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get paymentCardholderName;

  /// Cardholder name input hint
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get paymentCardholderNameHint;

  /// Email address input label
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get paymentEmailAddress;

  /// Email input hint
  ///
  /// In en, this message translates to:
  /// **'john@example.com'**
  String get paymentEmailHint;

  /// Order summary section title
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get paymentOrderSummary;

  /// Course price label in order summary
  ///
  /// In en, this message translates to:
  /// **'Course Price'**
  String get paymentCoursePrice;

  /// Tax label in order summary
  ///
  /// In en, this message translates to:
  /// **'Tax (10%)'**
  String get paymentTax;

  /// Total amount label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get paymentTotal;

  /// Processing payment button text
  ///
  /// In en, this message translates to:
  /// **'Processing...'**
  String get paymentProcessing;

  /// Pay button text with amount
  ///
  /// In en, this message translates to:
  /// **'Pay {amount}'**
  String paymentPay(String amount);

  /// PayPal processing message
  ///
  /// In en, this message translates to:
  /// **'Processing PayPal payment...'**
  String get paymentProcessingPayPal;

  /// Payment success dialog title
  ///
  /// In en, this message translates to:
  /// **'Payment Successful!'**
  String get paymentSuccessTitle;

  /// Payment success dialog message
  ///
  /// In en, this message translates to:
  /// **'Welcome to {courseTitle}!\nYou can now access all course materials.'**
  String paymentSuccessMessage(String courseTitle);

  /// Start learning button text
  ///
  /// In en, this message translates to:
  /// **'Start Learning'**
  String get paymentStartLearning;

  /// Card number required error message
  ///
  /// In en, this message translates to:
  /// **'Please enter card number'**
  String get paymentErrorCardNumber;

  /// Invalid card number error message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid card number'**
  String get paymentErrorInvalidCard;

  /// Required field error message
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get paymentErrorRequired;

  /// Invalid expiry date error message
  ///
  /// In en, this message translates to:
  /// **'Invalid date'**
  String get paymentErrorInvalidDate;

  /// Invalid CVV error message
  ///
  /// In en, this message translates to:
  /// **'Invalid CVV'**
  String get paymentErrorInvalidCVV;

  /// Cardholder name required error message
  ///
  /// In en, this message translates to:
  /// **'Please enter cardholder name'**
  String get paymentErrorCardholderName;

  /// Email required error message
  ///
  /// In en, this message translates to:
  /// **'Please enter email address'**
  String get paymentErrorEmail;

  /// Invalid email error message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get paymentErrorInvalidEmail;

  /// Fallback course title
  ///
  /// In en, this message translates to:
  /// **'Course Title'**
  String get courseDetailsFallbackTitle;

  /// Fallback course description
  ///
  /// In en, this message translates to:
  /// **'This is a comprehensive course designed to help you master the language.'**
  String get courseDetailsFallbackDescription;

  /// Fallback course language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get courseDetailsFallbackLanguage;

  /// Fallback course level
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get courseDetailsFallbackLevel;

  /// Fallback instructor name
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get courseDetailsFallbackInstructor;

  /// Fallback course duration
  ///
  /// In en, this message translates to:
  /// **'4 weeks'**
  String get courseDetailsFallbackDuration;

  /// Fallback course status
  ///
  /// In en, this message translates to:
  /// **'active'**
  String get courseDetailsFallbackStatus;

  /// Fallback course category
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get courseDetailsFallbackCategory;

  /// Instructor byline format
  ///
  /// In en, this message translates to:
  /// **'by {instructor}'**
  String courseDetailsInstructorBy(String instructor);

  /// Language info pill label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get courseDetailsLanguageLabel;

  /// Sessions info pill label
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get courseDetailsSessionsLabel;

  /// Students info pill label
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get courseDetailsStudentsLabel;

  /// Course overview section title
  ///
  /// In en, this message translates to:
  /// **'Course Overview'**
  String get courseDetailsOverviewTitle;

  /// Course timeline section title
  ///
  /// In en, this message translates to:
  /// **'Course Timeline'**
  String get courseDetailsTimelineTitle;

  /// Start date label
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get courseDetailsStartDateLabel;

  /// End date label
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get courseDetailsEndDateLabel;

  /// Duration and level info format
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration} • Level: {level}'**
  String courseDetailsDurationLevel(String duration, String level);

  /// Instructor spotlight title
  ///
  /// In en, this message translates to:
  /// **'Expert Language Instructor'**
  String get courseDetailsInstructorTitle;

  /// Instructor description text
  ///
  /// In en, this message translates to:
  /// **'Experienced educator with over 8 years of teaching experience. Specializes in modern language learning techniques.'**
  String get courseDetailsInstructorDescription;

  /// Years experience label
  ///
  /// In en, this message translates to:
  /// **'Years Exp.'**
  String get courseDetailsInstructorYearsExp;

  /// Instructor rating label
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get courseDetailsInstructorRating;

  /// Instructor students label
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get courseDetailsInstructorStudents;

  /// Student feedback section title
  ///
  /// In en, this message translates to:
  /// **'Student Feedback'**
  String get courseDetailsFeedbackTitle;

  /// Highly rated course label
  ///
  /// In en, this message translates to:
  /// **'Highly Rated Course'**
  String get courseDetailsHighlyRated;

  /// Reviews count text
  ///
  /// In en, this message translates to:
  /// **'Based on 124+ student reviews'**
  String get courseDetailsReviewsCount;

  /// Satisfaction rate badge
  ///
  /// In en, this message translates to:
  /// **'95% Satisfaction Rate'**
  String get courseDetailsSatisfactionRate;

  /// One-time payment label
  ///
  /// In en, this message translates to:
  /// **'One-time Payment'**
  String get courseDetailsOneTimePayment;

  /// Enroll now button text
  ///
  /// In en, this message translates to:
  /// **'Enroll Now'**
  String get courseDetailsEnrollNow;

  /// Profile page title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get instructorProfile;

  /// Years of experience format
  ///
  /// In en, this message translates to:
  /// **'{years} years experience'**
  String instructorYearsExp(int years);

  /// Courses stats label
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get instructorStatsCourses;

  /// Students stats label
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get instructorStatsStudents;

  /// Rating stats label
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get instructorStatsRating;

  /// Personal information section title
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get instructorPersonalInfo;

  /// Professional information section title
  ///
  /// In en, this message translates to:
  /// **'Professional Information'**
  String get instructorProfessionalInfo;

  /// Languages section title
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get instructorLanguages;

  /// About me section title
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get instructorAboutMe;

  /// Email field label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get instructorEmail;

  /// Date of birth field label
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get instructorDateOfBirth;

  /// Gender field label
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get instructorGender;

  /// Country field label
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get instructorCountry;

  /// Years of experience field label
  ///
  /// In en, this message translates to:
  /// **'Years of Experience'**
  String get instructorYearsOfExperience;

  /// Years format
  ///
  /// In en, this message translates to:
  /// **'{years} years'**
  String instructorYearsFormat(int years);

  /// Native language field label
  ///
  /// In en, this message translates to:
  /// **'Native Language'**
  String get instructorNativeLanguage;

  /// Teaching language field label
  ///
  /// In en, this message translates to:
  /// **'Teaching Language'**
  String get instructorTeachingLanguage;

  /// Edit profile image title
  ///
  /// In en, this message translates to:
  /// **'Edit Profile Image'**
  String get instructorEditProfileImage;

  /// Take photo option
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get instructorTakePhoto;

  /// Select from gallery option
  ///
  /// In en, this message translates to:
  /// **'Select from Gallery'**
  String get instructorSelectFromGallery;

  /// Enter image URL option
  ///
  /// In en, this message translates to:
  /// **'Enter Image URL'**
  String get instructorEnterImageUrl;

  /// Camera feature message
  ///
  /// In en, this message translates to:
  /// **'Camera feature will be implemented'**
  String get instructorCameraFeatureMessage;

  /// Gallery feature message
  ///
  /// In en, this message translates to:
  /// **'Gallery feature will be implemented'**
  String get instructorGalleryFeatureMessage;

  /// Edit dialog title format
  ///
  /// In en, this message translates to:
  /// **'Edit {field}'**
  String instructorEditTitle(String field);

  /// Enter field placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter {field}'**
  String instructorEnterField(String field);

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get instructorCancel;

  /// Save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get instructorSave;

  /// Field updated message
  ///
  /// In en, this message translates to:
  /// **'{field} updated successfully'**
  String instructorFieldUpdated(String field);

  /// Edit bio title
  ///
  /// In en, this message translates to:
  /// **'Edit Bio'**
  String get instructorEditBio;

  /// Bio placeholder text
  ///
  /// In en, this message translates to:
  /// **'Tell us about yourself...'**
  String get instructorBioPlaceholder;

  /// Bio updated message
  ///
  /// In en, this message translates to:
  /// **'Bio updated successfully'**
  String get instructorBioUpdated;

  /// Date of birth updated message
  ///
  /// In en, this message translates to:
  /// **'Date of birth updated successfully'**
  String get instructorDateOfBirthUpdated;

  /// Select gender title
  ///
  /// In en, this message translates to:
  /// **'Select Gender'**
  String get instructorSelectGender;

  /// Gender updated message
  ///
  /// In en, this message translates to:
  /// **'Gender updated successfully'**
  String get instructorGenderUpdated;

  /// Select country title
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get instructorSelectCountry;

  /// Country updated message
  ///
  /// In en, this message translates to:
  /// **'Country updated successfully'**
  String get instructorCountryUpdated;

  /// Select native language title
  ///
  /// In en, this message translates to:
  /// **'Select Native Language'**
  String get instructorSelectNativeLanguage;

  /// Select teaching language title
  ///
  /// In en, this message translates to:
  /// **'Select Teaching Language'**
  String get instructorSelectTeachingLanguage;

  /// Native language updated message
  ///
  /// In en, this message translates to:
  /// **'Native language updated successfully'**
  String get instructorNativeLanguageUpdated;

  /// Teaching language updated message
  ///
  /// In en, this message translates to:
  /// **'Teaching language updated successfully'**
  String get instructorTeachingLanguageUpdated;

  /// Experience updated message
  ///
  /// In en, this message translates to:
  /// **'Experience updated successfully'**
  String get instructorExperienceUpdated;

  /// Logout button
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get instructorLogout;

  /// Logout confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get instructorLogoutConfirm;

  /// Revenue dashboard page title
  ///
  /// In en, this message translates to:
  /// **'Revenue Dashboard'**
  String get revenueDashboard;

  /// Weekly revenue label
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get revenueWeekly;

  /// Monthly revenue label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get revenueMonthly;

  /// This year revenue label
  ///
  /// In en, this message translates to:
  /// **'This Year'**
  String get revenueThisYear;

  /// Total courses label
  ///
  /// In en, this message translates to:
  /// **'Total Courses'**
  String get revenueTotalCourses;

  /// Weekly revenue trend chart title
  ///
  /// In en, this message translates to:
  /// **'Weekly Revenue Trend'**
  String get revenueWeeklyTrend;

  /// Total revenue label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get revenueTotal;

  /// Peak revenue label
  ///
  /// In en, this message translates to:
  /// **'Peak'**
  String get revenuePeak;

  /// Course income section title
  ///
  /// In en, this message translates to:
  /// **'Course Income'**
  String get revenueCourseIncome;

  /// Show less button text
  ///
  /// In en, this message translates to:
  /// **'Show Less'**
  String get revenueShowLess;

  /// View all button text
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get revenueViewAll;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get revenuePrice;

  /// Enrolled students suffix
  ///
  /// In en, this message translates to:
  /// **'enrolled'**
  String get revenueEnrolled;

  /// Transaction history section title
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get revenueTransactionHistory;

  /// Withdrawal transaction type
  ///
  /// In en, this message translates to:
  /// **'Withdrawal'**
  String get revenueWithdrawal;

  /// Payment overview section title
  ///
  /// In en, this message translates to:
  /// **'Payment Overview'**
  String get revenuePaymentOverview;

  /// Available balance label
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get revenueAvailableBalance;

  /// Withdraw button text
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get revenueWithdrawButton;

  /// Total earned label
  ///
  /// In en, this message translates to:
  /// **'Total Earned'**
  String get revenueTotalEarned;

  /// Withdrawn amount label
  ///
  /// In en, this message translates to:
  /// **'Withdrawn'**
  String get revenueWithdrawn;

  /// Withdrawal page title
  ///
  /// In en, this message translates to:
  /// **'Withdraw Money'**
  String get withdrawMoney;

  /// Available balance label
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get availableBalance;

  /// Withdrawal amount section title
  ///
  /// In en, this message translates to:
  /// **'Withdrawal Amount'**
  String get withdrawalAmount;

  /// Amount input field hint
  ///
  /// In en, this message translates to:
  /// **'Enter amount to withdraw'**
  String get enterAmountToWithdraw;

  /// Amount validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter withdrawal amount'**
  String get pleaseEnterWithdrawalAmount;

  /// Invalid amount validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid amount'**
  String get pleaseEnterValidAmount;

  /// Zero amount validation error
  ///
  /// In en, this message translates to:
  /// **'Amount must be greater than zero'**
  String get amountMustBeGreaterThanZero;

  /// Exceeds balance validation error
  ///
  /// In en, this message translates to:
  /// **'Amount exceeds available balance'**
  String get amountExceedsAvailableBalance;

  /// Minimum amount validation error
  ///
  /// In en, this message translates to:
  /// **'Minimum withdrawal amount is \$10'**
  String get minimumWithdrawalAmountIs;

  /// Quick amount button 50 dollars
  ///
  /// In en, this message translates to:
  /// **'\$50'**
  String get quickAmount50;

  /// Quick amount button 100 dollars
  ///
  /// In en, this message translates to:
  /// **'\$100'**
  String get quickAmount100;

  /// Quick amount button for maximum amount
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get quickAmountMax;

  /// Bank information section title
  ///
  /// In en, this message translates to:
  /// **'Bank Information'**
  String get bankInformation;

  /// Account holder name field label
  ///
  /// In en, this message translates to:
  /// **'Account Holder Name'**
  String get accountHolderName;

  /// Account holder name field hint
  ///
  /// In en, this message translates to:
  /// **'Enter full name as on bank account'**
  String get enterFullNameAsOnBankAccount;

  /// Account holder name validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter account holder name'**
  String get pleaseEnterAccountHolderName;

  /// Bank name field label
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// Bank name field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your bank name'**
  String get enterYourBankName;

  /// Bank name validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter bank name'**
  String get pleaseEnterBankName;

  /// Account number field label
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// Account number field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your account number'**
  String get enterYourAccountNumber;

  /// Account number validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter account number'**
  String get pleaseEnterAccountNumber;

  /// Account number length validation error
  ///
  /// In en, this message translates to:
  /// **'Account number must be at least 8 digits'**
  String get accountNumberMustBeAtLeast8Digits;

  /// Routing number field label
  ///
  /// In en, this message translates to:
  /// **'Routing Number'**
  String get routingNumber;

  /// Routing number field hint
  ///
  /// In en, this message translates to:
  /// **'Enter 9-digit routing number'**
  String get enter9DigitRoutingNumber;

  /// Routing number validation error
  ///
  /// In en, this message translates to:
  /// **'Please enter routing number'**
  String get pleaseEnterRoutingNumber;

  /// Routing number length validation error
  ///
  /// In en, this message translates to:
  /// **'Routing number must be 9 digits'**
  String get routingNumberMustBe9Digits;

  /// Submit button text
  ///
  /// In en, this message translates to:
  /// **'Submit Withdrawal Request'**
  String get submitWithdrawalRequest;

  /// Important information section title
  ///
  /// In en, this message translates to:
  /// **'Important Information'**
  String get importantInformation;

  /// Processing time info
  ///
  /// In en, this message translates to:
  /// **'Processing time: 3-5 business days'**
  String get processingTime;

  /// Minimum withdrawal info
  ///
  /// In en, this message translates to:
  /// **'Minimum withdrawal: \$10'**
  String get minimumWithdrawal;

  /// No fees info
  ///
  /// In en, this message translates to:
  /// **'No processing fees'**
  String get noProcessingFees;

  /// Processing days info
  ///
  /// In en, this message translates to:
  /// **'Withdrawals are processed Monday-Friday'**
  String get withdrawalsProcessedMondayFriday;

  /// Security info
  ///
  /// In en, this message translates to:
  /// **'Bank information is encrypted and secure'**
  String get bankInformationEncrypted;

  /// Confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Confirm Withdrawal'**
  String get confirmWithdrawal;

  /// Withdrawal confirmation message start
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdrawToAccountEndingIn;

  /// Withdrawal confirmation message middle part
  ///
  /// In en, this message translates to:
  /// **'to your account ending in'**
  String get withdrawConfirmationQuestion;

  /// Success message for withdrawal request
  ///
  /// In en, this message translates to:
  /// **'Withdrawal request submitted successfully!'**
  String get withdrawalRequestSubmittedSuccessfully;

  /// Add course page title
  ///
  /// In en, this message translates to:
  /// **'Create New Course'**
  String get createNewCourse;

  /// Course creation header title
  ///
  /// In en, this message translates to:
  /// **'Create Your Course'**
  String get createYourCourse;

  /// Course creation header subtitle
  ///
  /// In en, this message translates to:
  /// **'Fill in the details to create your course'**
  String get fillDetailsToCreateCourse;

  /// Course title field hint
  ///
  /// In en, this message translates to:
  /// **'Enter course title'**
  String get enterCourseTitle;

  /// Course title validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter course title'**
  String get pleaseEnterCourseTitle;

  /// Description label for form fields
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Course description field hint
  ///
  /// In en, this message translates to:
  /// **'Describe your course'**
  String get describeCourse;

  /// Course description validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter course description'**
  String get pleaseEnterCourseDescription;

  /// Total sessions field hint
  ///
  /// In en, this message translates to:
  /// **'e.g., 12'**
  String get totalSessionsHint;

  /// Total sessions validation message
  ///
  /// In en, this message translates to:
  /// **'Enter sessions'**
  String get enterSessions;

  /// Price field label
  ///
  /// In en, this message translates to:
  /// **'Price (\$)'**
  String get priceInDollars;

  /// Free price label
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// Course schedule section title
  ///
  /// In en, this message translates to:
  /// **'Course Schedule'**
  String get courseSchedule;

  /// Placeholder text for date picker
  ///
  /// In en, this message translates to:
  /// **'Select Date *'**
  String get selectDate;

  /// Course thumbnail placeholder text
  ///
  /// In en, this message translates to:
  /// **'Course Thumbnail'**
  String get courseThumbnail;

  /// Thumbnail picker placeholder
  ///
  /// In en, this message translates to:
  /// **'Select Course Thumbnail'**
  String get selectCourseThumbnail;

  /// Thumbnail format info
  ///
  /// In en, this message translates to:
  /// **'JPG, PNG (Max 5MB)'**
  String get jpgPngMax5MB;

  /// Image selected confirmation
  ///
  /// In en, this message translates to:
  /// **'Image Selected'**
  String get imageSelected;

  /// Publish course button text
  ///
  /// In en, this message translates to:
  /// **'Publish Course'**
  String get publishCourse;

  /// Date selection validation message
  ///
  /// In en, this message translates to:
  /// **'Please select start and end dates'**
  String get pleaseSelectStartEndDates;

  /// Thumbnail selection validation message
  ///
  /// In en, this message translates to:
  /// **'Please select a course thumbnail'**
  String get pleaseSelectCourseThumbnail;

  /// Course publish success message
  ///
  /// In en, this message translates to:
  /// **'Course published successfully!'**
  String get coursePublishedSuccessfully;

  /// Image picker placeholder message
  ///
  /// In en, this message translates to:
  /// **'Image picker feature will be implemented'**
  String get imagePickerFeatureWillBeImplemented;

  /// Analytics button tooltip
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// Search bar placeholder text
  ///
  /// In en, this message translates to:
  /// **'Search your courses...'**
  String get searchYourCourses;

  /// Stats card title for total students
  ///
  /// In en, this message translates to:
  /// **'Total Students'**
  String get totalStudents;

  /// Stats card title for active courses
  ///
  /// In en, this message translates to:
  /// **'Active Courses'**
  String get activeCourses;

  /// Stats card title for total courses
  ///
  /// In en, this message translates to:
  /// **'Total Courses'**
  String get totalCourses;

  /// Section title for upcoming courses
  ///
  /// In en, this message translates to:
  /// **'Upcoming Courses'**
  String get upcomingCourses;

  /// Button text to see all courses in a section
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// Section title for completed courses
  ///
  /// In en, this message translates to:
  /// **'Completed Courses'**
  String get completedCourses;

  /// Button text to show all course sections
  ///
  /// In en, this message translates to:
  /// **'Show all sections'**
  String get showAllSections;

  /// Suggestion text when no courses found
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search terms'**
  String get tryAdjustingSearch;

  /// Subtitle text for instructor portal
  ///
  /// In en, this message translates to:
  /// **'Instructor Portal'**
  String get instructorPortal;

  /// Tooltip and title for instructor settings
  ///
  /// In en, this message translates to:
  /// **'Instructor Settings'**
  String get instructorSettings;

  /// Completion stat label
  ///
  /// In en, this message translates to:
  /// **'Completion'**
  String get completion;

  /// Settings menu item for notifications
  ///
  /// In en, this message translates to:
  /// **'Notification Preferences'**
  String get notificationPreferences;

  /// Settings menu item for office hours
  ///
  /// In en, this message translates to:
  /// **'Office Hours'**
  String get officeHours;

  /// Settings menu item for language settings
  ///
  /// In en, this message translates to:
  /// **'Language & Region'**
  String get languageAndRegion;

  /// Snackbar message for notification settings
  ///
  /// In en, this message translates to:
  /// **'Notification settings coming soon'**
  String get notificationSettingsComingSoon;

  /// Snackbar message for office hours settings
  ///
  /// In en, this message translates to:
  /// **'Office hours settings coming soon'**
  String get officeHoursSettingsComingSoon;

  /// Snackbar message for language settings
  ///
  /// In en, this message translates to:
  /// **'Language settings coming soon'**
  String get languageSettingsComingSoon;

  /// Students count label
  ///
  /// In en, this message translates to:
  /// **'students'**
  String get studentsCount;

  /// Students stat label
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get coursesStudents;

  /// Course category label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Course start date label
  ///
  /// In en, this message translates to:
  /// **'Starts'**
  String get starts;

  /// Revenue analytics section title
  ///
  /// In en, this message translates to:
  /// **'Revenue Analytics'**
  String get revenueAnalytics;

  /// Course price label in revenue section
  ///
  /// In en, this message translates to:
  /// **'Course Price'**
  String get coursePrice;

  /// Total revenue label
  ///
  /// In en, this message translates to:
  /// **'Total Revenue'**
  String get totalRevenue;

  /// Course management section title
  ///
  /// In en, this message translates to:
  /// **'Course Management'**
  String get courseManagement;

  /// Edit course details button text
  ///
  /// In en, this message translates to:
  /// **'Edit Course Details'**
  String get editCourseDetails;

  /// Edit course details dialog title
  ///
  /// In en, this message translates to:
  /// **'Edit Course Details'**
  String get editCourseDetailsTitle;

  /// Title label for form fields
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// Price field label with currency symbol
  ///
  /// In en, this message translates to:
  /// **'Price (\$)'**
  String get priceWithSymbol;

  /// Thumbnail URL field label
  ///
  /// In en, this message translates to:
  /// **'Thumbnail URL'**
  String get thumbnailUrl;

  /// Save changes button text
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// Success message for course update
  ///
  /// In en, this message translates to:
  /// **'Course details updated successfully'**
  String get courseDetailsUpdatedSuccessfully;

  /// Feedback management section title
  ///
  /// In en, this message translates to:
  /// **'Feedback Management'**
  String get feedbackManagement;

  /// Feedback management section description
  ///
  /// In en, this message translates to:
  /// **'View student reviews and provide personalized feedback'**
  String get viewStudentReviewsDescription;

  /// Course rating stat label
  ///
  /// In en, this message translates to:
  /// **'Course Rating'**
  String get courseRating;

  /// Total reviews stat label
  ///
  /// In en, this message translates to:
  /// **'Total Reviews'**
  String get totalReviews;

  /// Course reviews section title
  ///
  /// In en, this message translates to:
  /// **'Course Reviews from Students'**
  String get courseReviewsFromStudents;

  /// Instructor reviews section title
  ///
  /// In en, this message translates to:
  /// **'Instructor Reviews from Students'**
  String get instructorReviewsFromStudents;

  /// Give student feedback section title
  ///
  /// In en, this message translates to:
  /// **'Give Student Feedback'**
  String get giveStudentFeedback;

  /// Select student dropdown label
  ///
  /// In en, this message translates to:
  /// **'Select Student'**
  String get selectStudent;

  /// Student selection dropdown hint
  ///
  /// In en, this message translates to:
  /// **'Choose a student...'**
  String get chooseAStudent;

  /// Rate student performance label
  ///
  /// In en, this message translates to:
  /// **'Rate Student Performance'**
  String get rateStudentPerformance;

  /// Feedback message label
  ///
  /// In en, this message translates to:
  /// **'Feedback Message'**
  String get feedbackMessage;

  /// Feedback text field hint
  ///
  /// In en, this message translates to:
  /// **'Share your feedback about student\'s performance, participation, areas for improvement...'**
  String get feedbackHintText;

  /// Send feedback button text
  ///
  /// In en, this message translates to:
  /// **'Send Feedback to Student'**
  String get sendFeedbackToStudent;

  /// Empty feedback validation message
  ///
  /// In en, this message translates to:
  /// **'Please write your feedback'**
  String get pleaseWriteYourFeedback;

  /// No rating validation message
  ///
  /// In en, this message translates to:
  /// **'Please provide a rating'**
  String get pleaseProvideARating;

  /// Feedback sent success message
  ///
  /// In en, this message translates to:
  /// **'✅ Feedback sent to {studentName} successfully!'**
  String feedbackSentSuccessfully(String studentName);

  /// Instructor panel header text
  ///
  /// In en, this message translates to:
  /// **'Instructor Panel'**
  String get instructorPanel;

  /// Online students count text
  ///
  /// In en, this message translates to:
  /// **'{onlineCount} online • {totalCount} total students'**
  String onlineStudentsCount(int onlineCount, int totalCount);

  /// Chat input hint text for instructor
  ///
  /// In en, this message translates to:
  /// **'Message your students...'**
  String get messageYourStudents;

  /// Button text to schedule a new online session
  ///
  /// In en, this message translates to:
  /// **'Schedule New Session'**
  String get scheduleNewSession;

  /// Header text for session statistics overview
  ///
  /// In en, this message translates to:
  /// **'Session Overview'**
  String get sessionOverview;

  /// Message when no sessions are available
  ///
  /// In en, this message translates to:
  /// **'No sessions scheduled'**
  String get noSessionsScheduled;

  /// Subtitle message to create first session
  ///
  /// In en, this message translates to:
  /// **'Create your first session'**
  String get createYourFirstSession;

  /// Button text to schedule a session
  ///
  /// In en, this message translates to:
  /// **'Schedule Session'**
  String get scheduleSession;

  /// Button text to copy session link
  ///
  /// In en, this message translates to:
  /// **'Copy Link'**
  String get copyLink;

  /// Button text to copy session password
  ///
  /// In en, this message translates to:
  /// **'Copy Password'**
  String get copyPassword;

  /// Dialog title for deleting a session
  ///
  /// In en, this message translates to:
  /// **'Delete Session'**
  String get deleteSession;

  /// Confirmation message for deleting a session
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this session? This action cannot be undone.'**
  String get deleteSessionConfirmation;

  /// Success message after session deletion
  ///
  /// In en, this message translates to:
  /// **'Session deleted successfully'**
  String get sessionDeletedSuccessfully;

  /// Label for session title field
  ///
  /// In en, this message translates to:
  /// **'Session Title'**
  String get sessionTitle;

  /// Required label for session title field
  ///
  /// In en, this message translates to:
  /// **'Session Title *'**
  String get sessionTitleRequired;

  /// Label for platform field
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get platform;

  /// Required label for platform field
  ///
  /// In en, this message translates to:
  /// **'Platform *'**
  String get platformRequired;

  /// Placeholder text for time picker
  ///
  /// In en, this message translates to:
  /// **'Select Time *'**
  String get selectTime;

  /// Label showing session duration
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration} hours'**
  String durationHours(String duration);

  /// Button text to upload a new video
  ///
  /// In en, this message translates to:
  /// **'Upload New Video'**
  String get uploadNewVideo;

  /// Completion percentage display
  ///
  /// In en, this message translates to:
  /// **'{percentage}% complete'**
  String completePercentage(int percentage);

  /// Videos processing progress display
  ///
  /// In en, this message translates to:
  /// **'{loaded} of {total} videos processed'**
  String videosProcessed(int loaded, int total);

  /// Empty state message when no videos are available
  ///
  /// In en, this message translates to:
  /// **'No recorded videos yet'**
  String get noRecordedVideosYet;

  /// Empty state subtitle message
  ///
  /// In en, this message translates to:
  /// **'Upload your first recorded class'**
  String get uploadYourFirstRecordedClass;

  /// Dialog title for editing video details
  ///
  /// In en, this message translates to:
  /// **'Edit Video Details'**
  String get editVideoDetails;

  /// Success message after video update
  ///
  /// In en, this message translates to:
  /// **'✅ Video updated successfully!'**
  String get videoUpdatedSuccessfully;

  /// Dialog title for deleting video
  ///
  /// In en, this message translates to:
  /// **'Delete Video'**
  String get deleteVideo;

  /// Confirmation message for deleting video
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this video?'**
  String get areYouSureDeleteVideo;

  /// Warning message about irreversible action
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get thisActionCannotBeUndone;

  /// Success message after video deletion
  ///
  /// In en, this message translates to:
  /// **'🗑️ \"{title}\" deleted'**
  String videoDeleted(String title);

  /// Dialog title for uploading new video
  ///
  /// In en, this message translates to:
  /// **'Upload New Video'**
  String get uploadNewVideoDialog;

  /// Instruction text for file selection
  ///
  /// In en, this message translates to:
  /// **'Tap to select video file from storage'**
  String get tapToSelectVideoFile;

  /// Text showing selected filename
  ///
  /// In en, this message translates to:
  /// **'File selected: {filename}'**
  String fileSelectedPrefix(String filename);

  /// Snackbar message when file is selected
  ///
  /// In en, this message translates to:
  /// **'📁 File selected: {filename}'**
  String fileSelected(String filename);

  /// Required label for video title field
  ///
  /// In en, this message translates to:
  /// **'Video Title *'**
  String get videoTitleRequired;

  /// Button text to upload video
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get uploadButton;

  /// Upload progress message
  ///
  /// In en, this message translates to:
  /// **'📤 Uploading \"{title}\"...'**
  String uploadingVideo(String title);

  /// Success message after video publish
  ///
  /// In en, this message translates to:
  /// **'✅ \"{title}\" published successfully!'**
  String videoPublishedSuccessfully(String title);

  /// Error message for video metadata
  ///
  /// In en, this message translates to:
  /// **'Metadata error: {error}'**
  String metadataError(String error);

  /// Required label for session link field
  ///
  /// In en, this message translates to:
  /// **'Session Link *'**
  String get sessionLinkRequired;

  /// Label for optional password field
  ///
  /// In en, this message translates to:
  /// **'Password (optional)'**
  String get passwordOptional;

  /// Success message after scheduling session
  ///
  /// In en, this message translates to:
  /// **'Session scheduled successfully!'**
  String get sessionScheduledSuccessfully;

  /// Error message for incomplete form
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields'**
  String get fillAllRequiredFields;

  /// Dialog title for editing a session
  ///
  /// In en, this message translates to:
  /// **'Edit Session'**
  String get editSession;

  /// Success message after updating session
  ///
  /// In en, this message translates to:
  /// **'Session updated successfully!'**
  String get sessionUpdatedSuccessfully;

  /// Message when starting a session
  ///
  /// In en, this message translates to:
  /// **'Starting {platform} session...'**
  String startingSession(String platform);

  /// Upload button text for study materials
  ///
  /// In en, this message translates to:
  /// **'Upload Study Material'**
  String get uploadStudyMaterial;

  /// Empty state message when no study materials are available
  ///
  /// In en, this message translates to:
  /// **'No study materials yet'**
  String get noStudyMaterialsYet;

  /// Empty state subtitle encouraging first upload
  ///
  /// In en, this message translates to:
  /// **'Upload your first study material'**
  String get uploadYourFirstStudyMaterial;

  /// Error message when file is not available for a material
  ///
  /// In en, this message translates to:
  /// **'❌ No file available for this material'**
  String get noFileAvailableForThisMaterial;

  /// Success message when opening a file
  ///
  /// In en, this message translates to:
  /// **'📁 Opening file: {fileName}'**
  String openingFile(String fileName);

  /// Title for file preview dialog
  ///
  /// In en, this message translates to:
  /// **'File Preview'**
  String get filePreview;

  /// File name label in preview
  ///
  /// In en, this message translates to:
  /// **'File: {fileName}'**
  String fileLabel(String fileName);

  /// File size label in preview
  ///
  /// In en, this message translates to:
  /// **'Size: {fileSize}'**
  String sizeLabel(String fileSize);

  /// File type label in preview
  ///
  /// In en, this message translates to:
  /// **'Type: {fileType}'**
  String typeLabel(String fileType);

  /// Description text in file preview placeholder
  ///
  /// In en, this message translates to:
  /// **'In real app, this would show the actual file content'**
  String get inRealAppDescription;

  /// Open file button text
  ///
  /// In en, this message translates to:
  /// **'Open File'**
  String get openFile;

  /// Message when opening file with system viewer
  ///
  /// In en, this message translates to:
  /// **'📂 Opening {fileName} with system viewer'**
  String openingFileWithSystemViewer(String fileName);

  /// Title for edit material dialog
  ///
  /// In en, this message translates to:
  /// **'Edit Material Details'**
  String get editMaterialDetails;

  /// Success message when material is updated
  ///
  /// In en, this message translates to:
  /// **'✅ Material updated successfully!'**
  String get materialUpdatedSuccessfully;

  /// Title for delete material dialog
  ///
  /// In en, this message translates to:
  /// **'Delete Material'**
  String get deleteMaterial;

  /// Confirmation message for deleting material
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this material?'**
  String get areYouSureDeleteMaterial;

  /// Message when material is deleted
  ///
  /// In en, this message translates to:
  /// **'🗑️ \"{materialTitle}\" deleted'**
  String materialDeleted(String materialTitle);

  /// Title for file selection dialog
  ///
  /// In en, this message translates to:
  /// **'Select {fileType} File'**
  String selectFileType(String fileType);

  /// Instructions for file selection
  ///
  /// In en, this message translates to:
  /// **'Choose a file from your device:'**
  String get chooseFileFromDevice;

  /// Message when no file is selected
  ///
  /// In en, this message translates to:
  /// **'No file selected'**
  String get noFileSelected;

  /// Button to choose file
  ///
  /// In en, this message translates to:
  /// **'Choose File'**
  String get chooseFile;

  /// Button to change selected file
  ///
  /// In en, this message translates to:
  /// **'Change File'**
  String get changeFile;

  /// Required title field label
  ///
  /// In en, this message translates to:
  /// **'Title *'**
  String get titleRequired;

  /// File type selection label
  ///
  /// In en, this message translates to:
  /// **'File Type'**
  String get fileType;

  /// Success message when material is uploaded
  ///
  /// In en, this message translates to:
  /// **'✅ \"{materialTitle}\" uploaded successfully!'**
  String materialUploadedSuccessfully(String materialTitle);

  /// Default description for study materials
  ///
  /// In en, this message translates to:
  /// **'Study material for {courseTitle}'**
  String studyMaterialFor(String courseTitle);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['bn', 'en', 'es', 'ja', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
