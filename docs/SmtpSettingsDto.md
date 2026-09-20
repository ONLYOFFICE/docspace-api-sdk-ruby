# DocspaceApiSdk::SmtpSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | The host name or address of the mail server. On a cloud portal that has saved no relay of its own every  field of this object comes back empty, because the installation's own server is not disclosed - only  `isDefaultSettings` is set there. | [optional] |
| **port** | **Integer** | The port the mail server is reached on - conventionally 25 or 587 without encryption from the start, 465  with it. It is empty when no port was stored, in which case the portal falls back to its own default. | [optional] |
| **sender_address** | **String** | The address the letters are sent from, which appears in the From header and is what a reply goes to. | [optional] |
| **sender_display_name** | **String** | The name shown beside that address in a recipient's mailbox. | [optional] |
| **credentials_user_name** | **String** | The account the portal signs in to the mail server as, meaningful only while `enableAuth` is `true`. | [optional] |
| **credentials_user_password** | **String** | Always empty here: the stored password is never returned, so a client that sends these settings back has  to supply it again rather than echoing what it read. | [optional] |
| **enable_ssl** | **Boolean** | Whether the connection to the mail server is encrypted. | [optional] |
| **enable_auth** | **Boolean** | Whether the portal signs in to the mail server at all. While it is `false` the credentials above are  ignored and the server is expected to accept mail unauthenticated. | [optional] |
| **use_ntlm** | **Boolean** | Always `false` here: the flag is accepted when settings are saved but is not stored, so it never comes  back set and says nothing about how the portal authenticates. | [optional] |
| **is_default_settings** | **Boolean** | Whether the portal is still on the mail configuration of the installation rather than on a relay of its  own. `DELETE api/2.0/smtpsettings/smtp` puts it back to `true`, and while it is `true` on a cloud portal  the fields above are blank rather than showing the installation's server. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SmtpSettingsDto.new(
  host: mail.example.com,
  port: 25,
  sender_address: notify@example.com,
  sender_display_name: Postman,
  credentials_user_name: notify@example.com,
  credentials_user_password: ,
  enable_ssl: true,
  enable_auth: true,
  use_ntlm: false,
  is_default_settings: true
)
```
