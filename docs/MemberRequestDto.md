# DocspaceApiSdk::MemberRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The password in plain text. It is checked against the portal password policy and rejected with 400 when it is  too weak. When neither this field nor `passwordHash` is sent, a random password is generated and nobody  learns it, so the account can only be used after a password recovery. | [optional] |
| **password_hash** | **String** | The password already hashed by the client, which is what the portal stores. It is a PBKDF2-HMACSHA256 hash of  the plain password, computed with the salt, the iteration count and the key size the portal settings publish,  and written as lowercase hexadecimal. When it is sent, `password` is ignored and the password policy is not  applied. | [optional] |
| **email** | **String** | The email address of the new account, up to 255 characters. It is required in practice and has to be a real  address, and it becomes the sign-in name of the account. | [optional] |
| **type** | [**EmployeeType**](EmployeeType.md) | The type of the new account: `User`, `RoomAdmin` or `DocSpaceAdmin`. `Guest` is not accepted here, and the  value is ignored entirely when `fromInviteLink` is set, because the invitation link decides the type. When no  paid seat is free, the account is created as `User` whatever was asked for. | [optional] |
| **is_user** | **Boolean** | Only chooses which entry the operation writes to the audit trail - the one for a guest or the one for a  member. It does not change the type of the account; `type` and the invitation link do that. | [optional] |
| **first_name** | **String** | The first name, up to 255 characters. It is checked together with `lastName`, and a pair the portal does not  accept as a name answers 400. | [optional] |
| **last_name** | **String** | The last name, up to 255 characters. It is checked together with `firstName`, and a pair the portal does not  accept as a name answers 400. | [optional] |
| **department** | **Array&lt;String&gt;** | The groups to put the new account into, by group ID. Read the IDs from `GET api/2.0/group`; an ID that  matches no group is skipped without an error. | [optional] |
| **location** | **String** | The free-text location shown on the profile. It is stored as it is given and is not validated. | [optional] |
| **comment** | **String** | The free-text note kept with the profile, shown to administrators. It is stored as it is given. | [optional] |
| **contacts** | [**Array&lt;Contact&gt;**](Contact.md) | The additional ways to reach the person, each as a type and a value pair. The type is a free-text label such  as `email`, `phone`, `skype` or `telegram`, and an entry with an empty value is dropped. | [optional] |
| **files** | **String** | The address the portal downloads the avatar from. It has to use HTTPS unless the request itself came over  HTTP, an address the portal refuses to fetch is rejected, and passing the default avatar path means no  avatar is downloaded. | [optional] |
| **from_invite_link** | **Boolean** | Set it to true when the account is created by somebody accepting an invitation, which makes `key` required  and lets the link decide the type. With the default false the caller has to hold the permission to add an  account of the requested type. | [optional] |
| **key** | **String** | The key of the invitation link being accepted, taken from the link itself. It is read only when  `fromInviteLink` is true, and an expired or already used key answers 403. | [optional] |
| **culture_name** | **String** | The interface language of the new account, as a culture code. It is applied whether or not the portal has  that culture enabled, so send a code the portal supports. | [optional] |
| **target** | **String** | Not used. The handler reads nothing from this field, and it is kept only so that existing clients keep  working. | [optional] |
| **spam** | **Boolean** | Whether the account agrees to receive tips, updates and offers. It defaults to false, which means no such  mail is sent. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MemberRequestDto.new(
  password: P@ssw0rd,
  password_hash: c1ba1a0bcbe0f0f42b6c86e1b41a1b4a4a9b4b0e3f2b7d2c1a0e9f8d7c6b5a49,
  email: john.doe@example.com,
  type: null,
  is_user: true,
  first_name: John,
  last_name: Doe,
  department: [00000000-0000-0000-0000-000000000000],
  location: New York,
  comment: User comment,
  contacts: [{type=email, value=john.doe@example.com}],
  files: https://example.com/avatar.jpg,
  from_invite_link: false,
  key: user_key_string,
  culture_name: en-US,
  target: 00000000-0000-0000-0000-000000000000,
  spam: false
)
```
