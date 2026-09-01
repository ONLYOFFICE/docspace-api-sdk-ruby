# DocspaceApiSdk::MentionWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**UserInfo**](UserInfo.md) | The user information. | [optional] |
| **email** | **String** | The user email address. | [optional][readonly] |
| **id** | **String** | The user unique identification. | [optional][readonly] |
| **image** | **String** | The path to the user's avatar. | [optional][readonly] |
| **has_access** | **Boolean** | Specifies whether the user has the access to the file where they are mentioned. | [optional][readonly] |
| **name** | **String** | The user full name. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MentionWrapper.new(
  user: null,
  email: user@example.com,
  id: user_0001,
  image: https://portal.example.com/avatar/user_0001.png,
  has_access: true,
  name: John Doe
)
```
