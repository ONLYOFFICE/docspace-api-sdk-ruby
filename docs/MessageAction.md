# DocspaceApiSdk::MessageAction

## Enum


* `LoginSuccess` (value: `1000`)

* `LoginSuccessViaSocialAccount` (value: `1001`)

* `LoginFailInvalidCombination` (value: `1002`)

* `LoginFailSocialAccountNotFound` (value: `1003`)

* `LoginFailDisabledProfile` (value: `1004`)

* `LoginFail` (value: `1005`)

* `Logout` (value: `1006`)

* `LoginSuccessViaSms` (value: `1007`)

* `LoginFailViaSms` (value: `1008`)

* `LoginFailIpSecurity` (value: `1009`)

* `LoginSuccessViaApi` (value: `1010`)

* `LoginSuccessViaSocialApp` (value: `1011`)

* `LoginSuccessViaApiSms` (value: `1012`)

* `LoginFailViaApi` (value: `1013`)

* `LoginFailViaApiSms` (value: `1014`)

* `LoginSuccessViaSSO` (value: `1015`)

* `SessionStarted` (value: `1016`)

* `SessionCompleted` (value: `1017`)

* `LoginFailViaSSO` (value: `1018`)

* `LoginSuccessViaApiSocialAccount` (value: `1019`)

* `LoginFailViaApiSocialAccount` (value: `1020`)

* `LoginSuccesViaTfaApp` (value: `1021`)

* `LoginFailViaTfaApp` (value: `1022`)

* `LoginFailBruteForce` (value: `1023`)

* `LoginSuccessViaApiTfa` (value: `1024`)

* `LoginFailViaApiTfa` (value: `1025`)

* `LoginFailRecaptcha` (value: `1026`)

* `AuthLinkActivated` (value: `1027`)

* `LoginSuccessViaOAuth` (value: `1028`)

* `LoginSuccessViaPassword` (value: `1029`)

* `UserCreated` (value: `4000`)

* `GuestCreated` (value: `4001`)

* `UserCreatedViaInvite` (value: `4002`)

* `GuestCreatedViaInvite` (value: `4003`)

* `UserActivated` (value: `4004`)

* `GuestActivated` (value: `4005`)

* `UserUpdated` (value: `4006`)

* `UserUpdatedLanguage` (value: `4007`)

* `UserAddedAvatar` (value: `4008`)

* `UserDeletedAvatar` (value: `4009`)

* `UserUpdatedAvatarThumbnails` (value: `4010`)

* `UserLinkedSocialAccount` (value: `4011`)

* `UserUnlinkedSocialAccount` (value: `4012`)

* `UserSentActivationInstructions` (value: `4013`)

* `UserSentEmailChangeInstructions` (value: `4014`)

* `UserSentPasswordChangeInstructions` (value: `4015`)

* `UserSentDeleteInstructions` (value: `4016`)

* `UserUpdatedPassword` (value: `4017`)

* `UserDeleted` (value: `4018`)

* `UsersUpdatedType` (value: `4019`)

* `UsersUpdatedStatus` (value: `4020`)

* `UsersSentActivationInstructions` (value: `4021`)

* `UsersDeleted` (value: `4022`)

* `SentInviteInstructions` (value: `4023`)

* `UserImported` (value: `4024`)

* `GuestImported` (value: `4025`)

* `GroupCreated` (value: `4026`)

* `GroupUpdated` (value: `4027`)

* `GroupDeleted` (value: `4028`)

* `UserUpdatedMobileNumber` (value: `4029`)

* `UserDataReassigns` (value: `4030`)

* `UserDataRemoving` (value: `4031`)

* `UserConnectedTfaApp` (value: `4032`)

* `UserDisconnectedTfaApp` (value: `4033`)

* `UserLogoutActiveConnections` (value: `4034`)

* `UserLogoutActiveConnection` (value: `4035`)

* `UserLogoutActiveConnectionsForUser` (value: `4036`)

* `SendJoinInvite` (value: `4037`)

* `FileCreated` (value: `5000`)

