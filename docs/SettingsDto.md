# DocspaceApiSdk::SettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timezone** | **String** | The time zone. | [optional] |
| **trusted_domains** | **Array&lt;String&gt;** | The list of the trusted domains. | [optional] |
| **trusted_domains_type** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) | The type of the trusted domains. | [optional] |
| **culture** | **String** | The language. |  |
| **utc_offset** | **String** | The UTC offset in the TimeSpan format. | [optional] |
| **utc_hours_offset** | **Float** | The UTC offset in hours. | [optional] |
| **greeting_settings** | **String** | The greeting settings. | [optional] |
| **owner_id** | **String** | The owner ID. | [optional] |
| **name_schema_id** | **String** | The team template ID. | [optional] |
| **enabled_join** | **Boolean** | Specifies if a user can join the portal or not. | [optional] |
| **enable_adm_mess** | **Boolean** | Specifies if a user can send a message to the administrator when accessing the DocSpace portal or not. | [optional] |
| **thirdparty_enable** | **Boolean** | Specifies if a user can connect third-party providers to the portal or not. | [optional] |
| **doc_space** | **Boolean** | Specifies if this portal is a DocSpace portal or not. | [optional] |
| **standalone** | **Boolean** | Indicates whether the system is running in standalone mode. | [optional] |
| **is_ami** | **Boolean** | Specifies if this portal is the AMI instance or not. | [optional] |
| **base_domain** | **String** | The base domain. |  |
| **wizard_token** | **String** | The wizard token. | [optional] |
| **password_hash** | [**PasswordHasher**](PasswordHasher.md) | The password hash. | [optional] |
| **firebase** | [**FirebaseDto**](FirebaseDto.md) | The Firebase parameters. | [optional] |
| **version** | **String** | The portal version. | [optional] |
| **recaptcha_type** | [**RecaptchaType**](RecaptchaType.md) | The type of CAPTCHA validation used. | [optional] |
| **recaptcha_public_key** | **String** | The ReCAPTCHA public key. | [optional] |
| **debug_info** | **Boolean** | Specifies if the debug information will be sent or not. | [optional] |
| **socket_url** | **String** | The socket URL. | [optional] |
| **tenant_status** | [**TenantStatus**](TenantStatus.md) | The tenant status. | [optional] |
| **tenant_alias** | **String** | The tenant alias. | [optional] |
| **display_about** | **Boolean** | Specifies whether to display the About portal section. | [optional] |
| **domain_validator** | [**TenantDomainValidator**](TenantDomainValidator.md) | The domain validator. | [optional] |
| **zendesk_key** | **String** | The Zendesk key. | [optional] |
| **tag_manager_id** | **String** | The tag manager ID. | [optional] |
| **cookie_settings_enabled** | **Boolean** | Specifies whether the cookie settings are enabled. |  |
| **limited_access_space** | **Boolean** | Specifies whether the access to the space management is limited or not. | [optional] |
| **limited_access_dev_tools_for_users** | **Boolean** | Specifies whether the access to the Developer Tools is limited for users or not. | [optional] |
| **display_banners** | **Boolean** | Specifies whether to display the promotional banners. | [optional] |
| **ai_enabled** | **Boolean** | Specifies whether AI functionality (chat, agents, vectorization) is enabled for the current tenant.  When `false`, all AI features are disabled and the AI Agents folder is hidden. | [optional] |
| **wallet_low_balance** | **Boolean** | Specifies whether the tenant wallet balance is currently below the low-balance threshold. Only returned to portal administrators. | [optional] |
| **user_name_regex** | **String** | The user name validation regex. | [optional] |
| **invitation_limit** | **Integer** | The maximum number of invitations to the portal. | [optional] |
| **plugins** | [**PluginsDto**](PluginsDto.md) | The plugins settings. | [optional] |
| **deep_link** | [**DeepLinkDto**](DeepLinkDto.md) | The deep link settings. |  |
| **form_gallery** | [**FormGalleryDto**](FormGalleryDto.md) | The form gallery settings. | [optional] |
| **max_image_upload_size** | **Integer** | The maximum image upload size. | [optional] |
| **logo_text** | **String** | The white label logo text. | [optional] |
| **external_resources** | [**CultureSpecificExternalResources**](CultureSpecificExternalResources.md) | The external resources settings. | [optional] |
| **default_folder_type** | [**FolderType**](FolderType.md) | Specifies the default folder type for the current settings. | [optional] |
| **external_db_enabled** | **Boolean** | Specifies if an external database is connected for storing form results. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SettingsDto.new(
  timezone: UTC,
  trusted_domains: [mydomain.com, mydomain1.com],
  trusted_domains_type: null,
  culture: en-US,
  utc_offset: -08:30:00,
  utc_hours_offset: -8.5,
  greeting_settings: Web Office Applications,
  owner_id: 00000000-0000-0000-0000-000000000000,
  name_schema_id: default,
  enabled_join: true,
  enable_adm_mess: true,
  thirdparty_enable: true,
  doc_space: true,
  standalone: true,
  is_ami: true,
  base_domain: example.com,
  wizard_token: dGhpc2lzYXRva2Vu...,
  password_hash: null,
  firebase: null,
  version: 12.5.0,
  recaptcha_type: null,
  recaptcha_public_key: abc123def456,
  debug_info: true,
  socket_url: https://example.com,
  tenant_status: null,
  tenant_alias: mycompany,
  display_about: true,
  domain_validator: null,
  zendesk_key: abc123def456,
  tag_manager_id: GTM-XXXXXX,
  cookie_settings_enabled: true,
  limited_access_space: true,
  limited_access_dev_tools_for_users: true,
  display_banners: true,
  ai_enabled: true,
  wallet_low_balance: false,
  user_name_regex: ^[a-zA-Z0-9_]{3,20}$,
  invitation_limit: 10,
  plugins: null,
  deep_link: null,
  form_gallery: null,
  max_image_upload_size: 10485760,
  logo_text: Company Name,
  external_resources: null,
  default_folder_type: null,
  external_db_enabled: true
)
```
