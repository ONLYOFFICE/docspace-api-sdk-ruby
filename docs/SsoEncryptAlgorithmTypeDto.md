# DocspaceApiSdk::SsoEncryptAlgorithmTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aes128** | **String** | The AES-128-CBC encryption algorithm, which the built-in configuration uses. | [optional][readonly] |
| **aes256** | **String** | The AES-256-CBC encryption algorithm, the strongest of the three. | [optional][readonly] |
| **tri_dec** | **String** | The Triple DES CBC encryption algorithm, kept for identity providers that support nothing newer. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoEncryptAlgorithmTypeDto.new(
  aes128: http://www.w3.org/2001/04/xmlenc#aes128-cbc,
  aes256: http://www.w3.org/2001/04/xmlenc#aes256-cbc,
  tri_dec: http://www.w3.org/2001/04/xmlenc#tripledes-cbc
)
```
