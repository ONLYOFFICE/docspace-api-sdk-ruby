# DocspaceWebhooksSdk::GroupSummaryPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the group; &#x60;GET api/2.0/group/{id}&#x60; returns the group with its members by it. | [optional] |
| **name** | **String** | The name of the group as it is shown in the portal. | [optional] |
| **manager** | **String** | The user name of the user who manages the group, not an ID. Absent when the group has no manager. | [optional] |
| **is_system** | **Boolean** | &#x60;true&#x60; for a built-in system group, whose members follow from the user types rather than from membership changes. Absent for every other group, never &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'docspace-webhooks-sdk'

instance = DocspaceWebhooksSdk::GroupSummaryPayload.new(
  id: c652dd0b-fa6e-4bb7-a3b2-9a2e4e6b7d1c,
  name: Marketing Team,
  manager: Mike.Zanyatski,
  is_system: true
)
```

