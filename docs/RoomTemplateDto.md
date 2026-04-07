# DocspaceApiSdk::RoomTemplateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The room template ID. |  |
| **title** | **String** | The room template title. | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) |  | [optional] |
| **copy_logo** | **Boolean** | Specifies whether to copy room logo or not. | [optional] |
| **share** | **Array&lt;String&gt;** | The collection of email addresses of users with whom to share a room. | [optional] |
| **groups** | **Array&lt;String&gt;** | The collection of groups with whom to share a room. | [optional] |
| **public** | **Boolean** | Specifies whether the room template is public or not. | [optional] |
| **tags** | **Array&lt;String&gt;** | The collection of tags. | [optional] |
| **color** | **String** | The color of the room template. | [optional] |
| **cover** | **String** | The cover of the room template. | [optional] |
| **quota** | **Integer** | Room quota | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomTemplateDto.new(
  room_id: 1,
  title: My Document,
  logo: null,
  copy_logo: true,
  share: ["user1@example.com","user2@example.com"],
  groups: ["00000000-0000-0000-0000-000000000000"],
  public: true,
  tags: ["tag1","tag2"],
  color: #FF0000,
  cover: cover1,
  quota: 10485760
)
```
