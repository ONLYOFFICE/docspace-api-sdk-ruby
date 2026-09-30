# (c) Copyright Ascensio System SIA 2026
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'cgi'

module DocspaceApiSdk
  module Backup
    class BackupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the running backup
    # Drops the backup job of the current portal from the queue, which cancels it if it is still running.  The caller needs the portal settings permission. It answers false, not an error, when there is nothing  to cancel, so the result says whether a job was actually dropped rather than whether the call  succeeded.  This affects backup jobs only: a restoring job cannot be cancelled through the API. The cancelled job  leaves the queue, so a following `GET api/2.0/backup/getbackupprogress` reports no job at all rather  than a job with the `Canceled` status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-backup/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def cancel_backup(opts = {})
      data, _status_code, _headers = cancel_backup_with_http_info(opts)
      data
    end

    # Cancel the running backup
    # Drops the backup job of the current portal from the queue, which cancels it if it is still running.  The caller needs the portal settings permission. It answers false, not an error, when there is nothing  to cancel, so the result says whether a job was actually dropped rather than whether the call  succeeded.  This affects backup jobs only: a restoring job cannot be cancelled through the API. The cancelled job  leaves the queue, so a following `GET api/2.0/backup/getbackupprogress` reports no job at all rather  than a job with the `Canceled` status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-backup/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def cancel_backup_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.cancel_backup ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/cancelbackup'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.cancel_backup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#cancel_backup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create the backup schedule
    # Sets the backup schedule of the current portal. A portal keeps at most one schedule, so this replaces  the existing one rather than adding a second, and `dump` writes the schedule of the whole server  instead, which requires the space access permission and works on a standalone installation only.  Scheduled backups have to be allowed by the pricing plan of a portal that is not a standalone  installation.  `cronParams` is a period plus a time rather than a cron string: `hour` is the hour of the day from 0  to 23, and `day` has to be given for `EveryWeek`, where it is the day of the week from 1 to 7 with  Sunday as 1, and for `EveryMonth`, where it is the day of the month from 1 to 31. It is left out for  `EveryDay`, and because an omitted `day` is stored as 0, which neither period accepts, a weekly or  monthly schedule sent without it fails instead of falling back to a default.  `backupsStored` is the number of scheduled copies to keep, from 1 to 30, and it defaults to 1. Older  copies are removed by a background cleaner, and only the ones this schedule created: archives made by  `POST api/2.0/backup/startbackup` are not counted and not removed. A portal whose subscription stops  covering backups has its schedule deleted by the scheduler, not suspended, and its administrators are  notified that the scheduled backup failed.  The keys expected in `storageParams` are the same as for `POST api/2.0/backup/startbackup`, except  that they are sent as an array of key and value pairs here and returned as an object by  `GET api/2.0/backup/getbackupschedule`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupScheduleDto] :backup_schedule_dto 
    # @return [BooleanWrapper]
    def create_backup_schedule(opts = {})
      data, _status_code, _headers = create_backup_schedule_with_http_info(opts)
      data
    end

    # Create the backup schedule
    # Sets the backup schedule of the current portal. A portal keeps at most one schedule, so this replaces  the existing one rather than adding a second, and `dump` writes the schedule of the whole server  instead, which requires the space access permission and works on a standalone installation only.  Scheduled backups have to be allowed by the pricing plan of a portal that is not a standalone  installation.  `cronParams` is a period plus a time rather than a cron string: `hour` is the hour of the day from 0  to 23, and `day` has to be given for `EveryWeek`, where it is the day of the week from 1 to 7 with  Sunday as 1, and for `EveryMonth`, where it is the day of the month from 1 to 31. It is left out for  `EveryDay`, and because an omitted `day` is stored as 0, which neither period accepts, a weekly or  monthly schedule sent without it fails instead of falling back to a default.  `backupsStored` is the number of scheduled copies to keep, from 1 to 30, and it defaults to 1. Older  copies are removed by a background cleaner, and only the ones this schedule created: archives made by  `POST api/2.0/backup/startbackup` are not counted and not removed. A portal whose subscription stops  covering backups has its schedule deleted by the scheduler, not suspended, and its administrators are  notified that the scheduled backup failed.  The keys expected in `storageParams` are the same as for `POST api/2.0/backup/startbackup`, except  that they are sent as an array of key and value pairs here and returned as an object by  `GET api/2.0/backup/getbackupschedule`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupScheduleDto] :backup_schedule_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def create_backup_schedule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.create_backup_schedule ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/createbackupschedule'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'backup_schedule_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.create_backup_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#create_backup_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the backup
    # Deletes one backup: first its history record, then the archive in the storage the record points at.  The ID is the one listed by `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the  backup was started with.  Deleting a backup of the whole server rather than of one portal additionally requires the space  access permission. A record that belongs to another portal is left untouched and the call still  answers true, so the result confirms that the request was accepted rather than that anything was  deleted - check with `GET api/2.0/backup/getbackuphistory` if it matters.  The record is removed before the archive, so when the storage can no longer be reached the archive  stays behind with nothing pointing at it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/
    # @param id [String] The ID of the backup to delete, taken from the route. It is the `id` of a record listed by  `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the backup was started with.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def delete_backup(id, opts = {})
      data, _status_code, _headers = delete_backup_with_http_info(id, opts)
      data
    end

    # Delete the backup
    # Deletes one backup: first its history record, then the archive in the storage the record points at.  The ID is the one listed by `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the  backup was started with.  Deleting a backup of the whole server rather than of one portal additionally requires the space  access permission. A record that belongs to another portal is left untouched and the call still  answers true, so the result confirms that the request was accepted rather than that anything was  deleted - check with `GET api/2.0/backup/getbackuphistory` if it matters.  The record is removed before the archive, so when the storage can no longer be reached the archive  stays behind with nothing pointing at it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/
    # @param id [String] The ID of the backup to delete, taken from the route. It is the `id` of a record listed by  `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the backup was started with.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_backup_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.delete_backup ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Backup::BackupApi.delete_backup"
      end
      # resource path
      local_var_path = '/api/2.0/backup/deletebackup/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.delete_backup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#delete_backup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the backup history
    # Deletes every backup of the current portal, both the history records and the archives themselves, and  leaves the backup schedule alone. `dump` clears the backups of the whole server instead and requires  the space access permission.  The records are walked one by one and a failure on any of them is swallowed, so the result is always  true even when some archives could not be deleted: it does not mean the history is now empty. Call  `GET api/2.0/backup/getbackuphistory` afterwards to see what is left.  Each record is removed before its archive, so an archive whose deletion fails stays in the storage  with nothing pointing at it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [BooleanWrapper]
    def delete_backup_history(opts = {})
      data, _status_code, _headers = delete_backup_history_with_http_info(opts)
      data
    end

    # Delete the backup history
    # Deletes every backup of the current portal, both the history records and the archives themselves, and  leaves the backup schedule alone. `dump` clears the backups of the whole server instead and requires  the space access permission.  The records are walked one by one and a failure on any of them is swallowed, so the result is always  true even when some archives could not be deleted: it does not mean the history is now empty. Call  `GET api/2.0/backup/getbackuphistory` afterwards to see what is left.  Each record is removed before its archive, so an archive whose deletion fails stays in the storage  with nothing pointing at it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_backup_history_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.delete_backup_history ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/deletebackuphistory'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.delete_backup_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#delete_backup_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the backup schedule
    # Deletes the backup schedule of the current portal, which stops the scheduled backups; `dump` deletes  the schedule of the whole server instead and requires the space access permission. The archives the  schedule has already produced are kept and stay listed by  `GET api/2.0/backup/getbackuphistory` - delete them through  `DELETE api/2.0/backup/deletebackup/{id}` if they are no longer wanted.  The result is always true, including when there was no schedule to delete, so it confirms that the  portal now has none rather than that anything was removed. The deletion is written to the audit trail  either way.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [BooleanWrapper]
    def delete_backup_schedule(opts = {})
      data, _status_code, _headers = delete_backup_schedule_with_http_info(opts)
      data
    end

    # Delete the backup schedule
    # Deletes the backup schedule of the current portal, which stops the scheduled backups; `dump` deletes  the schedule of the whole server instead and requires the space access permission. The archives the  schedule has already produced are kept and stay listed by  `GET api/2.0/backup/getbackuphistory` - delete them through  `DELETE api/2.0/backup/deletebackup/{id}` if they are no longer wanted.  The result is always true, including when there was no schedule to delete, so it confirms that the  portal now has none rather than that anything was removed. The deletion is written to the audit trail  either way.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_backup_schedule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.delete_backup_schedule ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/deletebackupschedule'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.delete_backup_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#delete_backup_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the backup history
    # Lists the backups of the current portal whose archive is still present in the storage it was written  to. The records come back in no particular order, so sort them by `createdOn` if the newest one is  wanted. `dump` lists the backups of the whole server instead and requires the space access  permission.  Despite being a read operation, this prunes the history as it goes: a record whose archive is no  longer in its storage is deleted outright, so the list can shrink between two calls without anybody  deleting anything. A record whose storage can no longer be reached at all - a disconnected  third-party account, for instance - is neither returned nor deleted, so it stays invisible while  still occupying the history.  The `id` of a record is the same value as the `taskId` that  `POST api/2.0/backup/startbackup` returned for it, and it is what  `DELETE api/2.0/backup/deletebackup/{id}` and the `backupId` of  `POST api/2.0/backup/startrestore` expect.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [BackupHistoryRecordArrayWrapper]
    def get_backup_history(opts = {})
      data, _status_code, _headers = get_backup_history_with_http_info(opts)
      data
    end

    # Get the backup history
    # Lists the backups of the current portal whose archive is still present in the storage it was written  to. The records come back in no particular order, so sort them by `createdOn` if the newest one is  wanted. `dump` lists the backups of the whole server instead and requires the space access  permission.  Despite being a read operation, this prunes the history as it goes: a record whose archive is no  longer in its storage is deleted outright, so the list can shrink between two calls without anybody  deleting anything. A record whose storage can no longer be reached at all - a disconnected  third-party account, for instance - is neither returned nor deleted, so it stays invisible while  still occupying the history.  The `id` of a record is the same value as the `taskId` that  `POST api/2.0/backup/startbackup` returned for it, and it is what  `DELETE api/2.0/backup/deletebackup/{id}` and the `backupId` of  `POST api/2.0/backup/startrestore` expect.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [Array<(BackupHistoryRecordArrayWrapper, Integer, Hash)>] BackupHistoryRecordArrayWrapper data, response status code and response headers
    def get_backup_history_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backup_history ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getbackuphistory'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupHistoryRecordArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backup_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backup_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the backup progress
    # Reports the state of the backup job of the current portal, and is the operation to poll after  `POST api/2.0/backup/startbackup`. The queue holds one job per portal, so no job ID is passed in;  `dump` asks for the state of the server-wide job instead and requires the space access permission.  When there is no such job - none was ever started, or the finished one has already been dropped from  the queue - the call still answers 200, but the body carries no `response` member at all, so a client  has to treat the payload as optional rather than expect an empty object.  While the job runs, `isCompleted` is false, `error` and `link` are empty strings and `progress` grows  from 0 to 100. Once it stops, `isCompleted` turns true and `status` says how it ended: a non-empty  `error` is the only report of a failure, `warning` is set when the archive was written but some files  could not be read or when the job was cancelled, and `link` becomes the download link to the stored  archive.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [BackupProgressWrapper]
    def get_backup_progress(opts = {})
      data, _status_code, _headers = get_backup_progress_with_http_info(opts)
      data
    end

    # Get the backup progress
    # Reports the state of the backup job of the current portal, and is the operation to poll after  `POST api/2.0/backup/startbackup`. The queue holds one job per portal, so no job ID is passed in;  `dump` asks for the state of the server-wide job instead and requires the space access permission.  When there is no such job - none was ever started, or the finished one has already been dropped from  the queue - the call still answers 200, but the body carries no `response` member at all, so a client  has to treat the payload as optional rather than expect an empty object.  While the job runs, `isCompleted` is false, `error` and `link` are empty strings and `progress` grows  from 0 to 100. Once it stops, `isCompleted` turns true and `status` says how it ended: a non-empty  `error` is the only report of a failure, `warning` is set when the archive was written but some files  could not be read or when the job was cancelled, and `link` becomes the download link to the stored  archive.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [Array<(BackupProgressWrapper, Integer, Hash)>] BackupProgressWrapper data, response status code and response headers
    def get_backup_progress_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backup_progress ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getbackupprogress'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupProgressWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backup_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backup_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the backup schedule
    # Returns the backup schedule of the current portal. A portal keeps at most one schedule, so no ID is  passed in, and when none is set the call still answers 200 with a body that carries no `response`  member at all. `dump` asks for the schedule of the whole server instead of the one of this portal and  requires the space access permission.  The answer cannot be sent back unchanged: `storageParams` is returned as an object keyed by parameter  name, while `POST api/2.0/backup/createbackupschedule` expects an array of key and value pairs. For  every storage type except `ThirdPartyConsumer` the `folderId` key of the answer is built from the  stored base path rather than read back from the saved parameters, and a schedule that keeps an  unlimited number of copies reports `backupsStored` as null instead of 0.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [ScheduleWrapper]
    def get_backup_schedule(opts = {})
      data, _status_code, _headers = get_backup_schedule_with_http_info(opts)
      data
    end

    # Get the backup schedule
    # Returns the backup schedule of the current portal. A portal keeps at most one schedule, so no ID is  passed in, and when none is set the call still answers 200 with a body that carries no `response`  member at all. `dump` asks for the schedule of the whole server instead of the one of this portal and  requires the space access permission.  The answer cannot be sent back unchanged: `storageParams` is returned as an object keyed by parameter  name, while `POST api/2.0/backup/createbackupschedule` expects an array of key and value pairs. For  every storage type except `ThirdPartyConsumer` the `folderId` key of the answer is built from the  stored base path rather than read back from the saved parameters, and a schedule that keeps an  unlimited number of copies reports `backupsStored` as null instead of 0.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
    # @return [Array<(ScheduleWrapper, Integer, Hash)>] ScheduleWrapper data, response status code and response headers
    def get_backup_schedule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backup_schedule ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getbackupschedule'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ScheduleWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backup_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backup_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the number of backups
    # Counts the backups of the current portal that were created within a period, and `paid` chooses which  kind is counted: false, the default, counts the ones covered by the free monthly allowance, and true  counts the ones charged to the portal wallet.  The period defaults to the current calendar month - `from` becomes the first day of the month at  00:00 UTC and `to` becomes the moment of the call. Both bounds are UTC and inclusive, and a `from`  later than `to` is rejected. Called with no parameters at all, this returns exactly the figure the  free monthly allowance is measured against.  The count is over history records rather than over stored archives, so it includes backups that have  already been deleted; use `GET api/2.0/backup/getbackuphistory` to see what can still be restored.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
    # @option opts [Time] :to The end of the period, in UTC and inclusive. It defaults to the moment of the call.
    # @option opts [Boolean] :paid Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
    # @return [Int32Wrapper]
    def get_backups_count(opts = {})
      data, _status_code, _headers = get_backups_count_with_http_info(opts)
      data
    end

    # Get the number of backups
    # Counts the backups of the current portal that were created within a period, and `paid` chooses which  kind is counted: false, the default, counts the ones covered by the free monthly allowance, and true  counts the ones charged to the portal wallet.  The period defaults to the current calendar month - `from` becomes the first day of the month at  00:00 UTC and `to` becomes the moment of the call. Both bounds are UTC and inclusive, and a `from`  later than `to` is rejected. Called with no parameters at all, this returns exactly the figure the  free monthly allowance is measured against.  The count is over history records rather than over stored archives, so it includes backups that have  already been deleted; use `GET api/2.0/backup/getbackuphistory` to see what can still be restored.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
    # @option opts [Time] :to The end of the period, in UTC and inclusive. It defaults to the moment of the call.
    # @option opts [Boolean] :paid Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
    # @return [Array<(Int32Wrapper, Integer, Hash)>] Int32Wrapper data, response status code and response headers
    def get_backups_count_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backups_count ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getbackupscount'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'paid'] = opts[:'paid'] if !opts[:'paid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Int32Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backups_count",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backups_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get free and paid backup counts
    # Counts the backups of the current portal created within a period and splits the result into the ones  covered by the free monthly allowance and the ones charged to the portal wallet, which saves calling  `GET api/2.0/backup/getbackupscount` twice.  The `paid` query parameter is accepted but not read here: the answer always carries both figures. The  period behaves as it does for `GET api/2.0/backup/getbackupscount` - it defaults to the current  calendar month, both bounds are UTC and inclusive, and a `from` later than `to` is rejected.  The counts are over history records rather than over stored archives, so they include backups that  have already been deleted.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-counts/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
    # @option opts [Time] :to The end of the period, in UTC and inclusive. It defaults to the moment of the call.
    # @option opts [Boolean] :paid Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
    # @return [BackupsCountResultWrapper]
    def get_backups_counts(opts = {})
      data, _status_code, _headers = get_backups_counts_with_http_info(opts)
      data
    end

    # Get free and paid backup counts
    # Counts the backups of the current portal created within a period and splits the result into the ones  covered by the free monthly allowance and the ones charged to the portal wallet, which saves calling  `GET api/2.0/backup/getbackupscount` twice.  The `paid` query parameter is accepted but not read here: the answer always carries both figures. The  period behaves as it does for `GET api/2.0/backup/getbackupscount` - it defaults to the current  calendar month, both bounds are UTC and inclusive, and a `from` later than `to` is rejected.  The counts are over history records rather than over stored archives, so they include backups that  have already been deleted.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-counts/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
    # @option opts [Time] :to The end of the period, in UTC and inclusive. It defaults to the moment of the call.
    # @option opts [Boolean] :paid Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
    # @return [Array<(BackupsCountResultWrapper, Integer, Hash)>] BackupsCountResultWrapper data, response status code and response headers
    def get_backups_counts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backups_counts ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getbackupscountbypaid'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'paid'] = opts[:'paid'] if !opts[:'paid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupsCountResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backups_counts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backups_counts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check whether backups are enabled
    # Reports whether the paid backup service is switched on for the current portal. This is a wallet  setting of the portal, not the health of the backup service or of the worker that runs the jobs, so a  false answer does not mean backups are unavailable and a true one does not mean they are working.  While it is on, backups beyond the free monthly allowance are charged to the portal wallet. While it  is off and that allowance is used up, `POST api/2.0/backup/startbackup` and  `POST api/2.0/backup/createbackupschedule` answer 402.  Starting a backup once the allowance is used up switches the service on by itself, as soon as a  billing session opens for the portal, so this flag can change without anybody editing the portal  settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-service-state/
    # @param [Hash] opts the optional parameters
    # @return [BackupServiceStateWrapper]
    def get_backups_service_state(opts = {})
      data, _status_code, _headers = get_backups_service_state_with_http_info(opts)
      data
    end

    # Check whether backups are enabled
    # Reports whether the paid backup service is switched on for the current portal. This is a wallet  setting of the portal, not the health of the backup service or of the worker that runs the jobs, so a  false answer does not mean backups are unavailable and a true one does not mean they are working.  While it is on, backups beyond the free monthly allowance are charged to the portal wallet. While it  is off and that allowance is used up, `POST api/2.0/backup/startbackup` and  `POST api/2.0/backup/createbackupschedule` answer 402.  Starting a backup once the allowance is used up switches the service on by itself, as soon as a  billing session opens for the portal, so this flag can change without anybody editing the portal  settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-service-state/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BackupServiceStateWrapper, Integer, Hash)>] BackupServiceStateWrapper data, response status code and response headers
    def get_backups_service_state_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_backups_service_state ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getservicestate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupServiceStateWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_backups_service_state",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_backups_service_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the restoring progress
    # Reports the state of the restoring job, and is the operation to poll after  `POST api/2.0/backup/startrestore`. It is the only operation of this service that needs no  authorization and the only one that stays reachable while the portal is being restored, which is  exactly the state a client polls it in - every other operation of the service answers 403 then.  `dump` is read as three states rather than as a flag: omit it to get whichever restoring job concerns  this portal, including a server-wide one, pass false to get the job of this portal only, and pass true  to get the server-wide job; on a portal that is not a standalone installation the value is forced to  false. When there is no matching job the call still answers 200, but the body carries no `response`  member at all.  `isCompleted` is the field to poll, a non-empty `error` is the only report of a failure, and neither  `link` nor `warning` is ever filled in for a restoring job.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Which restoring job to look for, read as three states rather than as a flag: leave it out for  whichever job concerns this portal, including a server-wide one, send false for the job of this  portal alone, and send true for the server-wide job. On a portal that is not a standalone  installation the value is forced to false.
    # @return [BackupProgressWrapper]
    def get_restore_progress(opts = {})
      data, _status_code, _headers = get_restore_progress_with_http_info(opts)
      data
    end

    # Get the restoring progress
    # Reports the state of the restoring job, and is the operation to poll after  `POST api/2.0/backup/startrestore`. It is the only operation of this service that needs no  authorization and the only one that stays reachable while the portal is being restored, which is  exactly the state a client polls it in - every other operation of the service answers 403 then.  `dump` is read as three states rather than as a flag: omit it to get whichever restoring job concerns  this portal, including a server-wide one, pass false to get the job of this portal only, and pass true  to get the server-wide job; on a portal that is not a standalone installation the value is forced to  false. When there is no matching job the call still answers 200, but the body carries no `response`  member at all.  `isCompleted` is the field to poll, a non-empty `error` is the only report of a failure, and neither  `link` nor `warning` is ever filled in for a restoring job.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Which restoring job to look for, read as three states rather than as a flag: leave it out for  whichever job concerns this portal, including a server-wide one, send false for the job of this  portal alone, and send true for the server-wide job. On a portal that is not a standalone  installation the value is forced to false.
    # @return [Array<(BackupProgressWrapper, Integer, Hash)>] BackupProgressWrapper data, response status code and response headers
    def get_restore_progress_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.get_restore_progress ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/getrestoreprogress'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupProgressWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.get_restore_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#get_restore_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the backup
    # Queues a backup of the current portal and returns straight away: the archive itself is written by the  separate backup worker service, which picks the job up from an integration event, so the response  reports a progress of 0 and the `Created` status, and its `taskId` is the handle to poll with  `GET api/2.0/backup/getbackupprogress`. The caller needs the portal settings permission, and  `dump` - a backup of the whole server instead of this one portal - additionally requires the space  access permission and is rejected outside a standalone installation.  The keys expected in `storageParams` depend on `storageType`: `Documents` takes an integer `folderId`,  `ThridpartyDocuments` takes a provider-specific non-integer `folderId`, `Local` takes `filePath` and  works on a standalone installation only, `ThirdPartyConsumer` takes `module` together with the settings  of that consumer, and `DataStore` takes no keys at all; the `subdir` key is added by the operation  itself and must not be sent.  A portal that has already used up the free backups of the current calendar month is charged through the  paid backup service instead, and the call is rejected with 402 when that service is not available to it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupDto] :backup_dto 
    # @return [BackupProgressWrapper]
    def start_backup(opts = {})
      data, _status_code, _headers = start_backup_with_http_info(opts)
      data
    end

    # Start the backup
    # Queues a backup of the current portal and returns straight away: the archive itself is written by the  separate backup worker service, which picks the job up from an integration event, so the response  reports a progress of 0 and the `Created` status, and its `taskId` is the handle to poll with  `GET api/2.0/backup/getbackupprogress`. The caller needs the portal settings permission, and  `dump` - a backup of the whole server instead of this one portal - additionally requires the space  access permission and is rejected outside a standalone installation.  The keys expected in `storageParams` depend on `storageType`: `Documents` takes an integer `folderId`,  `ThridpartyDocuments` takes a provider-specific non-integer `folderId`, `Local` takes `filePath` and  works on a standalone installation only, `ThirdPartyConsumer` takes `module` together with the settings  of that consumer, and `DataStore` takes no keys at all; the `subdir` key is added by the operation  itself and must not be sent.  A portal that has already used up the free backups of the current calendar month is charged through the  paid backup service instead, and the call is rejected with 402 when that service is not available to it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupDto] :backup_dto 
    # @return [Array<(BackupProgressWrapper, Integer, Hash)>] BackupProgressWrapper data, response status code and response headers
    def start_backup_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.start_backup ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/startbackup'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'backup_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BackupProgressWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.start_backup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#start_backup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the restoring process
    # Queues the restoring of the current portal from a backup and returns straight away: the work itself is  done by the separate backup worker service, which picks the job up from an integration event, so the  response reports a progress of 0 and the `Created` status, and the returned `taskId` is the handle to  poll with `GET api/2.0/backup/getrestoreprogress` - the one operation of this service that stays  reachable while the portal is being restored, because every other one answers 403 in that state.  The source is given either by `backupId`, which is the ID of a record from  `GET api/2.0/backup/getbackuphistory`, or, when `backupId` is not a GUID, by the `filePath` key of  `storageParams` together with the matching `storageType`; an all-zero GUID is parsed as a GUID and  therefore reaches neither branch.  The caller needs the portal settings permission, restoring has to be allowed by the pricing plan of a  portal that is not a standalone installation, and `dump` - restoring the whole server rather than this  one portal - additionally requires the space access permission.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup-restore/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupRestoreDto] :backup_restore_dto 
    # @return [BackupProgressWrapper]
    def start_backup_restore(opts = {})
      data, _status_code, _headers = start_backup_restore_with_http_info(opts)
      data
    end

    # Start the restoring process
    # Queues the restoring of the current portal from a backup and returns straight away: the work itself is  done by the separate backup worker service, which picks the job up from an integration event, so the  response reports a progress of 0 and the `Created` status, and the returned `taskId` is the handle to  poll with `GET api/2.0/backup/getrestoreprogress` - the one operation of this service that stays  reachable while the portal is being restored, because every other one answers 403 in that state.  The source is given either by `backupId`, which is the ID of a record from  `GET api/2.0/backup/getbackuphistory`, or, when `backupId` is not a GUID, by the `filePath` key of  `storageParams` together with the matching `storageType`; an all-zero GUID is parsed as a GUID and  therefore reaches neither branch.  The caller needs the portal settings permission, restoring has to be allowed by the pricing plan of a  portal that is not a standalone installation, and `dump` - restoring the whole server rather than this  one portal - additionally requires the space access permission.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup-restore/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupRestoreDto] :backup_restore_dto 
    # @return [Array<(BackupProgressWrapper, Integer, Hash)>] BackupProgressWrapper data, response status code and response headers
    def start_backup_restore_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Backup::BackupApi.start_backup_restore ...'
      end
      # resource path
      local_var_path = '/api/2.0/backup/startrestore'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'backup_restore_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BackupProgressWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Backup::BackupApi.start_backup_restore",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Backup::BackupApi#start_backup_restore\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
