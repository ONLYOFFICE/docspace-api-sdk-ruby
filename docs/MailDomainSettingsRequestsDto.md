# DocspaceApiSdk::MailDomainSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) |  |  |
| **domains** | **Array&lt;String&gt;** | The list of authorized email domains that are considered trusted. |  |
| **invite_users_as_visitors** | **Boolean** | Specifies the default permission level for the invited users (visitors or not). |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MailDomainSettingsRequestsDto.new(
  type: null,
  domains: ["example.com","company.com"],
  invite_users_as_visitors: false
)
```
