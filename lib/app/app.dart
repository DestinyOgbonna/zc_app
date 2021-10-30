<<<<<<< HEAD

import 'package:zurichat/services/centrifuge_service.dart';
import 'package:zurichat/services/localization_service.dart';
import 'package:zurichat/services/media_service.dart';
import 'package:zurichat/services/notification_service.dart';
import 'package:zurichat/services/status_service.dart';
import 'package:zurichat/services/zuri_theme_service.dart';
import 'package:zurichat/ui/nav_pages/dm_page/dm_search_find_page.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/plugin_intro_page.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/plugin_page_view.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_view.dart';
import 'package:zurichat/ui/view/direct_message/direct_message.dart';
import 'package:zurichat/ui/view/dm_jump_to_view/dm_jump_to_view.dart';
=======
import 'package:zurichat/services/core_services/organization_api_service.dart';
import 'package:zurichat/services/messaging_services/centrifuge_rtc_service.dart';
import 'package:zurichat/services/app_services/localization_service.dart';
import 'package:zurichat/services/app_services/media_service.dart';
import 'package:zurichat/services/app_services/notification_service.dart';
import 'package:zurichat/services/in_review/status_service.dart';
import 'package:zurichat/services/app_services/zuri_theme_service.dart';
import 'package:zurichat/ui/nav_pages/dm_page/dm_search_find_page.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/plugin_view.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_view.dart';
import 'package:zurichat/ui/view/direct_message/direct_message.dart';
import 'package:zurichat/ui/view/jump_to_view/jump_to_view.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:zurichat/ui/view/organization/invite_to_organization/admin_permissions/create_invite_link.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/admin_permissions/invite_via_email.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/invitation_sent.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/invite_via_contact/import_contact.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/invite_via_email/invite_via_email.dart';
import 'package:zurichat/ui/view/organization/organization_settings/organization_logo.dart';
import 'package:zurichat/ui/view/organization/organization_settings/organization_name_url.dart';
import 'package:zurichat/ui/view/organization/organization_settings/organization_settings_view.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/view/static_pages/terms_and_conditions/terms_and_conditions_view.dart';
import 'package:zurichat/ui/view/threads/all_threads/threads_view.dart';
import 'package:zurichat/package/base/jump_to_request/jump_to_api.dart';
import 'package:zurichat/ui/view/user_search/user_search_view.dart';
import 'package:zurichat/package/base/server-request/channels/channels_api_service.dart';
import 'package:zurichat/package/base/server-request/dms/dms_api_service.dart';
import 'package:zurichat/services/user_service.dart';
=======
import 'package:zurichat/ui/view/plugins/add_plugin_view.dart';
import 'package:zurichat/ui/view/static_pages/terms_and_conditions/terms_and_conditions_view.dart';
import 'package:zurichat/ui/view/threads/all_threads/threads_view.dart';
import 'package:zurichat/services/in_review/jump_to_api.dart';
import 'package:zurichat/ui/view/user_search/user_search_view.dart';
import 'package:zurichat/services/messaging_services/channels_api_service.dart';
import 'package:zurichat/services/messaging_services/dms_api_service.dart';
import 'package:zurichat/services/in_review/user_service.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:zurichat/ui/view/channel/edit_channel/edit_channel_view.dart';
import 'package:zurichat/ui/view/threads/thread_detail/thread_detail_view.dart';
import 'package:zurichat/ui/view/organization/organization_url/organization_url_view.dart';
import 'package:zurichat/ui/view/channel/add_people/channel_add_people_view.dart';
import 'package:zurichat/ui/view/forgot_password/forgot_password_email/forgot_password_email_view.dart';
import 'package:zurichat/ui/view/forgot_password/forgot_password_new_password/forgot_password_newview.dart';
import 'package:zurichat/ui/view/forgot_password/forgot_password_otp/forgot_password_otpview.dart';
import 'package:zurichat/ui/view/webview_page/webview_page.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
<<<<<<< HEAD
import '../package/base/jump_to_request/jump_to_api.dart';
import '../package/base/server-request/channels/channels_api_service.dart';
import '../package/base/server-request/dms/dms_api_service.dart';
import '../services/connectivity_service.dart';
import '../services/local_storage_services.dart';
import '../services/user_service.dart';
=======
import '../services/in_review/jump_to_api.dart';
import '../services/messaging_services/channels_api_service.dart';
import '../services/messaging_services/dms_api_service.dart';
import '../services/app_services/connectivity_service.dart';
import '../services/app_services/local_storage_services.dart';
import '../services/in_review/user_service.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import '../ui/nav_pages/home_page/home_page.dart';
import '../ui/view/add_people/add_people_view.dart';
import '../ui/view/advanced/advanced_view.dart';
import '../ui/view/channel/add_people/channel_add_people_view.dart';
import '../ui/view/channel/channel_info/channel_info_view.dart';
import '../ui/view/channel/channel_list/channels_view.dart';
import '../ui/view/channel/channel_notification/channel_notification_view.dart';
import '../ui/view/channel/channel_view/channel_page_view.dart';
import '../ui/view/channel/edit_channel/edit_channel_view.dart';
import '../ui/view/channel/new_channel/new_channel.dart';
import '../ui/view/clear_after/clear_after_view.dart';
<<<<<<< HEAD

