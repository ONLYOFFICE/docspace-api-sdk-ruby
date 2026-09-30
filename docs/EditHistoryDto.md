# DocspaceApiSdk::EditHistoryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file the revision belongs to; every entry of one history carries the same value. | [optional] |
| **key** | **String** | The document key of this revision, which the editing service uses to tell the revisions of a file apart and to  reuse the copy it has cached. Hand it back unchanged when asking the editor for this revision. | [optional] |
| **version** | **Integer** | The number of the revision, counting up from 1 in the order the revisions were saved. It is the value the  operations that show the changes of a revision or restore it expect. | [optional] |
| **version_group** | **Integer** | Groups the revisions written by one editing session: entries sharing this number were saved while the same  session was open, which is how a client collapses a long list of revisions into the versions a person would  recognise. | [optional] |
| **user** | [**EditHistoryAuthor**](EditHistoryAuthor.md) | The account that saved the revision. A revision saved by an account that no longer exists, or through an  anonymous link, is reported as a guest. | [optional] |
| **created** | [**ApiDateTime**](ApiDateTime.md) | When the revision was saved, written with the offset of the portal's time zone rather than as plain UTC. The  times of one history are consistent with each other, so order and display the revisions by them. | [optional] |
| **changes_history** | **String** | The change record the editing service stored for this revision, as the raw JSON it was written in, and empty  for a revision the portal has no record for - one uploaded as a whole file, for instance. `changes` is the  same record already parsed. | [optional] |
| **changes** | [**Array&lt;EditHistoryChangesWrapper&gt;**](EditHistoryChangesWrapper.md) | The single changes this revision introduced - who made each of them and when - taken from the stored change  record. It comes back empty both for a revision whose changes were never recorded and for one whose record is  in a format the portal no longer reads, so an empty list is not proof that nothing changed. | [optional] |
| **server_version** | **String** | The build of the editing service that wrote the change record of this revision, taken from the record itself;  empty when the portal holds no record for the revision. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryDto.new(
  id: 123,
  key: doc-key-abc123,
  version: 2,
  version_group: 1,
  user: null,
  created: null,
  changes_history: Changes history text,
  changes: [{user={id=123, name=John Doe}, created=2021-01-01T00:00:00Z}],
  server_version: 8.0.1
)
```
