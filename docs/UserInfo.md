# DocspaceApiSdk::UserInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user ID. | [optional] |
| **first_name** | **String** | The user's first name. | [optional] |
| **last_name** | **String** | The user's last name. | [optional] |
| **user_name** | **String** | The user username. | [optional] |
| **birth_date** | **Time** | The user birthday. | [optional] |
| **sex** | **Boolean** | The user sex (male or female). | [optional] |
| **status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] |
| **activation_status** | [**EmployeeActivationStatus**](EmployeeActivationStatus.md) |  | [optional] |
| **terminated_date** | **Time** | The date and time when the user account was terminated. | [optional] |
| **title** | **String** | The user title. | [optional] |
| **work_from_date** | **Time** | The user registration date. | [optional] |
| **email** | **String** | The user email address. | [optional] |
| **contacts** | **String** | The list of user contacts in the string format. | [optional] |
| **contacts_list** | **Array&lt;String&gt;** | The list of user contacts. | [optional] |
| **location** | **String** | The user location. | [optional] |
| **notes** | **String** | The user notes. | [optional] |
| **removed** | **Boolean** | Specifies if the user account was removed or not. | [optional] |
| **last_modified** | **Time** | The date and time when the user account was last modified. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |
| **is_active** | **Boolean** | Specifies if the user is active or not. | [optional][readonly] |
| **culture_name** | **String** | The user culture code. | [optional] |
| **mobile_phone** | **String** | The user mobile phone. | [optional] |
| **mobile_phone_activation_status** | [**MobilePhoneActivationStatus**](MobilePhoneActivationStatus.md) |  | [optional] |
| **sid** | **String** | The LDAP user identifier. | [optional] |
| **ldap_qouta** | **Integer** | The LDAP user quota attribute. | [optional] |
| **sso_name_id** | **String** | The SSO SAML user identifier. | [optional] |
| **sso_session_id** | **String** | The SSO SAML user session identifier. | [optional] |
| **create_date** | **Time** | The date and time when the user account was created. | [optional] |
| **created_by** | **String** | The ID of the user who created the current user account. | [optional] |
| **spam** | **Boolean** | Specifies if tips, updates and offers are allowed to be sent to the user or not. | [optional] |
| **check_activation** | **Boolean** | Indicates whether the activation status of the employee or recipient is unchecked or inactive.  Depending on the context, this property evaluates the activation or eligibility status accordingly. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserInfo.new(
  id: 00000000-0000-0000-0000-000000000000,
  first_name: John,
  last_name: Doe,
  user_name: johndoe,
  birth_date: 1990-01-01T00:00Z,
  sex: true,
  status: null,
  activation_status: null,
  terminated_date: 2025-12-31T23:59:59Z,
  title: Manager,
  work_from_date: 2020-01-15T00:00Z,
  email: john.doe@example.com,
  contacts: skype:johndoe|telegram:@johndoe,
  contacts_list: ["skype:johndoe","telegram:@johndoe"],
  location: New York, USA,
  notes: Additional information about the user,
  removed: false,
  last_modified: 2025-02-08T10:30Z,
  tenant_id: 1,
  is_active: true,
  culture_name: en-US,
  mobile_phone: +1234567890,
  mobile_phone_activation_status: null,
  sid: S-1-5-21-3623811015-3361044348-30300820-1013,
  ldap_qouta: 1073741824,
  sso_name_id: johndoe@example.com,
  sso_session_id: _1a2b3c4d5e6f7g8h9i0j,
  create_date: 2020-01-15T00:00Z,
  created_by: 00000000-0000-0000-0000-000000000000,
  spam: false,
  check_activation: false
)
```
