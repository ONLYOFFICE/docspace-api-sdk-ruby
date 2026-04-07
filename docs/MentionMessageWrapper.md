# DocspaceApiSdk::MentionMessageWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_link** | [**ActionLinkConfig**](ActionLinkConfig.md) |  | [optional] |
| **emails** | **Array&lt;String&gt;** | A list of emails that will receive the mention message. | [optional] |
| **message** | **String** | The mention message. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MentionMessageWrapper.new(
  action_link: null,
  emails: ["user1@example.com","user2@example.com"],
  message: Hello
)
```