* `FileRenamed` (value: `5001`)

* `FileUpdated` (value: `5002`)

* `FileCreatedVersion` (value: `5003`)

* `FileDeletedVersion` (value: `5004`)

* `FileUpdatedRevisionComment` (value: `5005`)

* `FileLocked` (value: `5006`)

* `FileUnlocked` (value: `5007`)

* `FileUpdatedAccess` (value: `5008`)

* `FileDownloaded` (value: `5009`)

* `FileDownloadedAs` (value: `5010`)

* `FileUploaded` (value: `5011`)

* `FileImported` (value: `5012`)

* `FileCopied` (value: `5013`)

* `FileCopiedWithOverwriting` (value: `5014`)

* `FileMoved` (value: `5015`)

* `FileMovedWithOverwriting` (value: `5016`)

* `FileMovedToTrash` (value: `5017`)

* `FileDeleted` (value: `5018`)

* `FolderCreated` (value: `5019`)

* `FolderRenamed` (value: `5020`)

* `FolderUpdatedAccess` (value: `5021`)

* `FolderCopied` (value: `5022`)

* `FolderCopiedWithOverwriting` (value: `5023`)

* `FolderMoved` (value: `5024`)

* `FolderMovedWithOverwriting` (value: `5025`)

* `FolderMovedToTrash` (value: `5026`)

* `FolderDeleted` (value: `5027`)

* `ThirdPartyCreated` (value: `5028`)

* `ThirdPartyUpdated` (value: `5029`)

* `ThirdPartyDeleted` (value: `5030`)

* `DocumentsThirdPartySettingsUpdated` (value: `5031`)

* `DocumentsOverwritingSettingsUpdated` (value: `5032`)

* `DocumentsUploadingFormatsSettingsUpdated` (value: `5033`)

* `UserFileUpdated` (value: `5034`)

* `FileConverted` (value: `5035`)

* `FileSendAccessLink` (value: `5036`)

* `DocumentServiceLocationSetting` (value: `5037`)

* `AuthorizationKeysSetting` (value: `5038`)

* `FullTextSearchSetting` (value: `5039`)

* `StartTransferSetting` (value: `5040`)

* `BackupStarted` (value: `5041`)

* `LicenseKeyUploaded` (value: `5042`)

* `FileChangeOwner` (value: `5043`)

* `FileRestoreVersion` (value: `5044`)

* `DocumentSendToSign` (value: `5045`)

* `DocumentSignComplete` (value: `5046`)

* `UserUpdatedEmail` (value: `5047`)

* `DocumentsStoreForcesave` (value: `5048`)

* `DocumentsForcesave` (value: `5049`)

* `StartStorageEncryption` (value: `5050`)

* `StartStorageDecryption` (value: `5053`)

* `FileOpenedForChange` (value: `5054`)

* `FileMarkedAsFavorite` (value: `5055`)

* `FileRemovedFromFavorite` (value: `5056`)

* `FolderDownloaded` (value: `5057`)

* `FileRemovedFromList` (value: `5058`)

* `FolderRemovedFromList` (value: `5059`)

* `FileExternalLinkAccessUpdated` (value: `5060`)

* `TrashEmptied` (value: `5061`)

* `FileRevisionDownloaded` (value: `5062`)

* `FileMarkedAsRead` (value: `5063`)

* `FileReaded` (value: `5064`)

* `FolderMarkedAsRead` (value: `5065`)

* `FolderUpdatedAccessFor` (value: `5066`)

* `FileUpdatedAccessFor` (value: `5068`)

* `DocumentsExternalShareSettingsUpdated` (value: `5069`)

* `RoomCreated` (value: `5070`)

* `RoomRenamed` (value: `5071`)

* `RoomArchived` (value: `5072`)

* `RoomUnarchived` (value: `5073`)

* `RoomDeleted` (value: `5074`)

* `RoomUpdateAccessForUser` (value: `5075`)

* `TagCreated` (value: `5076`)

* `TagsDeleted` (value: `5077`)

* `AddedRoomTags` (value: `5078`)

