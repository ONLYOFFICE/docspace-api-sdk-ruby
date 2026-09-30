# DocspaceApiSdk::LockFileParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lock_file** | **Boolean** | The state to reach: `true` locks the file, which blocks editing, renaming and deleting for everybody but the  account that locked it and the room admins, and drops the others out of a running editing session; `false`  releases the lock. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LockFileParameters.new(
  lock_file: true
)
```
