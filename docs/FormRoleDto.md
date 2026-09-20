# DocspaceApiSdk::FormRoleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_name** | **String** | The name the role was given when the form was laid out, unique within that form. It is the value that names  the role in the calls which change or stop the filling. |  |
| **role_color** | **String** | The colour a client paints the role with, as a hexadecimal RGB value; empty when the role mapping assigned  none. | [optional] |
| **user** | [**EmployeeFullDto**](EmployeeFullDto.md) | The account the role was assigned to, which is the person expected to fill this part of the form. | [optional] |
| **sequence** | **Integer** | The turn this role takes: the roles come back ordered by this number, roles sharing a number are filled in  parallel, and a role with a higher number waits until every lower one has been submitted. |  |
| **submitted** | **Boolean** | Reports whether this role has already handed in its part. The lowest sequence number that still holds an  unsubmitted role is the turn the form as a whole is waiting on. |  |
| **stoped_by** | [**EmployeeFullDto**](EmployeeFullDto.md) | The account that interrupted the filling. It is filled in on the one role the filling was stopped at and stays  empty on every other role, and on all of them while the filling runs normally. | [optional] |
| **history** | **Hash&lt;String, Time&gt;** | When the role passed through the stages of its turn, keyed by stage: 0 is the moment the form was opened for  it, 1 the moment it was submitted and 2 the moment the filling was stopped at it. The times are given in the  time zone of the portal, and only the stages that have actually happened are present, so an empty object means  the role has not been opened yet. | [optional] |
| **role_status** | [**FormFillingStatus**](FormFillingStatus.md) | Where the role stands in the queue: roles of earlier turns are reported as complete, roles of later turns as a  draft, and the role whose turn it is as either yours to fill or in progress, depending on whether that person  has already opened the form. The role the filling was stopped at is reported as stopped whatever its turn. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormRoleDto.new(
  role_name: Approver,
  role_color: #FF5733,
  user: null,
  sequence: 1,
  submitted: false,
  stoped_by: null,
  history: {0=2025-01-15T10:30:00},
  role_status: null
)
```
