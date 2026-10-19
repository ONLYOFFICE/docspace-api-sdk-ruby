# DocspaceApiSdk::MentionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**PortalUserDto**](PortalUserDto.md) | The account itself, as the portal stores it. | [optional] |
| **email** | **String** | Where a mention notification for this user is delivered. | [optional] |
| **id** | **String** | The account id as text, the same value the account object carries; it is what identifies the user in a sharing  request built from this list. | [optional] |
| **image** | **String** | An absolute address of the medium-sized avatar. A generated default avatar is reported when the user never  uploaded one, so the field is never empty. | [optional] |
| **has_access** | **Boolean** | Not filled in by the operations that return this list: it always comes back false. Whether a user can already  open the document has to be read from the sharing settings of the file. | [optional] |
| **name** | **String** | The name to display, assembled the way the portal is configured to show names. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MentionDto.new(
  user: null,
  email: user@example.com,
  id: 00000000-0000-0000-0000-000000000000,
  image: https://portal.example.com/avatar/user_0001.png,
  has_access: false,
  name: John Doe
)
```
