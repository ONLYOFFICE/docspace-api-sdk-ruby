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
    # Cancel current backup
    # Cancel current backup.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-backup/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def cancel_backup(opts = {})
      data, _status_code, _headers = cancel_backup_with_http_info(opts)
      data
    end

    # Cancel current backup
    # Cancel current backup.
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
    # Creates the backup schedule of the current portal with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupScheduleDto] :backup_schedule_dto 
    # @return [BooleanWrapper]
    def create_backup_schedule(opts = {})
      data, _status_code, _headers = create_backup_schedule_with_http_info(opts)
      data
    end

    # Create the backup schedule
    # Creates the backup schedule of the current portal with the parameters specified in the request.
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
    # Deletes the backup with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/
    # @param id [String] The backup ID.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def delete_backup(id, opts = {})
      data, _status_code, _headers = delete_backup_with_http_info(id, opts)
      data
    end

    # Delete the backup
    # Deletes the backup with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/
    # @param id [String] The backup ID.
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
    # Deletes the backup history from the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [BooleanWrapper]
    def delete_backup_history(opts = {})
      data, _status_code, _headers = delete_backup_history_with_http_info(opts)
      data
    end

    # Delete the backup history
    # Deletes the backup history from the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
    # Deletes the backup schedule of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [BooleanWrapper]
    def delete_backup_schedule(opts = {})
      data, _status_code, _headers = delete_backup_schedule_with_http_info(opts)
      data
    end

    # Delete the backup schedule
    # Deletes the backup schedule of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
    # Returns the history of the started backup.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [BackupHistoryRecordArrayWrapper]
    def get_backup_history(opts = {})
      data, _status_code, _headers = get_backup_history_with_http_info(opts)
      data
    end

    # Get the backup history
    # Returns the history of the started backup.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
    # Returns the progress of the started backup.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [BackupProgressWrapper]
    def get_backup_progress(opts = {})
      data, _status_code, _headers = get_backup_progress_with_http_info(opts)
      data
    end

    # Get the backup progress
    # Returns the progress of the started backup.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
    # Returns the backup schedule of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [ScheduleWrapper]
    def get_backup_schedule(opts = {})
      data, _status_code, _headers = get_backup_schedule_with_http_info(opts)
      data
    end

    # Get the backup schedule
    # Returns the backup schedule of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
    # Returns the number of backups for a period of time. The default is the current calendar month.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The from date.
    # @option opts [Time] :to The to date.
    # @option opts [Boolean] :paid Specifies if the backups are paid or not.
    # @return [Int32Wrapper]
    def get_backups_count(opts = {})
      data, _status_code, _headers = get_backups_count_with_http_info(opts)
      data
    end

    # Get the number of backups
    # Returns the number of backups for a period of time. The default is the current calendar month.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The from date.
    # @option opts [Time] :to The to date.
    # @option opts [Boolean] :paid Specifies if the backups are paid or not.
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

    # Get the number of free and paid backups
    # Returns the number of free and paid backups for a period of time. The default is the current calendar month.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-counts/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The from date.
    # @option opts [Time] :to The to date.
    # @option opts [Boolean] :paid Specifies if the backups are paid or not.
    # @return [BackupsCountResultWrapper]
    def get_backups_counts(opts = {})
      data, _status_code, _headers = get_backups_counts_with_http_info(opts)
      data
    end

    # Get the number of free and paid backups
    # Returns the number of free and paid backups for a period of time. The default is the current calendar month.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-counts/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from The from date.
    # @option opts [Time] :to The to date.
    # @option opts [Boolean] :paid Specifies if the backups are paid or not.
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

    # Get the backup service state
    # Returns the backup service state.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-service-state/
    # @param [Hash] opts the optional parameters
    # @return [BackupServiceStateWrapper]
    def get_backups_service_state(opts = {})
      data, _status_code, _headers = get_backups_service_state_with_http_info(opts)
      data
    end

    # Get the backup service state
    # Returns the backup service state.
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
    # Returns the progress of the started restoring process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
    # @return [BackupProgressWrapper]
    def get_restore_progress(opts = {})
      data, _status_code, _headers = get_restore_progress_with_http_info(opts)
      data
    end

    # Get the restoring progress
    # Returns the progress of the started restoring process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Specifies if a dump will be created or not.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Starts the backup of the current portal with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupDto] :backup_dto 
    # @return [BackupProgressWrapper]
    def start_backup(opts = {})
      data, _status_code, _headers = start_backup_with_http_info(opts)
      data
    end

    # Start the backup
    # Starts the backup of the current portal with the parameters specified in the request.
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
    # Starts the data restoring process of the current portal with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup-restore/
    # @param [Hash] opts the optional parameters
    # @option opts [BackupRestoreDto] :backup_restore_dto 
    # @return [BackupProgressWrapper]
    def start_backup_restore(opts = {})
      data, _status_code, _headers = start_backup_restore_with_http_info(opts)
      data
    end

    # Start the restoring process
    # Starts the data restoring process of the current portal with the parameters specified in the request.
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
