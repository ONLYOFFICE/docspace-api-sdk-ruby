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
  # One delivery attempt of a webhook: what was sent where, and what came back.
  class WebhooksLogDto < ApiModelBase
    # The identifier of this attempt, which is what the `eventId` filter of  `GET api/2.0/settings/webhooks/log` picks one record by and what  `PUT api/2.0/settings/webhook/{id}/retry` re-sends. A retry produces a new record with a new identifier  and leaves this one as it is.
    attr_accessor :id

    # The name of the subscription the attempt belongs to. It is the name as it stands now, so it follows a  later rename of the subscription rather than recording what it was called at the time.
    attr_accessor :config_name

    # The event that caused the attempt, as a single bit rather than a mask - a delivery is always for one  event, even though a subscription covers several.
    attr_accessor :trigger

    # When the attempt was queued, as a UTC instant - unlike the dates of the subscription itself, which come  in the portal time zone. Records come back newest first by this moment.
    attr_accessor :creation_time

    # The HTTP method the delivery was sent with, which is `POST` for every webhook the portal sends.
    attr_accessor :method

    # The address the delivery was sent to, which is the subscription's URL as it stood at the time - so an  older record can name an address the subscription no longer uses.
    attr_accessor :route

    # The headers the portal sent, serialised as one string, including the signature header a receiver verifies  the payload with.
    attr_accessor :request_headers

    # The body the portal sent, which is the event payload as JSON text. It is stored as it was sent, so it  still describes the entity as it looked at the time of the event.
    attr_accessor :request_payload

    # The headers the target answered with, serialised the same way as `requestHeaders`. It is empty while the  attempt is still on its way and on an attempt that never reached the target.
    attr_accessor :response_headers

    # The body the target answered with, truncated for storage. Empty under the same conditions as  `responseHeaders`, and also for a target that answers with no body at all.
    attr_accessor :response_payload

    # The HTTP status code the target answered. It is `0` while the attempt is still on its way and on one that  never reached the target, so `0` is not a failure code - it is the absence of an answer.
    attr_accessor :status

    # When the answer came back, as a UTC instant like `creationTime`. It is empty while the attempt is still on  its way, which together with `status` is how a pending record is told from a finished one.
    attr_accessor :delivery

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
        :'delivery' => :'delivery'
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
        :'delivery' => :'Time'
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
        :'delivery'
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
          delivery == o.delivery
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, config_name, trigger, creation_time, method, route, request_headers, request_payload, response_headers, response_payload, status, delivery].hash
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
