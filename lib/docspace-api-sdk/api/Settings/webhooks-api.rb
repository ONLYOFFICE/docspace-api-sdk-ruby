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
  module Settings
    class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook
    # Creates a webhook subscription for the current portal: a target URL that the portal calls with a signed JSON  payload whenever one of the subscribed events happens. The target is checked before anything is stored, so it  has to be an absolute `http` or `https` address outside the installation's own network, and it has to answer a  HEAD request with a success code, redirects not being followed. `secretKey` is mandatory here, has to satisfy  the portal password rules published by `GET api/2.0/settings/security/password`, and signs the payloads; it  does not appear in any response. `triggers` is a bitmask of the subscribed events with 0 standing for all of  them; a flag the caller's role may not use is rejected, so take the allowed set from  `GET api/2.0/settings/webhook/triggers`. `ssl=true` additionally demands an `https` target with a valid  certificate, while `ssl=false` leaves the certificate unchecked. Set `targetId` to deliver events about a  single entity only. A subscription fires only for events its creator is allowed to see, and only while it is  enabled. Any role except `Guest` may create one, and each call adds another subscription rather than replacing  an existing one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestsDto] :create_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def create_webhook(opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(opts)
      data
    end

    # Create a webhook
    # Creates a webhook subscription for the current portal: a target URL that the portal calls with a signed JSON  payload whenever one of the subscribed events happens. The target is checked before anything is stored, so it  has to be an absolute `http` or `https` address outside the installation's own network, and it has to answer a  HEAD request with a success code, redirects not being followed. `secretKey` is mandatory here, has to satisfy  the portal password rules published by `GET api/2.0/settings/security/password`, and signs the payloads; it  does not appear in any response. `triggers` is a bitmask of the subscribed events with 0 standing for all of  them; a flag the caller's role may not use is rejected, so take the allowed set from  `GET api/2.0/settings/webhook/triggers`. `ssl=true` additionally demands an `https` target with a valid  certificate, while `ssl=false` leaves the certificate unchecked. Set `targetId` to deliver events about a  single entity only. A subscription fires only for events its creator is allowed to see, and only while it is  enabled. Any role except `Guest` may create one, and each call adds another subscription rather than replacing  an existing one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestsDto] :create_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def create_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.create_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Switch a webhook on or off
    # Switches one webhook subscription on or off, leaving the rest of its parameters as they are. Only `id` and  `enabled` are read from the body: `name`, `uri`, `secretKey`, `ssl`, `triggers` and `targetId` are demanded by  the schema but ignored here, so change any of them with `PUT api/2.0/settings/webhook` instead. Switching a  subscription on re-checks what is already stored, probing the saved URL with a HEAD request and re-validating  the saved secret against the current portal password rules, and the call is refused with 400 when either  fails: a subscription whose target has gone away, or whose secret predates a tightening of the password rules,  cannot be switched on until it is updated. Switching one off is not validated. While a subscription is off its  events are dropped rather than queued, so nothing arrives from that period once it is switched on again. A  `DocSpaceAdmin` may switch any subscription in the portal, anyone else only their own, and a `Guest` is  refused. The response carries the subscription in its new state, and repeating the call changes nothing  further.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def enable_webhook(opts = {})
      data, _status_code, _headers = enable_webhook_with_http_info(opts)
      data
    end

    # Switch a webhook on or off
    # Switches one webhook subscription on or off, leaving the rest of its parameters as they are. Only `id` and  `enabled` are read from the body: `name`, `uri`, `secretKey`, `ssl`, `triggers` and `targetId` are demanded by  the schema but ignored here, so change any of them with `PUT api/2.0/settings/webhook` instead. Switching a  subscription on re-checks what is already stored, probing the saved URL with a HEAD request and re-validating  the saved secret against the current portal password rules, and the call is refused with 400 when either  fails: a subscription whose target has gone away, or whose secret predates a tightening of the password rules,  cannot be switched on until it is updated. Switching one off is not validated. While a subscription is off its  events are dropped rather than queued, so nothing arrives from that period once it is switched on again. A  `DocSpaceAdmin` may switch any subscription in the portal, anyone else only their own, and a `Guest` is  refused. The response carries the subscription in its new state, and repeating the call changes nothing  further.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def enable_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.enable_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/enable'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.enable_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#enable_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal webhooks
    # Returns the webhook subscriptions of the current portal, each together with the outcome of its most recent  delivery. The portal owner and a `DocSpaceAdmin` see every subscription in the portal, while a `RoomAdmin` or  a `User` sees only the ones they created themselves, so the same call answers differently depending on who  asks. A `Guest` may not use webhooks at all and is refused, and so is any non-admin caller while the portal  keeps the developer tools restricted, which `GET api/2.0/settings/devtoolsaccess` reports. Every entry pairs  the stored configuration with `status`, the HTTP status code the target answered on the last attempt, where 0  means nothing has been delivered yet, while the secret key is not part of the response. The list is neither  paginated nor ordered, and an empty list simply means no subscription exists for the caller. Nothing is  written and the call is safe to repeat. Create a subscription with `POST api/2.0/settings/webhook`, and  inspect single deliveries with `GET api/2.0/settings/webhooks/log`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/
    # @param [Hash] opts the optional parameters
    # @return [WebhooksConfigWithStatusArrayWrapper]
    def get_tenant_webhooks(opts = {})
      data, _status_code, _headers = get_tenant_webhooks_with_http_info(opts)
      data
    end

    # Get the portal webhooks
    # Returns the webhook subscriptions of the current portal, each together with the outcome of its most recent  delivery. The portal owner and a `DocSpaceAdmin` see every subscription in the portal, while a `RoomAdmin` or  a `User` sees only the ones they created themselves, so the same call answers differently depending on who  asks. A `Guest` may not use webhooks at all and is refused, and so is any non-admin caller while the portal  keeps the developer tools restricted, which `GET api/2.0/settings/devtoolsaccess` reports. Every entry pairs  the stored configuration with `status`, the HTTP status code the target answered on the last attempt, where 0  means nothing has been delivered yet, while the secret key is not part of the response. The list is neither  paginated nor ordered, and an empty list simply means no subscription exists for the caller. Nothing is  written and the call is safe to repeat. Create a subscription with `POST api/2.0/settings/webhook`, and  inspect single deliveries with `GET api/2.0/settings/webhooks/log`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksConfigWithStatusArrayWrapper, Integer, Hash)>] WebhooksConfigWithStatusArrayWrapper data, response status code and response headers
    def get_tenant_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_tenant_webhooks ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      return_type = opts[:debug_return_type] || 'WebhooksConfigWithStatusArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_tenant_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_tenant_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the webhook triggers
    # Returns the catalogue of events a webhook subscription can listen to, in the order the portal presents them:  user events, then group, file, folder, room, form and agent ones. Each entry carries the event name as it  appears in a payload, such as `file.created`, the bit value to put into the `triggers` bitmask of a  subscription, and `available`, telling whether the caller's own role may subscribe to that event at all: a  `User` cannot subscribe to the creation of users, groups or rooms, for instance, while a `RoomAdmin` can. Add  the bit values of the wanted events together to build `triggers`; the entry named `*` has the value 0 and  stands for every event, so it is used on its own rather than added. Events unavailable to the caller are  listed all the same, but passing one to `POST api/2.0/settings/webhook` or `PUT api/2.0/settings/webhook` is  rejected as an invalid request. This is fixed reference data: the same for every portal, not paginated,  changing only with the product version, and readable by any authenticated caller, a `Guest` included. Nothing  is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
    # @param [Hash] opts the optional parameters
    # @return [WebhookTriggerArrayWrapper]
    def get_webhook_triggers(opts = {})
      data, _status_code, _headers = get_webhook_triggers_with_http_info(opts)
      data
    end

    # Get the webhook triggers
    # Returns the catalogue of events a webhook subscription can listen to, in the order the portal presents them:  user events, then group, file, folder, room, form and agent ones. Each entry carries the event name as it  appears in a payload, such as `file.created`, the bit value to put into the `triggers` bitmask of a  subscription, and `available`, telling whether the caller's own role may subscribe to that event at all: a  `User` cannot subscribe to the creation of users, groups or rooms, for instance, while a `RoomAdmin` can. Add  the bit values of the wanted events together to build `triggers`; the entry named `*` has the value 0 and  stands for every event, so it is used on its own rather than added. Events unavailable to the caller are  listed all the same, but passing one to `POST api/2.0/settings/webhook` or `PUT api/2.0/settings/webhook` is  rejected as an invalid request. This is fixed reference data: the same for every portal, not paginated,  changing only with the product version, and readable by any authenticated caller, a `Guest` included. Nothing  is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookTriggerArrayWrapper, Integer, Hash)>] WebhookTriggerArrayWrapper data, response status code and response headers
    def get_webhook_triggers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_webhook_triggers ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/triggers'

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
      return_type = opts[:debug_return_type] || 'WebhookTriggerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_webhook_triggers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_webhook_triggers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the webhook delivery log
    # Returns the delivery records of the portal webhooks, one record per attempt, carrying the trigger, the request  and response headers and bodies, the HTTP `status` the target answered and the `delivery` moment, the last two  staying empty while an attempt is still on its way. Records come newest first and are paged with `startIndex`  and `count`, at most 100 at a time, while the number of records matching the filter is reported as `total`  beside the response. Filters combine with AND: `deliveryFrom` and `deliveryTo` bound the delivery moment,  `hookUri` matches the subscription URL exactly, `configId` picks one subscription, `eventId` one single  record, `groupStatus` keeps only the answered status classes it names with 0 meaning no status filter, and  `trigger` narrows to one event with 0 meaning all of them. `userId` filters by who created the subscription  rather than by who caused the event, and for a caller who is not a `DocSpaceAdmin` it is forced to the caller,  so a non-admin only ever sees deliveries of their own subscriptions. A `Guest` is refused. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The earliest delivery moment a record may carry. Records of attempts still on their way have no delivery  moment yet and fall outside any bound set here.
    # @option opts [Time] :delivery_to The latest delivery moment a record may carry. All the filters combine with AND, so it narrows whatever the  other ones already kept.
    # @option opts [String] :hook_uri The subscription target address, matched in full rather than as a prefix. Filtering by `configId` is the  reliable way to pick one subscription, since several may share an address.
    # @option opts [Integer] :config_id The subscription whose deliveries are kept, by the `id` that `GET api/2.0/settings/webhook` reports.
    # @option opts [Integer] :event_id A single delivery record, by its own identifier. It narrows the answer to that one record, which is how a  client follows up a retry it queued earlier.
    # @option opts [WebhookGroupStatus] :group_status The classes of answered status to keep, as a bitmask; 0 keeps every record whatever the target answered.
    # @option opts [String] :user_id The member whose subscriptions the records belong to, by portal user ID - who created the subscription, not  who caused the event. For a caller who is not a DocSpace administrator it is overwritten with the caller own  ID, so such a caller never sees another member deliveries whatever is sent here.
    # @option opts [WebhookTrigger] :trigger The single event kind to keep; 0 keeps every kind. It names one trigger rather than a mask of several, unlike  the `triggers` a subscription is created with.
    # @option opts [Integer] :count How many records one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them; the number of records matching the filter comes back as `total` beside the page.
    # @option opts [Integer] :start_index How many matching records to skip before the page begins, counting from the newest. Advance it by `count` to  walk back through the log.
    # @return [WebhooksLogArrayWrapper]
    def get_webhooks_logs(opts = {})
      data, _status_code, _headers = get_webhooks_logs_with_http_info(opts)
      data
    end

    # Get the webhook delivery log
    # Returns the delivery records of the portal webhooks, one record per attempt, carrying the trigger, the request  and response headers and bodies, the HTTP `status` the target answered and the `delivery` moment, the last two  staying empty while an attempt is still on its way. Records come newest first and are paged with `startIndex`  and `count`, at most 100 at a time, while the number of records matching the filter is reported as `total`  beside the response. Filters combine with AND: `deliveryFrom` and `deliveryTo` bound the delivery moment,  `hookUri` matches the subscription URL exactly, `configId` picks one subscription, `eventId` one single  record, `groupStatus` keeps only the answered status classes it names with 0 meaning no status filter, and  `trigger` narrows to one event with 0 meaning all of them. `userId` filters by who created the subscription  rather than by who caused the event, and for a caller who is not a `DocSpaceAdmin` it is forced to the caller,  so a non-admin only ever sees deliveries of their own subscriptions. A `Guest` is refused. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The earliest delivery moment a record may carry. Records of attempts still on their way have no delivery  moment yet and fall outside any bound set here.
    # @option opts [Time] :delivery_to The latest delivery moment a record may carry. All the filters combine with AND, so it narrows whatever the  other ones already kept.
    # @option opts [String] :hook_uri The subscription target address, matched in full rather than as a prefix. Filtering by `configId` is the  reliable way to pick one subscription, since several may share an address.
    # @option opts [Integer] :config_id The subscription whose deliveries are kept, by the `id` that `GET api/2.0/settings/webhook` reports.
    # @option opts [Integer] :event_id A single delivery record, by its own identifier. It narrows the answer to that one record, which is how a  client follows up a retry it queued earlier.
    # @option opts [WebhookGroupStatus] :group_status The classes of answered status to keep, as a bitmask; 0 keeps every record whatever the target answered.
    # @option opts [String] :user_id The member whose subscriptions the records belong to, by portal user ID - who created the subscription, not  who caused the event. For a caller who is not a DocSpace administrator it is overwritten with the caller own  ID, so such a caller never sees another member deliveries whatever is sent here.
    # @option opts [WebhookTrigger] :trigger The single event kind to keep; 0 keeps every kind. It names one trigger rather than a mask of several, unlike  the `triggers` a subscription is created with.
    # @option opts [Integer] :count How many records one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them; the number of records matching the filter comes back as `total` beside the page.
    # @option opts [Integer] :start_index How many matching records to skip before the page begins, counting from the newest. Advance it by `count` to  walk back through the log.
    # @return [Array<(WebhooksLogArrayWrapper, Integer, Hash)>] WebhooksLogArrayWrapper data, response status code and response headers
    def get_webhooks_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_webhooks_logs ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Settings::WebhooksApi.get_webhooks_logs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Settings::WebhooksApi.get_webhooks_logs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/settings/webhooks/log'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'deliveryFrom'] = opts[:'delivery_from'] if !opts[:'delivery_from'].nil?
      query_params[:'deliveryTo'] = opts[:'delivery_to'] if !opts[:'delivery_to'].nil?
      query_params[:'hookUri'] = opts[:'hook_uri'] if !opts[:'hook_uri'].nil?
      query_params[:'configId'] = opts[:'config_id'] if !opts[:'config_id'].nil?
      query_params[:'eventId'] = opts[:'event_id'] if !opts[:'event_id'].nil?
      query_params[:'groupStatus'] = opts[:'group_status'] if !opts[:'group_status'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'trigger'] = opts[:'trigger'] if !opts[:'trigger'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksLogArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_webhooks_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_webhooks_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a webhook
    # Removes one webhook subscription from the current portal for good, addressed by `id` in the path. Deliveries  stop with it: matching events are no longer queued, and there is no undo, so a subscription dropped by mistake  has to be created again with `POST api/2.0/settings/webhook`, which gives it a new identifier and needs a new  secret key. To pause deliveries without losing the configuration, switch the subscription off with  `PUT api/2.0/settings/webhook/enable` instead. A `DocSpaceAdmin` may remove any subscription in the portal,  anyone else only the ones they created, and a `Guest` may not use webhooks at all. The response repeats the  subscription as it was just before the removal, so the caller can record what disappeared, again without the  secret key. An identifier that no longer exists gives 404, which is what a second removal of the same  subscription answers as well, so a repeated call is harmless but reports the state truthfully rather than  pretending to succeed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
    # @param id [Integer] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [WebhooksConfigWrapper]
    def remove_webhook(id, opts = {})
      data, _status_code, _headers = remove_webhook_with_http_info(id, opts)
      data
    end

    # Remove a webhook
    # Removes one webhook subscription from the current portal for good, addressed by `id` in the path. Deliveries  stop with it: matching events are no longer queued, and there is no undo, so a subscription dropped by mistake  has to be created again with `POST api/2.0/settings/webhook`, which gives it a new identifier and needs a new  secret key. To pause deliveries without losing the configuration, switch the subscription off with  `PUT api/2.0/settings/webhook/enable` instead. A `DocSpaceAdmin` may remove any subscription in the portal,  anyone else only the ones they created, and a `Guest` may not use webhooks at all. The response repeats the  subscription as it was just before the removal, so the caller can record what disappeared, again without the  secret key. An identifier that no longer exists gives 404, which is what a second removal of the same  subscription answers as well, so a repeated call is harmless but reports the state truthfully rather than  pretending to succeed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
    # @param id [Integer] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def remove_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.remove_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::WebhooksApi.remove_webhook"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.remove_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#remove_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry a webhook delivery
    # Sends one past webhook delivery again. The `id` in the path is that of a delivery record from  `GET api/2.0/settings/webhooks/log`, not of a subscription, and the payload kept in that record is sent once  more to the subscription it belongs to. The work is asynchronous: a fresh delivery record is created and  queued at once, and the response describes that new record, with an identifier of its own and with `status`  and `delivery` not filled in yet. To learn the outcome, read `GET api/2.0/settings/webhooks/log` with  `eventId` set to the returned identifier until `delivery` appears. The original record stays as it is, and  every call queues one more attempt, so this is not safe to repeat blindly. A `DocSpaceAdmin` may retry any  delivery in the portal, anyone else only deliveries of the subscriptions they created, and a `Guest` is  refused. An `id` of 0 is rejected as an invalid request and an unknown one gives 404. The operation is rate  limited, so a burst of calls is answered with 429; to retry several records use  `PUT api/2.0/settings/webhook/retry`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
    # @param id [Integer] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [WebhooksLogWrapper]
    def retry_webhook(id, opts = {})
      data, _status_code, _headers = retry_webhook_with_http_info(id, opts)
      data
    end

    # Retry a webhook delivery
    # Sends one past webhook delivery again. The `id` in the path is that of a delivery record from  `GET api/2.0/settings/webhooks/log`, not of a subscription, and the payload kept in that record is sent once  more to the subscription it belongs to. The work is asynchronous: a fresh delivery record is created and  queued at once, and the response describes that new record, with an identifier of its own and with `status`  and `delivery` not filled in yet. To learn the outcome, read `GET api/2.0/settings/webhooks/log` with  `eventId` set to the returned identifier until `delivery` appears. The original record stays as it is, and  every call queues one more attempt, so this is not safe to repeat blindly. A `DocSpaceAdmin` may retry any  delivery in the portal, anyone else only deliveries of the subscriptions they created, and a `Guest` is  refused. An `id` of 0 is rejected as an invalid request and an unknown one gives 404. The operation is rate  limited, so a burst of calls is answered with 429; to retry several records use  `PUT api/2.0/settings/webhook/retry`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
    # @param id [Integer] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksLogWrapper, Integer, Hash)>] WebhooksLogWrapper data, response status code and response headers
    def retry_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.retry_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::WebhooksApi.retry_webhook"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/{id}/retry'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhooksLogWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.retry_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#retry_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry webhook deliveries
    # Sends a batch of past webhook deliveries again. `ids` holds the identifiers of delivery records from  `GET api/2.0/settings/webhooks/log`; each of them is sent once more to the subscription it belongs to as a  fresh delivery record, queued for asynchronous delivery, and the response lists those new records with  `status` and `delivery` not filled in yet. Records that do not exist, and records of another member's  subscription when the caller is not a `DocSpaceAdmin`, are skipped in silence instead of failing the call, so  a response shorter than `ids` is the only sign that something was left out: compare the counts rather than  assuming everything was queued. An empty `ids` list is accepted and queues nothing. Read the outcomes from  `GET api/2.0/settings/webhooks/log`, matching the returned identifiers with `eventId`. Every call queues  another round of attempts, and the original records stay as they are. A `Guest` is refused. The operation is  rate limited, so a burst of calls is answered with 429. For a single record  `PUT api/2.0/settings/webhook/{id}/retry` reports a missing or forbidden record instead of skipping it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestsDto] :webhook_retry_requests_dto 
    # @return [WebhooksLogArrayWrapper]
    def retry_webhooks(opts = {})
      data, _status_code, _headers = retry_webhooks_with_http_info(opts)
      data
    end

    # Retry webhook deliveries
    # Sends a batch of past webhook deliveries again. `ids` holds the identifiers of delivery records from  `GET api/2.0/settings/webhooks/log`; each of them is sent once more to the subscription it belongs to as a  fresh delivery record, queued for asynchronous delivery, and the response lists those new records with  `status` and `delivery` not filled in yet. Records that do not exist, and records of another member's  subscription when the caller is not a `DocSpaceAdmin`, are skipped in silence instead of failing the call, so  a response shorter than `ids` is the only sign that something was left out: compare the counts rather than  assuming everything was queued. An empty `ids` list is accepted and queues nothing. Read the outcomes from  `GET api/2.0/settings/webhooks/log`, matching the returned identifiers with `eventId`. Every call queues  another round of attempts, and the original records stay as they are. A `Guest` is refused. The operation is  rate limited, so a burst of calls is answered with 429. For a single record  `PUT api/2.0/settings/webhook/{id}/retry` reports a missing or forbidden record instead of skipping it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestsDto] :webhook_retry_requests_dto 
    # @return [Array<(WebhooksLogArrayWrapper, Integer, Hash)>] WebhooksLogArrayWrapper data, response status code and response headers
    def retry_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.retry_webhooks ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/retry'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'webhook_retry_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksLogArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.retry_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#retry_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # Replaces the stored parameters of one webhook subscription, which is addressed by `id` in the body rather than  in the path. Every field of the request overwrites the stored one, so a payload that leaves out `enabled`,  `ssl`, `triggers` or `targetId` resets them to off, all events and no target: read the current values with  `GET api/2.0/settings/webhook` first and send back whatever should stay. `secretKey` is the one exception, an  empty value keeping the existing secret and a new one having to satisfy the portal password rules. The new  target is validated exactly as on creation, that is it must sit outside the installation's own network and  answer a HEAD request, and trigger flags the caller's role may not use are rejected. That validation runs  before the subscription is looked up, so an unusable payload is refused with 400 even when no subscription  with this `id` exists. A `DocSpaceAdmin` may update any subscription in the portal, anyone else only their  own, and a `Guest` is refused. Sending the same payload twice leaves the same state. Use  `PUT api/2.0/settings/webhook/enable` to switch a subscription on or off without touching anything else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def update_webhook(opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(opts)
      data
    end

    # Update a webhook
    # Replaces the stored parameters of one webhook subscription, which is addressed by `id` in the body rather than  in the path. Every field of the request overwrites the stored one, so a payload that leaves out `enabled`,  `ssl`, `triggers` or `targetId` resets them to off, all events and no target: read the current values with  `GET api/2.0/settings/webhook` first and send back whatever should stay. `secretKey` is the one exception, an  empty value keeping the existing secret and a new one having to satisfy the portal password rules. The new  target is validated exactly as on creation, that is it must sit outside the installation's own network and  answer a HEAD request, and trigger flags the caller's role may not use are rejected. That validation runs  before the subscription is looked up, so an unusable payload is refused with 400 even when no subscription  with this `id` exists. A `DocSpaceAdmin` may update any subscription in the portal, anyone else only their  own, and a `Guest` is refused. Sending the same payload twice leaves the same state. Use  `PUT api/2.0/settings/webhook/enable` to switch a subscription on or off without touching anything else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def update_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.update_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