* `DeletedRoomTags` (value: `5079`)

* `RoomLogoCreated` (value: `5080`)

* `RoomLogoDeleted` (value: `5081`)

* `RoomInvitationLinkUpdated` (value: `5082`)

* `DocumentsKeepNewFileNameSettingsUpdated` (value: `5083`)

* `RoomRemoveUser` (value: `5084`)

* `RoomCreateUser` (value: `5085`)

* `RoomInvitationLinkCreated` (value: `5086`)

* `RoomInvitationLinkDeleted` (value: `5087`)

* `RoomExternalLinkCreated` (value: `5088`)

* `RoomExternalLinkUpdated` (value: `5089`)

* `RoomExternalLinkDeleted` (value: `5090`)

* `FileExternalLinkCreated` (value: `5091`)

* `FileExternalLinkUpdated` (value: `5092`)

* `FileExternalLinkDeleted` (value: `5093`)

* `RoomGroupAdded` (value: `5094`)

* `RoomUpdateAccessForGroup` (value: `5095`)

* `RoomGroupRemove` (value: `5096`)

* `RoomExternalLinkRevoked` (value: `5097`)

* `RoomExternalLinkRenamed` (value: `5098`)

* `FileUploadedWithOverwriting` (value: `5099`)

* `RoomCopied` (value: `5100`)

* `DocumentsDisplayFileExtensionUpdated` (value: `5101`)

* `RoomColorChanged` (value: `5102`)

* `RoomCoverChanged` (value: `5103`)

* `RoomIndexingChanged` (value: `5104`)

* `RoomDenyDownloadChanged` (value: `5105`)

* `RoomIndexExportSaved` (value: `5106`)

* `FolderIndexChanged` (value: `5107`)

* `FolderIndexReordered` (value: `5108`)

* `RoomDenyDownloadEnabled` (value: `5109`)

* `RoomDenyDownloadDisabled` (value: `5110`)

* `FileIndexChanged` (value: `5111`)

* `RoomWatermarkSet` (value: `5112`)

* `RoomWatermarkDisabled` (value: `5113`)

* `RoomIndexingEnabled` (value: `5114`)

* `RoomIndexingDisabled` (value: `5115`)

* `RoomLifeTimeSet` (value: `5116`)

* `RoomLifeTimeDisabled` (value: `5117`)

* `RoomInviteResend` (value: `5118`)

* `FileVersionRemoved` (value: `5119`)

* `FileCustomFilterEnabled` (value: `5120`)

* `FileCustomFilterDisabled` (value: `5121`)

* `FolderExternalLinkCreated` (value: `5122`)

* `FolderExternalLinkUpdated` (value: `5123`)

* `FolderExternalLinkDeleted` (value: `5124`)

* `BackupCompleted` (value: `5125`)

* `BackupFailed` (value: `5126`)

* `ScheduledBackupStarted` (value: `5127`)

* `ScheduledBackupCompleted` (value: `5128`)

* `ScheduledBackupFailed` (value: `5129`)

* `ScheduledBackupDeleted` (value: `5130`)

* `BackupCancelled` (value: `5131`)

* `RestoreStarted` (value: `5132`)

* `RestoreCancelled` (value: `5133`)

* `FormStartedToFill` (value: `5150`)

* `FormPartiallyFilled` (value: `5151`)

* `FormCompletelyFilled` (value: `5152`)

* `FormStopped` (value: `5153`)

* `AgentCreated` (value: `5154`)

* `AgentRenamed` (value: `5155`)

* `AgentDeleted` (value: `5156`)

* `AddedServerToAgent` (value: `5157`)

* `DeletedServerFromAgent` (value: `5158`)

* `RoomChangeOwner` (value: `5159`)

* `DocumentsDefaultTemplatesSettingsUpdated` (value: `5160`)

* `PrivacyRoomKeyCreated` (value: `5161`)

* `PrivacyRoomKeyUpdated` (value: `5162`)

* `PrivacyRoomKeyDeleted` (value: `5163`)

