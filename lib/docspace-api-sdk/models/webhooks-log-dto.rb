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


require 'date'
require 'time'

module DocspaceApiSdk
  # One delivery of a webhook event, updated in place by its automatic retries: what was sent where, and what came  back the last time. A manual retry is a delivery record of its own for the same event.
  class WebhooksLogDto < ApiModelBase
    # The identifier of this delivery record, which is what `PUT api/2.0/settings/webhook/{id}/retry` re-sends.  The automatic retries of the delivery update this same record, while a manual retry gets a record and an  identifier of its own.
    attr_accessor :id

    # The identifier of the event the delivery is for, which the receiver sees as `event.id` and in the  `x-docspace-event-id` header. It is the `id` of the event's first delivery record, so it equals `id` there and  stays the same on every manual retry, which makes it the value to group the records of one event by.
    attr_accessor :event_id

    # The member who asked for this delivery with a manual retry. It is empty on the first delivery of an event,  which the portal sends by itself.
    attr_accessor :retried_by

    # The name of the subscription the delivery belongs to. It is the name as it stands now, so it follows a  later rename of the subscription rather than recording what it was called at the time.
    attr_accessor :config_name

    # The event that caused the delivery, as a single bit rather than a mask - a delivery is always for one  event, even though a subscription covers several.
    attr_accessor :trigger

    # When this delivery record was queued, as a UTC instant ending in `Z`. For the first delivery that is when the  event happened; for a manual retry it is the  moment of the retry. Records come back newest first by this moment.
    attr_accessor :creation_time

    # The HTTP method the delivery was sent with, which is `POST` for every webhook the portal sends.
    attr_accessor :method

    # The address the delivery is sent to: the subscription's URL as it stands now. The journal does not keep the  address of each attempt, so after the subscription's URL changes, an older record names the new one too.
    attr_accessor :route

    # The headers the portal sent, serialised as one string, including the signature header a receiver verifies  the payload with.
    attr_accessor :request_headers

    # The body the portal sent, which is the event payload as JSON text. It is stored as it was sent, so it  still describes the entity as it looked at the time of the event.
    attr_accessor :request_payload

    # The headers the target answered with on the latest attempt, serialised the same way as `requestHeaders`. It  is empty until an attempt is answered, and when the target was not reached.
    attr_accessor :response_headers

    # The body the target answered with on the latest attempt, truncated for storage. Empty under the same  conditions as `responseHeaders`, and also for a target that answers with no body at all. A record the portal  stopped without sending holds the portal's own note here instead - a text that starts with `Not sent:` and  gives the reason - which is not an answer of the target: on a record that never went out `status` is then `0`  and `responseHeaders` is empty, while on one stopped after failed attempts they still describe the last of them.
    attr_accessor :response_payload

    # The HTTP status code the target answered on the latest attempt. It is `0` while the first attempt is still  on its way and on one that never reached the target, so `0` is not a failure code - it is the absence of an  answer. While `nextAttemptOn` is set it is the status of the failed attempt that caused the retry.
    attr_accessor :status

    # When the successful answer came back, as a UTC instant ending in `Z` like `creationTime`. It stays empty until an  attempt succeeds, and for good once the portal has given up retrying.
    attr_accessor :delivery

    # How many times the portal has tried to deliver this record so far. A failed attempt is retried with  growing pauses - on the default schedule about 1 minute, 5 minutes, 30 minutes, 2, 5 and 10 hours, though  an installation may configure its own - all of them under the same record and the same  `x-docspace-event-id` header, so a receiver can drop a delivery it has already processed. The one exception  is a portal moved to another region while retries are pending: the moved records get new IDs, so the attempts  made there carry a new `x-docspace-event-id`.
    attr_accessor :attempts

    # When the next attempt is due, as a UTC instant ending in `Z` like `creationTime`. While an attempt is being sent  right now it holds the moment that attempt's lease expires, a few minutes ahead, rather than a scheduled retry;  it changes again once the attempt ends. Empty means no attempt will follow: the record is delivered, its retries  ran out, a manual retry of the same event took over from it, or the portal stopped it - because the subscription  was disabled or removed or its address rejected, the subscription's creator may no longer receive the event,  the stored body cannot be read or is in the payload format of a previous version, the portal is removed, the  record waited longer than the retry schedule allows, the portal was restored from a backup taken before the  record was answered, or the portal was moved to another region while the record was being sent. A stopped  record that was never attempted says why in `responsePayload`; one that was keeps the target's last answer there.
    attr_accessor :next_attempt_on

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'event_id' => :'eventId',
        :'retried_by' => :'retriedBy',
        :'config_name' => :'configName',
        :'trigger' => :'trigger',
        :'creation_time' => :'creationTime',
        :'method' => :'method',
        :'route' => :'route',
        :'request_headers' => :'requestHeaders',
        :'request_payload' => :'requestPayload',
        :'response_headers' => :'responseHeaders',
        :'response_payload' => :'responsePayload',
        :'status' => :'status',
        :'delivery' => :'delivery',
        :'attempts' => :'attempts',
        :'next_attempt_on' => :'nextAttemptOn'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'event_id' => :'Integer',
        :'retried_by' => :'EmployeeDto',
        :'config_name' => :'String',
        :'trigger' => :'WebhookTrigger',
        :'creation_time' => :'Time',
        :'method' => :'String',
        :'route' => :'String',
        :'request_headers' => :'String',
        :'request_payload' => :'String',
        :'response_headers' => :'String',
        :'response_payload' => :'String',
        :'status' => :'Integer',
        :'delivery' => :'Time',
        :'attempts' => :'Integer',
        :'next_attempt_on' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'config_name',
        :'method',
        :'route',
        :'request_headers',
        :'request_payload',
        :'response_headers',
        :'response_payload',
        :'delivery',
        :'next_attempt_on'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WebhooksLogDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WebhooksLogDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'retried_by')
        self.retried_by = attributes[:'retried_by']
      end

      if attributes.key?(:'config_name')
        self.config_name = attributes[:'config_name']
      end

      if attributes.key?(:'trigger')
        self.trigger = attributes[:'trigger']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'route')
        self.route = attributes[:'route']
      end

      if attributes.key?(:'request_headers')
        self.request_headers = attributes[:'request_headers']
      end

      if attributes.key?(:'request_payload')
        self.request_payload = attributes[:'request_payload']
      end

      if attributes.key?(:'response_headers')
        self.response_headers = attributes[:'response_headers']
      end

      if attributes.key?(:'response_payload')
        self.response_payload = attributes[:'response_payload']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'delivery')
        self.delivery = attributes[:'delivery']
      end

      if attributes.key?(:'attempts')
        self.attempts = attributes[:'attempts']
      end

      if attributes.key?(:'next_attempt_on')
        self.next_attempt_on = attributes[:'next_attempt_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          event_id == o.event_id &&
          retried_by == o.retried_by &&
          config_name == o.config_name &&
          trigger == o.trigger &&
          creation_time == o.creation_time &&
          method == o.method &&
          route == o.route &&
          request_headers == o.request_headers &&
          request_payload == o.request_payload &&
          response_headers == o.response_headers &&
          response_payload == o.response_payload &&
          status == o.status &&
          delivery == o.delivery &&
          attempts == o.attempts &&
          next_attempt_on == o.next_attempt_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, event_id, retried_by, config_name, trigger, creation_time, method, route, request_headers, request_payload, response_headers, response_payload, status, delivery, attempts, next_attempt_on].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

  end

end
