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
    # Creates a webhook subscription for the current portal: a target URL that the portal calls with a signed JSON  payload whenever one of the subscribed events happens. The target is checked before anything is stored: an  absolute `http` or `https` address outside the installation's own network that answers a HEAD request with a  success code, redirects not followed. `secretKey` is mandatory, has to satisfy the password rules of `GET  api/2.0/settings/security/password`, signs the payloads and never appears in a response. `triggers` is a bitmask  of the subscribed events, 0 standing for every event the creator's role may receive; a flag the caller's role may not use is rejected, so take  the allowed set from `GET api/2.0/settings/webhook/triggers`. `ssl` demands an `https` target with a valid  certificate, `false` leaves the certificate unchecked, and left out it is `true` for an `https` target and  `false` for an `http` one.  `targetId` limits the events to one entity, for user or group events a user or group the creator may see. A  subscription fires only while it is enabled, for events its creator may see and their current role may  subscribe to. Any role except `Guest` may create one, and each call adds another subscription.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestDto] :create_webhooks_config_request_dto 
    # @return [WebhooksConfigWrapper]
    def create_webhook(opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(opts)
      data
    end

    # Create a webhook
    # Creates a webhook subscription for the current portal: a target URL that the portal calls with a signed JSON  payload whenever one of the subscribed events happens. The target is checked before anything is stored: an  absolute `http` or `https` address outside the installation's own network that answers a HEAD request with a  success code, redirects not followed. `secretKey` is mandatory, has to satisfy the password rules of `GET  api/2.0/settings/security/password`, signs the payloads and never appears in a response. `triggers` is a bitmask  of the subscribed events, 0 standing for every event the creator's role may receive; a flag the caller's role may not use is rejected, so take  the allowed set from `GET api/2.0/settings/webhook/triggers`. `ssl` demands an `https` target with a valid  certificate, `false` leaves the certificate unchecked, and left out it is `true` for an `https` target and  `false` for an `http` one.  `targetId` limits the events to one entity, for user or group events a user or group the creator may see. A  subscription fires only while it is enabled, for events its creator may see and their current role may  subscribe to. Any role except `Guest` may create one, and each call adds another subscription.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestDto] :create_webhooks_config_request_dto 
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhooks_config_request_dto'])

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
    # Switches one webhook subscription on or off, leaving the rest of its parameters as they are. Only `id` and  `enabled` are read from the body: `name` and `uri` must be present because the schema requires them, but their  values are ignored here, as are `secretKey`, `ssl`, `triggers` and `targetId` when sent - change any of them  with `PUT api/2.0/settings/webhook` instead. Switching a subscription on re-checks what is already stored: the  saved URL is probed with a HEAD request, the saved secret is checked against the current password rules, and the saved triggers against the current role of the  subscription's creator. The call is refused with 400 when any of these fails, so a subscription whose target has  gone away cannot be switched on until it is updated. Switching one off is not validated. While a subscription is  off its events are dropped rather than queued. A `DocSpaceAdmin` may switch any subscription in the portal,  anyone else only their own, and a `Guest` is refused. The response carries the subscription in its new state,  and repeating the call changes nothing further.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestDto] :update_webhooks_config_request_dto 
    # @return [WebhooksConfigWrapper]
    def enable_webhook(opts = {})
      data, _status_code, _headers = enable_webhook_with_http_info(opts)
      data
    end

    # Switch a webhook on or off
    # Switches one webhook subscription on or off, leaving the rest of its parameters as they are. Only `id` and  `enabled` are read from the body: `name` and `uri` must be present because the schema requires them, but their  values are ignored here, as are `secretKey`, `ssl`, `triggers` and `targetId` when sent - change any of them  with `PUT api/2.0/settings/webhook` instead. Switching a subscription on re-checks what is already stored: the  saved URL is probed with a HEAD request, the saved secret is checked against the current password rules, and the saved triggers against the current role of the  subscription's creator. The call is refused with 400 when any of these fails, so a subscription whose target has  gone away cannot be switched on until it is updated. Switching one off is not validated. While a subscription is  off its events are dropped rather than queued. A `DocSpaceAdmin` may switch any subscription in the portal,  anyone else only their own, and a `Guest` is refused. The response carries the subscription in its new state,  and repeating the call changes nothing further.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestDto] :update_webhooks_config_request_dto 
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_request_dto'])

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
    # Returns the catalogue of events a webhook subscription can listen to, in the order the portal presents them:  user events, then group, file, folder, room, form and agent ones. Each entry carries the event name as it  appears in a payload, such as `file.created`, the bit value to put into the `triggers` bitmask of a  subscription, and `available`, telling whether the caller's own role may subscribe to that event at all: a  `User` cannot subscribe to the creation of users, groups or rooms, for instance, while a `RoomAdmin` can. Add  the bit values of the wanted events together to build `triggers`; the entry named `*` has the value 0 and  stands for every event the subscription creator's current role may subscribe to, so it is used on its own  rather than added. Events unavailable to the caller are listed all the same, but passing one to `POST  api/2.0/settings/webhook` or `PUT api/2.0/settings/webhook` is rejected as an invalid request. This is fixed  reference data: the same for every portal, not paginated, changing only with the product version, and readable  by any authenticated caller, a `Guest` included. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
    # @param [Hash] opts the optional parameters
    # @return [WebhookTriggerArrayWrapper]
    def get_webhook_triggers(opts = {})
      data, _status_code, _headers = get_webhook_triggers_with_http_info(opts)
      data
    end

    # Get the webhook triggers
    # Returns the catalogue of events a webhook subscription can listen to, in the order the portal presents them:  user events, then group, file, folder, room, form and agent ones. Each entry carries the event name as it  appears in a payload, such as `file.created`, the bit value to put into the `triggers` bitmask of a  subscription, and `available`, telling whether the caller's own role may subscribe to that event at all: a  `User` cannot subscribe to the creation of users, groups or rooms, for instance, while a `RoomAdmin` can. Add  the bit values of the wanted events together to build `triggers`; the entry named `*` has the value 0 and  stands for every event the subscription creator's current role may subscribe to, so it is used on its own  rather than added. Events unavailable to the caller are listed all the same, but passing one to `POST  api/2.0/settings/webhook` or `PUT api/2.0/settings/webhook` is rejected as an invalid request. This is fixed  reference data: the same for every portal, not paginated, changing only with the product version, and readable  by any authenticated caller, a `Guest` included. Nothing is written.
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
    # Returns the delivery log of the portal webhooks, one record per delivery of an event, updated in place by its  automatic retries: the trigger, the request and response headers and bodies, the HTTP `status` of the latest  attempt, 0 while no answer has come back, and the `delivery` moment, empty until an attempt succeeds. `attempts`  counts the tries so far and `nextAttemptOn` is set while another one is due. A manual retry adds a record of its  own, with a new `id`, the same `eventId` and the member in `retriedBy`. Records come newest first, paged with  `startIndex` and `count`, at most 100 at a time, with the number of matches as `total`. Filters combine with  AND: `deliveryFrom` and `deliveryTo` bound the delivery moment, `hookUri` matches the subscription URL exactly,  `configId` picks one subscription, `groupStatus` keeps the status classes it names (0 means no filter), and  `trigger` one event type (0 means all). `eventId` keeps every record of one event; the `id` of a record a manual  retry returned keeps that record alone. `userId` filters by the creator of the subscription and is forced to the  caller for anyone but a `DocSpaceAdmin`. A `Guest` is refused. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The earliest delivery moment a record may carry. Records of attempts still on their way have no delivery  moment yet and fall outside any bound set here.
    # @option opts [Time] :delivery_to The latest delivery moment a record may carry. All the filters combine with AND, so it narrows whatever the  other ones already kept.
    # @option opts [String] :hook_uri The subscription target address, matched in full rather than as a prefix. Filtering by `configId` is the  reliable way to pick one subscription, since several may share an address.
    # @option opts [Integer] :config_id The subscription whose deliveries are kept, by the `id` that `GET api/2.0/settings/webhook` reports.
    # @option opts [Integer] :event_id One event, by the `eventId` of its delivery records, which is also the `event.id` the receiver got.
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
    # Returns the delivery log of the portal webhooks, one record per delivery of an event, updated in place by its  automatic retries: the trigger, the request and response headers and bodies, the HTTP `status` of the latest  attempt, 0 while no answer has come back, and the `delivery` moment, empty until an attempt succeeds. `attempts`  counts the tries so far and `nextAttemptOn` is set while another one is due. A manual retry adds a record of its  own, with a new `id`, the same `eventId` and the member in `retriedBy`. Records come newest first, paged with  `startIndex` and `count`, at most 100 at a time, with the number of matches as `total`. Filters combine with  AND: `deliveryFrom` and `deliveryTo` bound the delivery moment, `hookUri` matches the subscription URL exactly,  `configId` picks one subscription, `groupStatus` keeps the status classes it names (0 means no filter), and  `trigger` one event type (0 means all). `eventId` keeps every record of one event; the `id` of a record a manual  retry returned keeps that record alone. `userId` filters by the creator of the subscription and is forced to the  caller for anyone but a `DocSpaceAdmin`. A `Guest` is refused. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The earliest delivery moment a record may carry. Records of attempts still on their way have no delivery  moment yet and fall outside any bound set here.
    # @option opts [Time] :delivery_to The latest delivery moment a record may carry. All the filters combine with AND, so it narrows whatever the  other ones already kept.
    # @option opts [String] :hook_uri The subscription target address, matched in full rather than as a prefix. Filtering by `configId` is the  reliable way to pick one subscription, since several may share an address.
    # @option opts [Integer] :config_id The subscription whose deliveries are kept, by the `id` that `GET api/2.0/settings/webhook` reports.
    # @option opts [Integer] :event_id One event, by the `eventId` of its delivery records, which is also the `event.id` the receiver got.
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
    # Sends one past webhook delivery again to its subscription. The `id` in the path is that of a delivery record  from `GET api/2.0/settings/webhooks/log`, not of a subscription. A `DocSpaceAdmin` may retry any delivery in the  portal, anyone else only deliveries of the subscriptions they created, and a `Guest` is refused. The work is  asynchronous: a new delivery record is queued and returned with its own `id`, the `eventId` of the retried one  and the caller in `retriedBy`; the retried record keeps its outcome, and automatic retries still due for the  event stop. The receiver gets the same `event.id` and `x-docspace-event-id` header in a body serialized and  signed anew. To learn the outcome, read the log with `eventId` set to the returned `id` until `nextAttemptOn` is  empty: `delivery` is then set on success and empty when the portal gave up after its automatic retries (on the  default schedule, six more tries over about 18 hours). An `id` of 0 gives 400 and an unknown one 404. 409 means  nothing was queued: a delivery of the event is being sent right now, the subscription is disabled, or the record  predates the current delivery format. Rate limited with 429.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
    # @param id [Integer] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [WebhooksLogWrapper]
    def retry_webhook(id, opts = {})
      data, _status_code, _headers = retry_webhook_with_http_info(id, opts)
      data
    end

    # Retry a webhook delivery
    # Sends one past webhook delivery again to its subscription. The `id` in the path is that of a delivery record  from `GET api/2.0/settings/webhooks/log`, not of a subscription. A `DocSpaceAdmin` may retry any delivery in the  portal, anyone else only deliveries of the subscriptions they created, and a `Guest` is refused. The work is  asynchronous: a new delivery record is queued and returned with its own `id`, the `eventId` of the retried one  and the caller in `retriedBy`; the retried record keeps its outcome, and automatic retries still due for the  event stop. The receiver gets the same `event.id` and `x-docspace-event-id` header in a body serialized and  signed anew. To learn the outcome, read the log with `eventId` set to the returned `id` until `nextAttemptOn` is  empty: `delivery` is then set on success and empty when the portal gave up after its automatic retries (on the  default schedule, six more tries over about 18 hours). An `id` of 0 gives 400 and an unknown one 404. 409 means  nothing was queued: a delivery of the event is being sent right now, the subscription is disabled, or the record  predates the current delivery format. Rate limited with 429.
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
    # Sends a batch of past webhook deliveries again. `ids` holds identifiers of delivery records from `GET  api/2.0/settings/webhooks/log`; for each one a new delivery record of the same event is queued, with its own  `id`, the retried record's `eventId` and the caller in `retriedBy`, and the response lists those new records.  Each event is retried once per call, so a second identifier of the same event is passed over. Records that do  not exist, records of another member's subscription when the caller is not a `DocSpaceAdmin`, and records  that cannot be queued now (an event being sent right now, a disabled subscription, a record older than the  current delivery format) are skipped in silence, so compare the response with `ids`; an empty `ids` queues  nothing. A `Guest` is refused. Each receiver gets the same `event.id` and `x-docspace-event-id` header in a  body serialized and signed anew. The work is asynchronous: read the log with `eventId` for each returned  identifier until `nextAttemptOn` is empty; a set `delivery` then means success, an empty one that the portal  gave up. At most 100 identifiers per call, rate limited with 429. `PUT api/2.0/settings/webhook/{id}/retry`  reports why a single record was not queued.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestDto] :webhook_retry_request_dto 
    # @return [WebhooksLogArrayWrapper]
    def retry_webhooks(opts = {})
      data, _status_code, _headers = retry_webhooks_with_http_info(opts)
      data
    end

    # Retry webhook deliveries
    # Sends a batch of past webhook deliveries again. `ids` holds identifiers of delivery records from `GET  api/2.0/settings/webhooks/log`; for each one a new delivery record of the same event is queued, with its own  `id`, the retried record's `eventId` and the caller in `retriedBy`, and the response lists those new records.  Each event is retried once per call, so a second identifier of the same event is passed over. Records that do  not exist, records of another member's subscription when the caller is not a `DocSpaceAdmin`, and records  that cannot be queued now (an event being sent right now, a disabled subscription, a record older than the  current delivery format) are skipped in silence, so compare the response with `ids`; an empty `ids` queues  nothing. A `Guest` is refused. Each receiver gets the same `event.id` and `x-docspace-event-id` header in a  body serialized and signed anew. The work is asynchronous: read the log with `eventId` for each returned  identifier until `nextAttemptOn` is empty; a set `delivery` then means success, an empty one that the portal  gave up. At most 100 identifiers per call, rate limited with 429. `PUT api/2.0/settings/webhook/{id}/retry`  reports why a single record was not queued.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestDto] :webhook_retry_request_dto 
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'webhook_retry_request_dto'])

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
    # Replaces the stored parameters of one webhook subscription, addressed by `id` in the body rather than in the  path. Every field of the request overwrites the stored one, so a payload that leaves out `enabled`, `triggers`  or `targetId` resets them to off, the catch-all `0` and no target: read the current values with `GET  api/2.0/settings/webhook` first and send back whatever should stay. `secretKey` and `ssl` are the exceptions:  an empty `secretKey` keeps the existing secret, a new one having to satisfy the portal password rules, and a  left-out `ssl` keeps the stored setting, so pass it explicitly when moving the target between `http` and  `https`. A `DocSpaceAdmin`  may update any subscription in the portal, anyone else only their own, and a `Guest` is refused. Once the body  passes the schema checks (a missing `name` or `uri` gives 400 first), an unknown `id` gives 404 and another  member's subscription 403 before the target, the secret and the triggers are checked. The payload is then validated  as on creation, except that trigger flags are checked against the role of the subscription's creator rather than  the caller's. Sending the same payload twice leaves the same state. Use `PUT api/2.0/settings/webhook/enable` to  switch a subscription on or off without touching anything else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestDto] :update_webhooks_config_request_dto 
    # @return [WebhooksConfigWrapper]
    def update_webhook(opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(opts)
      data
    end

    # Update a webhook
    # Replaces the stored parameters of one webhook subscription, addressed by `id` in the body rather than in the  path. Every field of the request overwrites the stored one, so a payload that leaves out `enabled`, `triggers`  or `targetId` resets them to off, the catch-all `0` and no target: read the current values with `GET  api/2.0/settings/webhook` first and send back whatever should stay. `secretKey` and `ssl` are the exceptions:  an empty `secretKey` keeps the existing secret, a new one having to satisfy the portal password rules, and a  left-out `ssl` keeps the stored setting, so pass it explicitly when moving the target between `http` and  `https`. A `DocSpaceAdmin`  may update any subscription in the portal, anyone else only their own, and a `Guest` is refused. Once the body  passes the schema checks (a missing `name` or `uri` gives 400 first), an unknown `id` gives 404 and another  member's subscription 403 before the target, the secret and the triggers are checked. The payload is then validated  as on creation, except that trigger flags are checked against the role of the subscription's creator rather than  the caller's. Sending the same payload twice leaves the same state. Use `PUT api/2.0/settings/webhook/enable` to  switch a subscription on or off without touching anything else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestDto] :update_webhooks_config_request_dto 
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_request_dto'])

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
