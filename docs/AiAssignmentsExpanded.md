# DocspaceApiSdk::AiAssignmentsExpanded

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignments** | [**Hash&lt;String, AiProfile&gt;**](AiProfile.md) | The bound profiles keyed by action type, as `GET api/2.0/ai/profiles/list` describes them. A binding whose profile no longer exists is left out. |  |
| **profiles_total** | **Integer** | How many profiles the portal has. |  |
| **chat_profiles_total** | **Integer** | How many of those profiles can chat; a profile without declared capabilities counts as one that can. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAssignmentsExpanded.new(
  assignments: null,
  profiles_total: null,
  chat_profiles_total: null
)
```