* `FileSavedButUserQuotaExceeded` (value: `5201`)

* `FileNotSavedDueToUserQuota` (value: `5202`)

* `FileSavedButRoomQuotaExceeded` (value: `5203`)

* `FileNotSavedDueToRoomQuota` (value: `5204`)

* `FileSavedButTenantQuotaExceeded` (value: `5205`)

* `FileNotSavedDueToTenantQuota` (value: `5206`)

* `LdapEnabled` (value: `5501`)

* `LdapDisabled` (value: `5502`)

* `LdapSync` (value: `5503`)

* `LanguageSettingsUpdated` (value: `6000`)

* `TimeZoneSettingsUpdated` (value: `6001`)

* `DnsSettingsUpdated` (value: `6002`)

* `TrustedMailDomainSettingsUpdated` (value: `6003`)

* `PasswordStrengthSettingsUpdated` (value: `6004`)

* `TwoFactorAuthenticationSettingsUpdated` (value: `6005`)

* `AdministratorMessageSettingsUpdated` (value: `6006`)

* `DefaultStartPageSettingsUpdated` (value: `6007`)

* `ProductsListUpdated` (value: `6008`)

* `AdministratorAdded` (value: `6009`)

* `AdministratorOpenedFullAccess` (value: `6010`)

* `AdministratorDeleted` (value: `6011`)

* `UsersOpenedProductAccess` (value: `6012`)

* `GroupsOpenedProductAccess` (value: `6013`)

* `ProductAccessOpened` (value: `6014`)

* `ProductAccessRestricted` (value: `6015`)

* `ProductAddedAdministrator` (value: `6016`)

* `ProductDeletedAdministrator` (value: `6017`)

* `GreetingSettingsUpdated` (value: `6018`)

* `TeamTemplateChanged` (value: `6019`)

* `ColorThemeChanged` (value: `6020`)

* `OwnerSentChangeOwnerInstructions` (value: `6021`)

* `OwnerUpdated` (value: `6022`)

* `OwnerSentPortalDeactivationInstructions` (value: `6023`)

* `OwnerSentPortalDeleteInstructions` (value: `6024`)

* `PortalDeactivated` (value: `6025`)

* `PortalDeleted` (value: `6026`)

* `LoginHistoryReportDownloaded` (value: `6027`)

* `AuditTrailReportDownloaded` (value: `6028`)

* `SSOEnabled` (value: `6029`)

* `SSODisabled` (value: `6030`)

* `PortalAccessSettingsUpdated` (value: `6031`)

* `CookieSettingsUpdated` (value: `6032`)

* `MailServiceSettingsUpdated` (value: `6033`)

* `CustomNavigationSettingsUpdated` (value: `6034`)

* `AuditSettingsUpdated` (value: `6035`)

* `TwoFactorAuthenticationDisabled` (value: `6036`)

* `TwoFactorAuthenticationEnabledBySms` (value: `6037`)

* `TwoFactorAuthenticationEnabledByTfaApp` (value: `6038`)

* `PortalRenamed` (value: `6039`)

* `QuotaPerRoomChanged` (value: `6040`)

* `QuotaPerRoomDisabled` (value: `6041`)

* `QuotaPerUserChanged` (value: `6042`)

* `QuotaPerUserDisabled` (value: `6043`)

* `QuotaPerPortalChanged` (value: `6044`)

* `QuotaPerPortalDisabled` (value: `6045`)

* `FormSubmit` (value: `6046`)

* `FormOpenedForFilling` (value: `6047`)

* `CustomQuotaPerRoomDefault` (value: `6048`)

* `CustomQuotaPerRoomChanged` (value: `6049`)

* `CustomQuotaPerRoomDisabled` (value: `6050`)

* `CustomQuotaPerUserDefault` (value: `6051`)

* `CustomQuotaPerUserChanged` (value: `6052`)

* `CustomQuotaPerUserDisabled` (value: `6053`)

* `DevToolsAccessSettingsChanged` (value: `6054`)

* `WebhookCreated` (value: `6055`)

* `WebhookUpdated` (value: `6056`)

