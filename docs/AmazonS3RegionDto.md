# DocspaceApiSdk::AmazonS3RegionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_name** | **String** | The region code to send as the region value when configuring an Amazon S3 storage or backup target. It is  the one field of this object that is an argument elsewhere; a code the server does not list here cannot be  reached, so pick one from this list rather than typing it. | [optional] |
| **display_name** | **String** | The region name as Amazon writes it, in English regardless of the portal language, for showing in a  picker next to `systemName`. | [optional] |
| **partition_name** | **String** | The Amazon partition the region sits in - the ordinary commercial cloud, the Chinese one, or a government  one. Regions of different partitions are not reachable with the same credentials. | [optional] |
| **partition_dns_suffix** | **String** | The domain the partition's service host names end in, which differs from partition to partition. | [optional] |
| **partition_region_regex** | **String** | The pattern every region code of this partition matches, for validating a code before sending it. | [optional] |
| **hostname_template** | **String** | How a service host name of the partition is assembled, with `{service}`, `{region}` and `{dnsSuffix}` to  be filled in. It is reference material - the portal builds its own endpoints from `systemName`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AmazonS3RegionDto.new(
  system_name: eu-west-1,
  display_name: Europe (Ireland),
  partition_name: aws,
  partition_dns_suffix: amazonaws.com,
  partition_region_regex: ^(us|eu|ap|sa|ca|me|af|il|mx)\-\w+\-\d+$,
  hostname_template: {service}.{region}.{dnsSuffix}
)
```
