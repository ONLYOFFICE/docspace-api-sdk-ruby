# DocspaceApiSdk::AceShortWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Who or what the line stands for, as a display string: the display name of a member, the name of a group, or  the title given to a shared link when `isLink` is true. It is empty when the subject has no name to show - a  shared link that was never given a title, for instance. | [optional] |
| **permissions** | **String** | The access level of that subject as a localized label, not a code: inside a room it usually names the role the  subject holds there (Viewer, Editor, Room Manager), while outside a room it names the access itself  (Read Only, Full Access). The wording comes from the portal resources and is translated for the current  language, so show it to a person rather than compare it in code. | [optional] |
| **is_link** | **Boolean** | Whether the line stands for a shared link instead of a member or a group. Clients use it to draw a link badge  where they would otherwise draw an avatar. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AceShortWrapper.new(
  user: John Doe,
  permissions: Read Only,
  is_link: false
)
```
