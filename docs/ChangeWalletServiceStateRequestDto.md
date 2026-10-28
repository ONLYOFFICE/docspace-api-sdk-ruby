# DocspaceApiSdk::ChangeWalletServiceStateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | [**TenantWalletService**](TenantWalletService.md) | The service being switched, given by its catalogue name. Switching it on only makes it available to the  portal; its units are still bought with `PUT api/2.0/portal/payment/updatewallet`. | [optional] |
| **enabled** | **Boolean** | Which way the service is switched: `true` makes it available to the portal, `false` withdraws it. Setting the  state the service already has changes nothing. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeWalletServiceStateRequestDto.new(
  service: null,
  enabled: true
)
```
