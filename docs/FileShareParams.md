# DocspaceApiSdk::FileShareParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address of somebody who has no portal account yet. An invitation is sent to it and an account is created  once it is accepted, so this is the field to use instead of an account identifier when the person is new to  the portal. | [optional] |
| **share_to** | **String** | The account or the group the entry is about, taken from the portal people and group listings. Leave it out and  give an email address instead to share with somebody who has no account yet. | [optional] |
| **access** | [**FileShare**](FileShare.md) | What the subject may do with the shared item. The value 0 takes the access away again, and which of the other  levels are accepted depends on what is being shared. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileShareParams.new(
  email: jane.doe@example.com,
  share_to: e9a7b4c1-2d3f-4a56-8b90-1c2d3e4f5a6b,
  access: null
)
```
