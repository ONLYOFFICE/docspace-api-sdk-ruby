# DocspaceApiSdk::FormSubmissionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Array&lt;FormMetadata&gt;**](FormMetadata.md) | Describes the fields of the form version that is being filled - the key each value is stored under, the type  and format of the field and, where the field offers a fixed set of answers, those answers - in the order the  fields are laid out, which is the order to build a results table in. It comes back empty when the portal holds  no indexed description of that version. | [optional] |
| **submissions** | [**Array&lt;FormResultsDto&gt;**](FormResultsDto.md) | One entry per completed copy, ordered by the copy number that `formsData` carries. An empty list means nothing  has been completed for the version that is currently being filled; the copies of earlier versions of the form  are not reported here. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormSubmissionsDto.new(
  metadata: [],
  submissions: []
)
```
