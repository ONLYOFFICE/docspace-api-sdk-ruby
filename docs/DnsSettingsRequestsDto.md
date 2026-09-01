# DocspaceApiSdk::DnsSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns_name** | **String** | The DNS (Domain Name System) configuration name. | [optional] |
| **enable** | **Boolean** | Specifies whether the DNS settings are enabled. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DnsSettingsRequestsDto.new(
  dns_name: example.com,
  enable: true
)
```
