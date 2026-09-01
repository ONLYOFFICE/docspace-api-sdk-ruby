# DocspaceApiSdk::AiThread

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Unique thread identifier (UUID). |  |
| **title** | **String** | Optional thread title. Auto-generated from the first message if not set. | [optional] |
| **last_edit_date** | **Float** | Timestamp (ms since epoch) of the last message in this thread. Used for sorting. | [optional] |
| **provider** | [**AiTProvider**](AiTProvider.md) | Provider configuration at the time of last message. Used for thread-level provider display. | [optional] |
| **model** | [**AiModel**](AiModel.md) | Model info at the time of last message. | [optional] |
| **profile_id** | **String** | ID of the profile used for this thread. Links to `Profile.id`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThread.new(
  thread_id: null,
  title: null,
  last_edit_date: null,
  provider: null,
  model: null,
  profile_id: null
)
```