=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import '../ui/view/dm_search/dm_search_view.dart';
import '../ui/view/dm_user/dm_user_view.dart';
import '../ui/view/do_not_disturb/do_not_disturb_view.dart';
import '../ui/view/draft/draft_view.dart';
import '../ui/view/edit_profile/edit_profile_view.dart';
import '../ui/view/file_search/file_search_view.dart';
import '../ui/view/forgot_password/forgot_password_email/forgot_password_email_view.dart';
import '../ui/view/forgot_password/forgot_password_new_password/forgot_password_newview.dart';
import '../ui/view/forgot_password/forgot_password_otp/forgot_password_otpview.dart';
import '../ui/view/language_and_region/language_and_region_view.dart';
import '../ui/view/login/login_view.dart';
import '../ui/nav_pages/nav_bar/nav_bar_view.dart';
import '../ui/view/notifications/notifications_view.dart';
import '../ui/view/onboarding/onboading_view.dart';
import '../ui/view/organization/add_organization/add_organization_view.dart';
import '../ui/view/organization/create_organization/create_organization.dart';
import '../ui/view/organization/organization_different_email/different_email_organization_view.dart';
import '../ui/view/organization/organization_url/organization_url_view.dart';
import '../ui/view/organization/organization_view/organization_view.dart';
import '../ui/view/organization/select_email/select_email_view.dart';
import '../ui/view/otp/otp_view.dart';
import '../ui/view/channel/pinned_messages/pinned_messages_view.dart';
<<<<<<< HEAD
import '../ui/nav_pages/plugin_page/add_plugin_view.dart';
import '../ui/nav_pages/plugin_page/edit_plugin_view.dart';
import '../ui/nav_pages/plugin_page/plugins_view.dart';
=======

>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import '../ui/view/popup_notification/popup_notification.dart';
import '../ui/view/preference/preference_view.dart';
import '../ui/view/profile_page/profile_page_view.dart';
import '../ui/view/saved_items/saved_items_view.dart';
import '../ui/view/set_status/set_status_view.dart';
import '../ui/view/sign_up/sign_up_view.dart';
import '../ui/view/splashscreen/splashscreen.dart';
import '../ui/view/start_dm/start_dm_view.dart';
import '../ui/view/threads/all_threads/threads_view.dart';
import '../ui/view/threads/thread_detail/thread_detail_view.dart';
import '../ui/view/user_search/user_search_view.dart';

