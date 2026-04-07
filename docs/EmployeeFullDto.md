# DocspaceApiSdk::EmployeeFullDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user ID. | [optional] |
| **display_name** | **String** | The HTML-encoded user's display name formatted according to the default format for the current culture. | [optional] |
| **title** | **String** | The user title. | [optional] |
| **avatar** | **String** | The user avatar. | [optional] |
| **avatar_original** | **String** | The user original size avatar. | [optional] |
| **avatar_max** | **String** | The user maximum size avatar. | [optional] |
| **avatar_medium** | **String** | The user medium size avatar. | [optional] |
| **avatar_small** | **String** | The user small size avatar. | [optional] |
| **profile_url** | **String** | The user profile URL. | [optional] |
| **has_avatar** | **Boolean** | Specifies if the user has an avatar or not. | [optional] |
| **is_anonim** | **Boolean** | Specifies if the user is anonymous or not. | [optional] |
| **first_name** | **String** | The user first name. | [optional] |
| **last_name** | **String** | The user last name. | [optional] |
| **user_name** | **String** | The user username. | [optional] |
| **email** | **String** | The user email. | [optional] |
| **contacts** | [**Array&lt;Contact&gt;**](Contact.md) | The list of user contacts. | [optional] |
| **birthday** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **sex** | **String** | The user sex. | [optional] |
| **status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] |
| **activation_status** | [**EmployeeActivationStatus**](EmployeeActivationStatus.md) |  | [optional] |
| **terminated** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **department** | **String** | The user department. | [optional] |
| **work_from** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **groups** | [**Array&lt;GroupSummaryDto&gt;**](GroupSummaryDto.md) | The list of user groups. | [optional] |
| **location** | **String** | The user location. | [optional] |
| **notes** | **String** | The user notes. | [optional] |
| **is_admin** | **Boolean** | Specifies if the user is an administrator or not. | [optional] |
| **is_room_admin** | **Boolean** | Specifies if the user is a room administrator or not. | [optional] |
| **is_ldap** | **Boolean** | Specifies if the LDAP settings are enabled for the user or not. | [optional] |
| **list_admin_modules** | **Array&lt;String&gt;** | The list of the administrator modules. | [optional] |
| **is_owner** | **Boolean** | Specifies if the user is a portal owner or not. | [optional] |
| **is_visitor** | **Boolean** | Specifies if the user is a portal visitor or not. | [optional] |
| **is_collaborator** | **Boolean** | Specifies if the user is a portal collaborator or not. | [optional] |
| **culture_name** | **String** | The user culture code. | [optional] |
| **mobile_phone** | **String** | The user mobile phone number. | [optional] |
| **mobile_phone_activation_status** | [**MobilePhoneActivationStatus**](MobilePhoneActivationStatus.md) |  | [optional] |
| **is_sso** | **Boolean** | Specifies if the SSO settings are enabled for the user or not. | [optional] |
| **theme** | [**DarkThemeSettingsType**](DarkThemeSettingsType.md) |  | [optional] |
| **quota_limit** | **Integer** | The user quota limit. | [optional] |
| **used_space** | **Float** | The portal used space of the user. | [optional] |
| **shared** | **Boolean** | Specifies if the user has access rights. | [optional] |
| **is_custom_quota** | **Boolean** | Specifies if the user has a custom quota or not. | [optional] |
| **login_event_id** | **Integer** | The current login event ID. | [optional] |
| **auth_cookie_lifetime** | **Float** | The auth cookie lifetime in seconds. | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **registration_date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **has_personal_folder** | **Boolean** | Specifies if the user has a personal folder or not. | [optional] |
| **tfa_app_enabled** | **Boolean** | Indicates whether the user has enabled two-factor authentication (TFA) using an authentication app. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmployeeFullDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  display_name: Mike Zanyatski,
  title: Manager,
  avatar: https://example.com/avatar.jpg,
  avatar_original: https://example.com/avatar_original.jpg,
  avatar_max: https://example.com/avatar_max.jpg,
  avatar_medium: https://example.com/avatar_medium.jpg,
  avatar_small: https://example.com/avatar_small.jpg,
  profile_url: https://example.com/profile/user123,
  has_avatar: true,
  is_anonim: false,
  first_name: Mike,
  last_name: Zanyatski,
  user_name: Mike.Zanyatski,
  email: my@gmail.com,
  contacts: [{"type":"email","value":"user@example.com"}],
  birthday: null,
  sex: male,
  status: null,
  activation_status: null,
  terminated: null,
  department: Marketing,
  work_from: null,
  groups: [{"id":"00000000-0000-0000-0000-000000000000","name":"Marketing"}],
  location: Palo Alto,
  notes: Notes to worker,
  is_admin: false,
  is_room_admin: false,
  is_ldap: false,
  list_admin_modules: ["projects","crm"],
  is_owner: false,
  is_visitor: false,
  is_collaborator: false,
  culture_name: en-EN,
  mobile_phone: +1 (555) 123-4567,
  mobile_phone_activation_status: null,
  is_sso: false,
  theme: null,
  quota_limit: 1073741824,
  used_space: 12345,
  shared: false,
  is_custom_quota: false,
  login_event_id: 123,
  auth_cookie_lifetime: 3600,
  created_by: null,
  registration_date: null,
  has_personal_folder: true,
  tfa_app_enabled: false
)
```
