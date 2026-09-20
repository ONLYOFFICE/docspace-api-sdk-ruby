# DocspaceApiSdk::MentionMessageWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_link** | [**ActionLinkConfig**](ActionLinkConfig.md) | The place in the document the notification link should open at, as the editor reports it when the mention is  made. Left out, the link opens the file at its beginning. | [optional] |
| **emails** | **Array&lt;String&gt;** | The addresses to notify. Only an address that belongs to a portal account receives a mail; an unknown address  is skipped, and the answer then carries the access list of the file so that the client can invite its owner. | [optional] |
| **message** | **String** | The note shown next to the link in the mail. Only its first 200 characters are sent, and a value longer than  the field allows is refused. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MentionMessageWrapper.new(
  action_link: null,
  emails: [user1@example.com, user2@example.com],
  message: Please take a look at the second paragraph
)
```
