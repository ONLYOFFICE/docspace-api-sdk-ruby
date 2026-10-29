# DocspaceWebhooksSdk::GroupPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the group the event is about; &#x60;GET api/2.0/group/{id}&#x60; returns the group with its members by it. | [optional] |
| **name** | **String** | The name of the group as it is shown in the portal, after a rename the new one. | [optional] |
| **parent** | **String** | The parent group ID; absent for a top-level group. | [optional] |
| **category** | **String** | The ID of the group category: the empty GUID for the groups members create, and one fixed category ID for the built-in system groups. | [optional] |
| **is_ldap** | **Boolean** | Whether the group is synchronized from an LDAP directory, where its name and members are managed; &#x60;false&#x60; for a group created in the portal. | [optional] |
| **is_system** | **Boolean** | &#x60;true&#x60; for a built-in system group, whose members follow from the user types rather than from membership changes. Absent for every other group, never &#x60;false&#x60;. | [optional] |
| **manager** | [**UserSummaryPayload**](UserSummaryPayload.md) |  | [optional] |
| **members_count** | **Integer** | How many users belong to the group at the time of the event, disabled accounts not counted; 0 for a group without members. | [optional] |

## Example

```ruby
require 'docspace-webhooks-sdk'

instance = DocspaceWebhooksSdk::GroupPayload.new(
  id: c652dd0b-fa6e-4bb7-a3b2-9a2e4e6b7d1c,
  name: Marketing Team,
  parent: 3f5c2a1e-8b7d-4e6f-9a0b-1c2d3e4f5a6b,
  category: 00000000-0000-0000-0000-000000000000,
  is_ldap: false,
  is_system: true,
  manager: null,
  members_count: 12
)
```

