# DocspaceApiSdk::ChangeWalletServiceStateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | [**TenantWalletService**](TenantWalletService.md) |  | [optional] |
| **enabled** | **Boolean** | Specifies whether the wallet service is enabled. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeWalletServiceStateRequestDto.new(
  service: null,
  enabled: true
)
```
