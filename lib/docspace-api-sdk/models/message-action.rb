# (c) Copyright Ascensio System SIA 2026
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'date'
require 'time'

module DocspaceApiSdk
  class MessageAction
    LoginSuccess = 1000.freeze
    LoginSuccessViaSocialAccount = 1001.freeze
    LoginFailInvalidCombination = 1002.freeze
    LoginFailSocialAccountNotFound = 1003.freeze
    LoginFailDisabledProfile = 1004.freeze
    LoginFail = 1005.freeze
    Logout = 1006.freeze
    LoginSuccessViaSms = 1007.freeze
    LoginFailViaSms = 1008.freeze
    LoginFailIpSecurity = 1009.freeze
    LoginSuccessViaApi = 1010.freeze
    LoginSuccessViaSocialApp = 1011.freeze
    LoginSuccessViaApiSms = 1012.freeze
    LoginFailViaApi = 1013.freeze
    LoginFailViaApiSms = 1014.freeze
    LoginSuccessViaSSO = 1015.freeze
    SessionStarted = 1016.freeze
    SessionCompleted = 1017.freeze
    LoginFailViaSSO = 1018.freeze
    LoginSuccessViaApiSocialAccount = 1019.freeze
    LoginFailViaApiSocialAccount = 1020.freeze
    LoginSuccesViaTfaApp = 1021.freeze
    LoginFailViaTfaApp = 1022.freeze
    LoginFailBruteForce = 1023.freeze
    LoginSuccessViaApiTfa = 1024.freeze
    LoginFailViaApiTfa = 1025.freeze
    LoginFailRecaptcha = 1026.freeze
    AuthLinkActivated = 1027.freeze
    LoginSuccessViaOAuth = 1028.freeze
    LoginSuccessViaPassword = 1029.freeze
    UserCreated = 4000.freeze
    GuestCreated = 4001.freeze
    UserCreatedViaInvite = 4002.freeze
    GuestCreatedViaInvite = 4003.freeze
    UserActivated = 4004.freeze
    GuestActivated = 4005.freeze
    UserUpdated = 4006.freeze
    UserUpdatedLanguage = 4007.freeze
    UserAddedAvatar = 4008.freeze
    UserDeletedAvatar = 4009.freeze
    UserUpdatedAvatarThumbnails = 4010.freeze
    UserLinkedSocialAccount = 4011.freeze
    UserUnlinkedSocialAccount = 4012.freeze
    UserSentActivationInstructions = 4013.freeze
    UserSentEmailChangeInstructions = 4014.freeze
    UserSentPasswordChangeInstructions = 4015.freeze
    UserSentDeleteInstructions = 4016.freeze
    UserUpdatedPassword = 4017.freeze
    UserDeleted = 4018.freeze
    UsersUpdatedType = 4019.freeze
    UsersUpdatedStatus = 4020.freeze
    UsersSentActivationInstructions = 4021.freeze
    UsersDeleted = 4022.freeze
    SentInviteInstructions = 4023.freeze
    UserImported = 4024.freeze
    GuestImported = 4025.freeze
    GroupCreated = 4026.freeze
    GroupUpdated = 4027.freeze
    GroupDeleted = 4028.freeze
    UserUpdatedMobileNumber = 4029.freeze
    UserDataReassigns = 4030.freeze
    UserDataRemoving = 4031.freeze
    UserConnectedTfaApp = 4032.freeze
    UserDisconnectedTfaApp = 4033.freeze
    UserLogoutActiveConnections = 4034.freeze
    UserLogoutActiveConnection = 4035.freeze
    UserLogoutActiveConnectionsForUser = 4036.freeze
    SendJoinInvite = 4037.freeze
    FileCreated = 5000.freeze
    FileRenamed = 5001.freeze
    FileUpdated = 5002.freeze
    FileCreatedVersion = 5003.freeze
    FileDeletedVersion = 5004.freeze
    FileUpdatedRevisionComment = 5005.freeze
    FileLocked = 5006.freeze
    FileUnlocked = 5007.freeze
    FileUpdatedAccess = 5008.freeze
    FileDownloaded = 5009.freeze
    FileDownloadedAs = 5010.freeze
    FileUploaded = 5011.freeze
    FileImported = 5012.freeze
    FileCopied = 5013.freeze
    FileCopiedWithOverwriting = 5014.freeze
    FileMoved = 5015.freeze
    FileMovedWithOverwriting = 5016.freeze
    FileMovedToTrash = 5017.freeze
    FileDeleted = 5018.freeze
    FolderCreated = 5019.freeze
    FolderRenamed = 5020.freeze
    FolderUpdatedAccess = 5021.freeze
    FolderCopied = 5022.freeze
    FolderCopiedWithOverwriting = 5023.freeze
    FolderMoved = 5024.freeze
    FolderMovedWithOverwriting = 5025.freeze
    FolderMovedToTrash = 5026.freeze
    FolderDeleted = 5027.freeze
    ThirdPartyCreated = 5028.freeze
    ThirdPartyUpdated = 5029.freeze
    ThirdPartyDeleted = 5030.freeze
    DocumentsThirdPartySettingsUpdated = 5031.freeze
    DocumentsOverwritingSettingsUpdated = 5032.freeze
    DocumentsUploadingFormatsSettingsUpdated = 5033.freeze
    UserFileUpdated = 5034.freeze
    FileConverted = 5035.freeze
    FileSendAccessLink = 5036.freeze
    DocumentServiceLocationSetting = 5037.freeze
    AuthorizationKeysSetting = 5038.freeze
    FullTextSearchSetting = 5039.freeze
    StartTransferSetting = 5040.freeze
    BackupStarted = 5041.freeze
    LicenseKeyUploaded = 5042.freeze
    FileChangeOwner = 5043.freeze
    FileRestoreVersion = 5044.freeze
    DocumentSendToSign = 5045.freeze
    DocumentSignComplete = 5046.freeze
    UserUpdatedEmail = 5047.freeze
    DocumentsStoreForcesave = 5048.freeze
    DocumentsForcesave = 5049.freeze
    StartStorageEncryption = 5050.freeze
    PrivacyRoomEnable = 5051.freeze
    PrivacyRoomDisable = 5052.freeze
    StartStorageDecryption = 5053.freeze
    FileOpenedForChange = 5054.freeze
    FileMarkedAsFavorite = 5055.freeze
    FileRemovedFromFavorite = 5056.freeze
    FolderDownloaded = 5057.freeze
    FileRemovedFromList = 5058.freeze
    FolderRemovedFromList = 5059.freeze
    FileExternalLinkAccessUpdated = 5060.freeze
    TrashEmptied = 5061.freeze
    FileRevisionDownloaded = 5062.freeze
    FileMarkedAsRead = 5063.freeze
    FileReaded = 5064.freeze
    FolderMarkedAsRead = 5065.freeze
    FolderUpdatedAccessFor = 5066.freeze
    FileUpdatedAccessFor = 5068.freeze
    DocumentsExternalShareSettingsUpdated = 5069.freeze
    RoomCreated = 5070.freeze
    RoomRenamed = 5071.freeze
    RoomArchived = 5072.freeze
    RoomUnarchived = 5073.freeze
    RoomDeleted = 5074.freeze
    RoomUpdateAccessForUser = 5075.freeze
    TagCreated = 5076.freeze
    TagsDeleted = 5077.freeze
    AddedRoomTags = 5078.freeze
    DeletedRoomTags = 5079.freeze
    RoomLogoCreated = 5080.freeze
    RoomLogoDeleted = 5081.freeze
    RoomInvitationLinkUpdated = 5082.freeze
    DocumentsKeepNewFileNameSettingsUpdated = 5083.freeze
    RoomRemoveUser = 5084.freeze
    RoomCreateUser = 5085.freeze
    RoomInvitationLinkCreated = 5086.freeze
    RoomInvitationLinkDeleted = 5087.freeze
    RoomExternalLinkCreated = 5088.freeze
    RoomExternalLinkUpdated = 5089.freeze
    RoomExternalLinkDeleted = 5090.freeze
    FileExternalLinkCreated = 5091.freeze
    FileExternalLinkUpdated = 5092.freeze
    FileExternalLinkDeleted = 5093.freeze
    RoomGroupAdded = 5094.freeze
    RoomUpdateAccessForGroup = 5095.freeze
    RoomGroupRemove = 5096.freeze
    RoomExternalLinkRevoked = 5097.freeze
    RoomExternalLinkRenamed = 5098.freeze
    FileUploadedWithOverwriting = 5099.freeze
    RoomCopied = 5100.freeze
    DocumentsDisplayFileExtensionUpdated = 5101.freeze
    RoomColorChanged = 5102.freeze
    RoomCoverChanged = 5103.freeze
    RoomIndexingChanged = 5104.freeze
    RoomDenyDownloadChanged = 5105.freeze
    RoomIndexExportSaved = 5106.freeze
    FolderIndexChanged = 5107.freeze
    FolderIndexReordered = 5108.freeze
    RoomDenyDownloadEnabled = 5109.freeze
    RoomDenyDownloadDisabled = 5110.freeze
    FileIndexChanged = 5111.freeze
    RoomWatermarkSet = 5112.freeze
    RoomWatermarkDisabled = 5113.freeze
    RoomIndexingEnabled = 5114.freeze
    RoomIndexingDisabled = 5115.freeze
    RoomLifeTimeSet = 5116.freeze
    RoomLifeTimeDisabled = 5117.freeze
    RoomInviteResend = 5118.freeze
    FileVersionRemoved = 5119.freeze
    FileCustomFilterEnabled = 5120.freeze
    FileCustomFilterDisabled = 5121.freeze
    FolderExternalLinkCreated = 5122.freeze
    FolderExternalLinkUpdated = 5123.freeze
    FolderExternalLinkDeleted = 5124.freeze
    BackupCompleted = 5125.freeze
    BackupFailed = 5126.freeze
    ScheduledBackupStarted = 5127.freeze
    ScheduledBackupCompleted = 5128.freeze
    ScheduledBackupFailed = 5129.freeze
    ScheduledBackupDeleted = 5130.freeze
    BackupCancelled = 5131.freeze
    RestoreStarted = 5132.freeze
    RestoreCancelled = 5133.freeze
    FormStartedToFill = 5150.freeze
    FormPartiallyFilled = 5151.freeze
    FormCompletelyFilled = 5152.freeze
    FormStopped = 5153.freeze
    AgentCreated = 5154.freeze
    AgentRenamed = 5155.freeze
    AgentDeleted = 5156.freeze
    AddedServerToAgent = 5157.freeze
    DeletedServerFromAgent = 5158.freeze
    RoomChangeOwner = 5159.freeze
    DocumentsDefaultTemplatesSettingsUpdated = 5160.freeze
    FileSavedButUserQuotaExceeded = 5201.freeze
    FileNotSavedDueToUserQuota = 5202.freeze
    FileSavedButRoomQuotaExceeded = 5203.freeze
    FileNotSavedDueToRoomQuota = 5204.freeze
    LdapEnabled = 5501.freeze
    LdapDisabled = 5502.freeze
    LdapSync = 5503.freeze
    LanguageSettingsUpdated = 6000.freeze
    TimeZoneSettingsUpdated = 6001.freeze
    DnsSettingsUpdated = 6002.freeze
    TrustedMailDomainSettingsUpdated = 6003.freeze
    PasswordStrengthSettingsUpdated = 6004.freeze
    TwoFactorAuthenticationSettingsUpdated = 6005.freeze
    AdministratorMessageSettingsUpdated = 6006.freeze
    DefaultStartPageSettingsUpdated = 6007.freeze
    ProductsListUpdated = 6008.freeze
    AdministratorAdded = 6009.freeze
    AdministratorOpenedFullAccess = 6010.freeze
    AdministratorDeleted = 6011.freeze
    UsersOpenedProductAccess = 6012.freeze
    GroupsOpenedProductAccess = 6013.freeze
    ProductAccessOpened = 6014.freeze
    ProductAccessRestricted = 6015.freeze
    ProductAddedAdministrator = 6016.freeze
    ProductDeletedAdministrator = 6017.freeze
    GreetingSettingsUpdated = 6018.freeze
    TeamTemplateChanged = 6019.freeze
    ColorThemeChanged = 6020.freeze
    OwnerSentChangeOwnerInstructions = 6021.freeze
    OwnerUpdated = 6022.freeze
    OwnerSentPortalDeactivationInstructions = 6023.freeze
    OwnerSentPortalDeleteInstructions = 6024.freeze
    PortalDeactivated = 6025.freeze
    PortalDeleted = 6026.freeze
    LoginHistoryReportDownloaded = 6027.freeze
    AuditTrailReportDownloaded = 6028.freeze
    SSOEnabled = 6029.freeze
    SSODisabled = 6030.freeze
    PortalAccessSettingsUpdated = 6031.freeze
    CookieSettingsUpdated = 6032.freeze
    MailServiceSettingsUpdated = 6033.freeze
    CustomNavigationSettingsUpdated = 6034.freeze
    AuditSettingsUpdated = 6035.freeze
    TwoFactorAuthenticationDisabled = 6036.freeze
    TwoFactorAuthenticationEnabledBySms = 6037.freeze
    TwoFactorAuthenticationEnabledByTfaApp = 6038.freeze
    PortalRenamed = 6039.freeze
    QuotaPerRoomChanged = 6040.freeze
    QuotaPerRoomDisabled = 6041.freeze
    QuotaPerUserChanged = 6042.freeze
    QuotaPerUserDisabled = 6043.freeze
    QuotaPerPortalChanged = 6044.freeze
    QuotaPerPortalDisabled = 6045.freeze
    FormSubmit = 6046.freeze
    FormOpenedForFilling = 6047.freeze
    CustomQuotaPerRoomDefault = 6048.freeze
    CustomQuotaPerRoomChanged = 6049.freeze
    CustomQuotaPerRoomDisabled = 6050.freeze
    CustomQuotaPerUserDefault = 6051.freeze
    CustomQuotaPerUserChanged = 6052.freeze
    CustomQuotaPerUserDisabled = 6053.freeze
    DevToolsAccessSettingsChanged = 6054.freeze
    WebhookCreated = 6055.freeze
    WebhookUpdated = 6056.freeze
    WebhookDeleted = 6057.freeze
    ApiKeyCreated = 6058.freeze
    ApiKeyUpdated = 6059.freeze
    ApiKeyDeleted = 6060.freeze
    CustomerWalletToppedUp = 6061.freeze
    CustomerOperationPerformed = 6062.freeze
    CustomerOperationsReportDownloaded = 6063.freeze
    CustomerWalletTopUpSettingsUpdated = 6064.freeze
    CustomerSubscriptionUpdated = 6065.freeze
    BannerSettingsChanged = 6066.freeze
    CustomerWalletServicesSettingsUpdated = 6067.freeze
    QuotaPerAiAgentChanged = 6068.freeze
    QuotaPerAiAgentDisabled = 6069.freeze
    CustomQuotaPerAiAgentDefault = 6070.freeze
    CustomQuotaPerAiAgentChanged = 6071.freeze
    CustomQuotaPerAiAgentDisabled = 6072.freeze
    AIProviderCreated = 6073.freeze
    AIProviderUpdated = 6074.freeze
    AIProviderDeleted = 6075.freeze
    ServerCreated = 6076.freeze
    ServerUpdated = 6077.freeze
    ServerEnabled = 6078.freeze
    ServerDisabled = 6079.freeze
    ServerDeleted = 6080.freeze
    SetWebSearchSettings = 6081.freeze
    ResetWebSearchSettings = 6082.freeze
    SetVectorizationSettings = 6083.freeze
    ResetVectorizationSettings = 6084.freeze
    WebpluginUploaded = 6085.freeze
    WebpluginUpdated = 6086.freeze
    WebpluginDeleted = 6087.freeze
    WhiteLabelSettingsLogoTextUpdated = 6088.freeze
    WhiteLabelSettingsLogosUpdated = 6089.freeze
    WhiteLabelCompanySettingsUpdated = 6090.freeze
    WhiteLabelAdditionalSettingsUpdated = 6091.freeze
    WhiteLabelMailSettingsUpdated = 6092.freeze
    InvitationSettingsUpdated = 6093.freeze
    IPRestrictionsSettingsUpdated = 6094.freeze
    LoginSettingsUpdated = 6095.freeze
    AIDefaultProviderSet = 6096.freeze
    AIAccessEnabled = 6097.freeze
    AIAccessDisabled = 6098.freeze
    UserUpdatedAiSettings = 6099.freeze
    ContactAdminMailSent = 7000.freeze
    RoomInviteLinkUsed = 7001.freeze
    UserCreatedAndAddedToRoom = 7002.freeze
    GuestCreatedAndAddedToRoom = 7003.freeze
    ContactSalesMailSent = 7004.freeze
    CreateClient = 9901.freeze
    UpdateClient = 9902.freeze
    RegenerateSecret = 9903.freeze
    DeleteClient = 9904.freeze
    ChangeClientActivation = 9905.freeze
    ChangeClientVisibility = 9906.freeze
    RevokeUserClient = 9907.freeze
    GenerateAuthorizationCodeToken = 9908.freeze
    GeneratePersonalAccessToken = 9909.freeze
    None = -1.freeze

    def self.all_vars
      @all_vars ||= [LoginSuccess, LoginSuccessViaSocialAccount, LoginFailInvalidCombination, LoginFailSocialAccountNotFound, LoginFailDisabledProfile, LoginFail, Logout, LoginSuccessViaSms, LoginFailViaSms, LoginFailIpSecurity, LoginSuccessViaApi, LoginSuccessViaSocialApp, LoginSuccessViaApiSms, LoginFailViaApi, LoginFailViaApiSms, LoginSuccessViaSSO, SessionStarted, SessionCompleted, LoginFailViaSSO, LoginSuccessViaApiSocialAccount, LoginFailViaApiSocialAccount, LoginSuccesViaTfaApp, LoginFailViaTfaApp, LoginFailBruteForce, LoginSuccessViaApiTfa, LoginFailViaApiTfa, LoginFailRecaptcha, AuthLinkActivated, LoginSuccessViaOAuth, LoginSuccessViaPassword, UserCreated, GuestCreated, UserCreatedViaInvite, GuestCreatedViaInvite, UserActivated, GuestActivated, UserUpdated, UserUpdatedLanguage, UserAddedAvatar, UserDeletedAvatar, UserUpdatedAvatarThumbnails, UserLinkedSocialAccount, UserUnlinkedSocialAccount, UserSentActivationInstructions, UserSentEmailChangeInstructions, UserSentPasswordChangeInstructions, UserSentDeleteInstructions, UserUpdatedPassword, UserDeleted, UsersUpdatedType, UsersUpdatedStatus, UsersSentActivationInstructions, UsersDeleted, SentInviteInstructions, UserImported, GuestImported, GroupCreated, GroupUpdated, GroupDeleted, UserUpdatedMobileNumber, UserDataReassigns, UserDataRemoving, UserConnectedTfaApp, UserDisconnectedTfaApp, UserLogoutActiveConnections, UserLogoutActiveConnection, UserLogoutActiveConnectionsForUser, SendJoinInvite, FileCreated, FileRenamed, FileUpdated, FileCreatedVersion, FileDeletedVersion, FileUpdatedRevisionComment, FileLocked, FileUnlocked, FileUpdatedAccess, FileDownloaded, FileDownloadedAs, FileUploaded, FileImported, FileCopied, FileCopiedWithOverwriting, FileMoved, FileMovedWithOverwriting, FileMovedToTrash, FileDeleted, FolderCreated, FolderRenamed, FolderUpdatedAccess, FolderCopied, FolderCopiedWithOverwriting, FolderMoved, FolderMovedWithOverwriting, FolderMovedToTrash, FolderDeleted, ThirdPartyCreated, ThirdPartyUpdated, ThirdPartyDeleted, DocumentsThirdPartySettingsUpdated, DocumentsOverwritingSettingsUpdated, DocumentsUploadingFormatsSettingsUpdated, UserFileUpdated, FileConverted, FileSendAccessLink, DocumentServiceLocationSetting, AuthorizationKeysSetting, FullTextSearchSetting, StartTransferSetting, BackupStarted, LicenseKeyUploaded, FileChangeOwner, FileRestoreVersion, DocumentSendToSign, DocumentSignComplete, UserUpdatedEmail, DocumentsStoreForcesave, DocumentsForcesave, StartStorageEncryption, PrivacyRoomEnable, PrivacyRoomDisable, StartStorageDecryption, FileOpenedForChange, FileMarkedAsFavorite, FileRemovedFromFavorite, FolderDownloaded, FileRemovedFromList, FolderRemovedFromList, FileExternalLinkAccessUpdated, TrashEmptied, FileRevisionDownloaded, FileMarkedAsRead, FileReaded, FolderMarkedAsRead, FolderUpdatedAccessFor, FileUpdatedAccessFor, DocumentsExternalShareSettingsUpdated, RoomCreated, RoomRenamed, RoomArchived, RoomUnarchived, RoomDeleted, RoomUpdateAccessForUser, TagCreated, TagsDeleted, AddedRoomTags, DeletedRoomTags, RoomLogoCreated, RoomLogoDeleted, RoomInvitationLinkUpdated, DocumentsKeepNewFileNameSettingsUpdated, RoomRemoveUser, RoomCreateUser, RoomInvitationLinkCreated, RoomInvitationLinkDeleted, RoomExternalLinkCreated, RoomExternalLinkUpdated, RoomExternalLinkDeleted, FileExternalLinkCreated, FileExternalLinkUpdated, FileExternalLinkDeleted, RoomGroupAdded, RoomUpdateAccessForGroup, RoomGroupRemove, RoomExternalLinkRevoked, RoomExternalLinkRenamed, FileUploadedWithOverwriting, RoomCopied, DocumentsDisplayFileExtensionUpdated, RoomColorChanged, RoomCoverChanged, RoomIndexingChanged, RoomDenyDownloadChanged, RoomIndexExportSaved, FolderIndexChanged, FolderIndexReordered, RoomDenyDownloadEnabled, RoomDenyDownloadDisabled, FileIndexChanged, RoomWatermarkSet, RoomWatermarkDisabled, RoomIndexingEnabled, RoomIndexingDisabled, RoomLifeTimeSet, RoomLifeTimeDisabled, RoomInviteResend, FileVersionRemoved, FileCustomFilterEnabled, FileCustomFilterDisabled, FolderExternalLinkCreated, FolderExternalLinkUpdated, FolderExternalLinkDeleted, BackupCompleted, BackupFailed, ScheduledBackupStarted, ScheduledBackupCompleted, ScheduledBackupFailed, ScheduledBackupDeleted, BackupCancelled, RestoreStarted, RestoreCancelled, FormStartedToFill, FormPartiallyFilled, FormCompletelyFilled, FormStopped, AgentCreated, AgentRenamed, AgentDeleted, AddedServerToAgent, DeletedServerFromAgent, RoomChangeOwner, DocumentsDefaultTemplatesSettingsUpdated, FileSavedButUserQuotaExceeded, FileNotSavedDueToUserQuota, FileSavedButRoomQuotaExceeded, FileNotSavedDueToRoomQuota, LdapEnabled, LdapDisabled, LdapSync, LanguageSettingsUpdated, TimeZoneSettingsUpdated, DnsSettingsUpdated, TrustedMailDomainSettingsUpdated, PasswordStrengthSettingsUpdated, TwoFactorAuthenticationSettingsUpdated, AdministratorMessageSettingsUpdated, DefaultStartPageSettingsUpdated, ProductsListUpdated, AdministratorAdded, AdministratorOpenedFullAccess, AdministratorDeleted, UsersOpenedProductAccess, GroupsOpenedProductAccess, ProductAccessOpened, ProductAccessRestricted, ProductAddedAdministrator, ProductDeletedAdministrator, GreetingSettingsUpdated, TeamTemplateChanged, ColorThemeChanged, OwnerSentChangeOwnerInstructions, OwnerUpdated, OwnerSentPortalDeactivationInstructions, OwnerSentPortalDeleteInstructions, PortalDeactivated, PortalDeleted, LoginHistoryReportDownloaded, AuditTrailReportDownloaded, SSOEnabled, SSODisabled, PortalAccessSettingsUpdated, CookieSettingsUpdated, MailServiceSettingsUpdated, CustomNavigationSettingsUpdated, AuditSettingsUpdated, TwoFactorAuthenticationDisabled, TwoFactorAuthenticationEnabledBySms, TwoFactorAuthenticationEnabledByTfaApp, PortalRenamed, QuotaPerRoomChanged, QuotaPerRoomDisabled, QuotaPerUserChanged, QuotaPerUserDisabled, QuotaPerPortalChanged, QuotaPerPortalDisabled, FormSubmit, FormOpenedForFilling, CustomQuotaPerRoomDefault, CustomQuotaPerRoomChanged, CustomQuotaPerRoomDisabled, CustomQuotaPerUserDefault, CustomQuotaPerUserChanged, CustomQuotaPerUserDisabled, DevToolsAccessSettingsChanged, WebhookCreated, WebhookUpdated, WebhookDeleted, ApiKeyCreated, ApiKeyUpdated, ApiKeyDeleted, CustomerWalletToppedUp, CustomerOperationPerformed, CustomerOperationsReportDownloaded, CustomerWalletTopUpSettingsUpdated, CustomerSubscriptionUpdated, BannerSettingsChanged, CustomerWalletServicesSettingsUpdated, QuotaPerAiAgentChanged, QuotaPerAiAgentDisabled, CustomQuotaPerAiAgentDefault, CustomQuotaPerAiAgentChanged, CustomQuotaPerAiAgentDisabled, AIProviderCreated, AIProviderUpdated, AIProviderDeleted, ServerCreated, ServerUpdated, ServerEnabled, ServerDisabled, ServerDeleted, SetWebSearchSettings, ResetWebSearchSettings, SetVectorizationSettings, ResetVectorizationSettings, WebpluginUploaded, WebpluginUpdated, WebpluginDeleted, WhiteLabelSettingsLogoTextUpdated, WhiteLabelSettingsLogosUpdated, WhiteLabelCompanySettingsUpdated, WhiteLabelAdditionalSettingsUpdated, WhiteLabelMailSettingsUpdated, InvitationSettingsUpdated, IPRestrictionsSettingsUpdated, LoginSettingsUpdated, AIDefaultProviderSet, AIAccessEnabled, AIAccessDisabled, UserUpdatedAiSettings, ContactAdminMailSent, RoomInviteLinkUsed, UserCreatedAndAddedToRoom, GuestCreatedAndAddedToRoom, ContactSalesMailSent, CreateClient, UpdateClient, RegenerateSecret, DeleteClient, ChangeClientActivation, ChangeClientVisibility, RevokeUserClient, GenerateAuthorizationCodeToken, GeneratePersonalAccessToken, None].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if MessageAction.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #MessageAction"
    end
  end
end
