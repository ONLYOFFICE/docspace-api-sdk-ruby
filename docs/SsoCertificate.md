# DocspaceApiSdk::SsoCertificate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **self_signed** | **Boolean** | Specifies if a certificate is self-signed or not. | [optional] |
| **crt** | **String** | The CRT certificate file. | [optional] |
| **key** | **String** | The certificate key. | [optional] |
| **action** | **String** | The certificate action. | [optional] |
| **domain_name** | **String** | The certificate domain name. | [optional] |
| **start_date** | **Time** | The certificate start date. | [optional] |
| **expired_date** | **Time** | The certificate expiration date. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoCertificate.new(
  self_signed: false,
  crt: crt file,
  key: key,
  action: validate,
  domain_name: example.com,
  start_date: 2024-01-01T00:00:00Z,
  expired_date: 2024-01-01T00:00:00Z
)
```