* `WebhookDeleted` (value: `6057`)

* `ApiKeyCreated` (value: `6058`)

* `ApiKeyUpdated` (value: `6059`)

* `ApiKeyDeleted` (value: `6060`)

* `CustomerWalletToppedUp` (value: `6061`)

* `CustomerOperationPerformed` (value: `6062`)

* `CustomerOperationsReportDownloaded` (value: `6063`)

* `CustomerWalletTopUpSettingsUpdated` (value: `6064`)

* `CustomerSubscriptionUpdated` (value: `6065`)

* `BannerSettingsChanged` (value: `6066`)

* `CustomerWalletServicesSettingsUpdated` (value: `6067`)

* `QuotaPerAiAgentChanged` (value: `6068`)

* `QuotaPerAiAgentDisabled` (value: `6069`)

* `CustomQuotaPerAiAgentDefault` (value: `6070`)

* `CustomQuotaPerAiAgentChanged` (value: `6071`)

* `CustomQuotaPerAiAgentDisabled` (value: `6072`)

* `AIProviderCreated` (value: `6073`)

* `AIProviderUpdated` (value: `6074`)

* `AIProviderDeleted` (value: `6075`)

* `ServerCreated` (value: `6076`)

* `ServerUpdated` (value: `6077`)

* `ServerEnabled` (value: `6078`)

* `ServerDisabled` (value: `6079`)

* `ServerDeleted` (value: `6080`)

* `SetWebSearchSettings` (value: `6081`)

* `ResetWebSearchSettings` (value: `6082`)

* `SetVectorizationSettings` (value: `6083`)

* `ResetVectorizationSettings` (value: `6084`)

* `WebpluginUploaded` (value: `6085`)

* `WebpluginUpdated` (value: `6086`)

* `WebpluginDeleted` (value: `6087`)

* `WhiteLabelSettingsLogoTextUpdated` (value: `6088`)

* `WhiteLabelSettingsLogosUpdated` (value: `6089`)

* `WhiteLabelCompanySettingsUpdated` (value: `6090`)

* `WhiteLabelAdditionalSettingsUpdated` (value: `6091`)

* `WhiteLabelMailSettingsUpdated` (value: `6092`)

* `InvitationSettingsUpdated` (value: `6093`)

* `IPRestrictionsSettingsUpdated` (value: `6094`)

* `LoginSettingsUpdated` (value: `6095`)

* `AIDefaultProviderSet` (value: `6096`)

* `AIAccessEnabled` (value: `6097`)

* `AIAccessDisabled` (value: `6098`)

* `UserUpdatedAiSettings` (value: `6099`)

* `SubscriptionBalanceMovedToWallet` (value: `6100`)

* `DocsCloudConfigUpdated` (value: `6101`)

* `DocsCloudQuotaReportDownloaded` (value: `6102`)

* `AiProfileCreated` (value: `6103`)

* `AiProfileUpdated` (value: `6104`)

* `AiProfileDeleted` (value: `6105`)

* `AiProfileAssigned` (value: `6106`)

* `AiProfileUnassigned` (value: `6107`)

* `AiAgentProfileAssigned` (value: `6108`)

* `UpdatedServerOfAgent` (value: `6109`)

* `ContactAdminMailSent` (value: `7000`)

* `RoomInviteLinkUsed` (value: `7001`)

* `UserCreatedAndAddedToRoom` (value: `7002`)

* `GuestCreatedAndAddedToRoom` (value: `7003`)

* `ContactSalesMailSent` (value: `7004`)

* `CreateClient` (value: `9901`)

* `UpdateClient` (value: `9902`)

* `RegenerateSecret` (value: `9903`)

* `DeleteClient` (value: `9904`)

* `ChangeClientActivation` (value: `9905`)

* `ChangeClientVisibility` (value: `9906`)

* `RevokeUserClient` (value: `9907`)

* `GenerateAuthorizationCodeToken` (value: `9908`)

* `GeneratePersonalAccessToken` (value: `9909`)

* `None` (value: `-1`)

