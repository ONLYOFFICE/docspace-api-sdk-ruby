# DocspaceApiSdk::AiEmployeeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user ID. | [optional] |
| **display_name** | **String** | The HTML-encoded user's display name formatted according to the default format for the current culture. | [optional] |
| **avatar** | **String** | The user avatar. | [optional] |
| **avatar_original** | **String** | The user original size avatar. | [optional] |
| **avatar_max** | **String** | The user maximum size avatar. | [optional] |
| **avatar_medium** | **String** | The user medium size avatar. | [optional] |
| **avatar_small** | **String** | The user small size avatar. | [optional] |
| **profile_url** | **String** | The user profile URL. | [optional] |
| **has_avatar** | **Boolean** | Specifies if the user has an avatar or not. | [optional] |
| **is_anonim** | **Boolean** | Specifies if the user is anonymous or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEmployeeDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  display_name: Mike Zanyatski,
  avatar: https://example.com/avatar.jpg,
  avatar_original: https://example.com/avatar_original.jpg,
  avatar_max: https://example.com/avatar_max.jpg,
  avatar_medium: https://example.com/avatar_medium.jpg,
  avatar_small: https://example.com/avatar_small.jpg,
  profile_url: https://example.com/profile/user123,
  has_avatar: true,
  is_anonim: false
)
```
