# DocspaceApiSdk::SsoSigningAlgorithmTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rsa_sha1** | **String** | The RSA-SHA1 signing algorithm, which the built-in configuration uses. SHA-1 is the weakest of the three  and some identity providers no longer accept it. | [optional][readonly] |
| **rsa_sha256** | **String** | The RSA-SHA256 signing algorithm. | [optional][readonly] |
| **rsa_sha512** | **String** | The RSA-SHA512 signing algorithm. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSigningAlgorithmTypeDto.new(
  rsa_sha1: http://www.w3.org/2000/09/xmldsig#rsa-sha1,
  rsa_sha256: http://www.w3.org/2001/04/xmldsig-more#rsa-sha256,
  rsa_sha512: http://www.w3.org/2001/04/xmldsig-more#rsa-sha512
)
```
