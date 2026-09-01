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
  module Migration
    class MigrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel migration
    # Cancels the migration.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-migration/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_migration(opts = {})
      cancel_migration_with_http_info(opts)
      nil
    end

    # Cancel migration
    # Cancels the migration.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-migration/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_migration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.cancel_migration ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/cancel'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.cancel_migration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#cancel_migration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear migration
    # Clears the migration.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/clear-migration/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def clear_migration(opts = {})
      clear_migration_with_http_info(opts)
      nil
    end

    # Clear migration
    # Clears the migration.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/clear-migration/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def clear_migration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.clear_migration ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/clear'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.clear_migration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#clear_migration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finish migration
    # Finishes the migration process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finish-migration/
    # @param [Hash] opts the optional parameters
    # @option opts [FinishDto] :finish_dto 
    # @return [nil]
    def finish_migration(opts = {})
      finish_migration_with_http_info(opts)
      nil
    end

    # Finish migration
    # Finishes the migration process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finish-migration/
    # @param [Hash] opts the optional parameters
    # @option opts [FinishDto] :finish_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def finish_migration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.finish_migration ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/finish'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'finish_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.finish_migration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#finish_migration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get migration logs
    # Returns the migration logs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-logs/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_migration_logs(opts = {})
      get_migration_logs_with_http_info(opts)
      nil
    end

    # Get migration logs
    # Returns the migration logs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-logs/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_migration_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.get_migration_logs ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/logs'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.get_migration_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#get_migration_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get migration status
    # Returns the migration status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-status/
    # @param [Hash] opts the optional parameters
    # @return [MigrationStatusWrapper]
    def get_migration_status(opts = {})
      data, _status_code, _headers = get_migration_status_with_http_info(opts)
      data
    end

    # Get migration status
    # Returns the migration status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-status/
    # @param [Hash] opts the optional parameters
    # @return [Array<(MigrationStatusWrapper, Integer, Hash)>] MigrationStatusWrapper data, response status code and response headers
    def get_migration_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.get_migration_status ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/status'

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
      return_type = opts[:debug_return_type] || 'MigrationStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.get_migration_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#get_migration_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get migrations
    # Returns a list of available migrations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/list-migrations/
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def list_migrations(opts = {})
      data, _status_code, _headers = list_migrations_with_http_info(opts)
      data
    end

    # Get migrations
    # Returns a list of available migrations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/list-migrations/
    # @param [Hash] opts the optional parameters
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
    def list_migrations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.list_migrations ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/list'

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
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.list_migrations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#list_migrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start migration
    # Starts the migration process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-migration/
    # @param [Hash] opts the optional parameters
    # @option opts [MigrationApiInfo] :migration_api_info 
    # @return [nil]
    def start_migration(opts = {})
      start_migration_with_http_info(opts)
      nil
    end

    # Start migration
    # Starts the migration process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-migration/
    # @param [Hash] opts the optional parameters
    # @option opts [MigrationApiInfo] :migration_api_info 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def start_migration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.start_migration ...'
      end
      # resource path
      local_var_path = '/api/2.0/migration/migrate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'migration_api_info'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.start_migration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#start_migration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload and initialize migration
    # Uploads and initializes a migration with a migrator name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-and-initialize-migration/
    # @param migrator_name [String] The migrator name extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def upload_and_initialize_migration(migrator_name, opts = {})
      upload_and_initialize_migration_with_http_info(migrator_name, opts)
      nil
    end

    # Upload and initialize migration
    # Uploads and initializes a migration with a migrator name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-and-initialize-migration/
    # @param migrator_name [String] The migrator name extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def upload_and_initialize_migration_with_http_info(migrator_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Migration::MigrationApi.upload_and_initialize_migration ...'
      end
      # verify the required parameter 'migrator_name' is set
      if @api_client.config.client_side_validation && migrator_name.nil?
        fail ArgumentError, "Missing the required parameter 'migrator_name' when calling Migration::MigrationApi.upload_and_initialize_migration"
      end
      # resource path
      local_var_path = '/api/2.0/migration/init/{migratorName}'.sub('{' + 'migratorName' + '}', CGI.escape(migrator_name.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Migration::MigrationApi.upload_and_initialize_migration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Migration::MigrationApi#upload_and_initialize_migration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