@StackedApp(
  routes: [
<<<<<<< HEAD

=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    CupertinoRoute(page: ChannelAddPeopleView),
    CupertinoRoute(page: NavBarView),
    CupertinoRoute(page: OnboardingView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: OTPView),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: OrganizationView),
    CupertinoRoute(page: ChannelList),
    CupertinoRoute(page: ForgotPasswordEmailView),
    CupertinoRoute(page: ForgotPasswordOtpView),
    CupertinoRoute(page: ForgotPasswordNewView),
    CupertinoRoute(page: ChannelNotificationView),
    CupertinoRoute(page: NewChannel),
    CupertinoRoute(page: HomePage),
    CupertinoRoute(page: AddPeopleView),
    CupertinoRoute(page: DmSearch),
<<<<<<< HEAD
    CupertinoRoute(page: DmJumpToView),
    CupertinoRoute(page: DmUserView),
    CupertinoRoute(page: DmScreen),
    CupertinoRoute(page: Splashview, initial: true),
    CupertinoRoute(page: PluginView),
    CupertinoRoute(page: AddPluginView),
    CupertinoRoute(page: UseDifferentEmailView),
    CupertinoRoute(page: EditPluginView),
=======
    CupertinoRoute(page: JumpToView),
    CupertinoRoute(page: DmUserView),
    CupertinoRoute(page: DmScreen),
    CupertinoRoute(page: Splashview, initial: true),
    CupertinoRoute(page: PluginPage),
    CupertinoRoute(page: UseDifferentEmailView),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    CupertinoRoute(page: SetStatusView),
    CupertinoRoute(page: ProfilePageView),
    CupertinoRoute(page: PreferenceView),
    CupertinoRoute(page: LanguageAndRegionModelView),
    CupertinoRoute(page: SavedItemsView),
    CupertinoRoute(page: NotificationsView),
    CupertinoRoute(page: AdvancedView),
    CupertinoRoute(page: ClearAfterView),
    CupertinoRoute(page: DoNotDisturbView),
    CupertinoRoute(page: EditProfileView),
    CupertinoRoute(page: PopUpNotificationsView),
    CupertinoRoute(page: PinnedMessagesView),
    CupertinoRoute(page: SelectEmail),
    CupertinoRoute(page: AddOrganizationView),
    CupertinoRoute(page: CreateOrganization),
    CupertinoRoute(page: FileSearchView),
    CupertinoRoute(page: DraftView),
    CupertinoRoute(page: ThreadsView),
    CupertinoRoute(page: ThreadDetailView),
    CupertinoRoute(page: UserSearchView),
    CupertinoRoute(page: EditChannelPageView),
    CupertinoRoute(page: StartDmView),
    CupertinoRoute(page: OrganizationUrlView),
    CupertinoRoute(page: ChannelPageView),
    CupertinoRoute(page: ChannelInfoView),
<<<<<<< HEAD
    CupertinoRoute(page: PluginPage),
    CupertinoRoute(page: DirectMessage),
    CupertinoRoute(page: TermsAndConditionsView),
    CupertinoRoute(page: WebViewPage),
    CupertinoRoute(page: PluginPageIntro),
=======
    CupertinoRoute(page: DirectMessage),
    CupertinoRoute(page: TermsAndConditionsView),
    CupertinoRoute(page: WebViewPage),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    CupertinoRoute(page: InviteViaEmail),
    CupertinoRoute(page: InviteViaEmailAdmin),
    CupertinoRoute(page: ImportContacts),
    CupertinoRoute(page: CreateInviteLink),
    CupertinoRoute(page: InvitationSent),
    CupertinoRoute(page: ShareMessageView),
    CupertinoRoute(page: OrganizationSettingsView),
    CupertinoRoute(page: OrganizationNameUrl),
    CupertinoRoute(page: OrganizationLogo),
<<<<<<< HEAD

=======
    CupertinoRoute(page: AddPluginView)
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    Presolve(
      classType: ZuriThemeService,
      presolveUsing: ZuriThemeService.getInstance,
    ),
    LazySingleton(classType: LocalizationService),
    Presolve(
      classType: SharedPreferenceLocalStorage,
      presolveUsing: SharedPreferences.getInstance,
    ),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    Presolve(
      classType: ConnectivityService,
      presolveUsing: ConnectivityService.getInstance,
    ),
    LazySingleton(classType: UserService),
    LazySingleton(classType: MediaService),
    LazySingleton(classType: DMApiService),
    LazySingleton(classType: ChannelsApiService),
    LazySingleton(classType: JumpToApi),
    LazySingleton(classType: NotificationService),
    Presolve(
      classType: CentrifugeService,
      presolveUsing: CentrifugeService.getInstance,
    ),
    LazySingleton(classType: StatusService),
<<<<<<< HEAD
=======
    LazySingleton(classType: OrganizationApiService),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /* This class serves no other purpose other than having the
   StackedApp annotation attached to it*/
}
