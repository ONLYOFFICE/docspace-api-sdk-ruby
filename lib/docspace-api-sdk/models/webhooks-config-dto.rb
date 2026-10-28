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
  # One webhook subscription of the portal: where deliveries go, which events they cover, and how they have fared.
  class WebhooksConfigDto < ApiModelBase
    # The identifier of the subscription, which is what `PUT api/2.0/settings/webhook`,  `DELETE api/2.0/settings/webhook/{id}` and the `configId` filter of the delivery log address it by.
    attr_accessor :id

    # The label the subscription was given, free text with no meaning to the portal.
    attr_accessor :name

    # The address every delivery is posted to. The signing secret that lets the receiver verify a delivery is  never part of this answer, so it has to be kept from the moment the subscription was created.
    attr_accessor :uri

    # Whether the subscription is delivering. While it is `false` events are dropped rather than queued, so  nothing arrives late after it is switched back on.
    attr_accessor :enabled

    # Whether the certificate of `uri` is verified before a delivery. While it is `false` a self-signed  certificate is accepted as well.
    attr_accessor :ssl

    # The events the subscription covers, as the bits of `GET api/2.0/settings/webhook/triggers` added  together. `0` is the catch-all and means every event, not none.
    attr_accessor :triggers

    # The single room or file the subscription is narrowed to, empty for a subscription that covers the whole  portal. It is kept as an opaque value, so both a numeric and a third-party identifier can appear.
    attr_accessor :target_id

    # The member who created the subscription, which is also who a non-administrator is limited to seeing. It is  empty for a subscription created by a portal background job.
    attr_accessor :created_by

    # When the subscription was created, in the portal time zone.
    attr_accessor :created_on

    # The member who last changed the subscription, empty while nobody has changed it since it was created.
    attr_accessor :modified_by

    # When it was last changed, in the portal time zone, and empty under the same condition as `modifiedBy`.
    attr_accessor :modified_on

    # When a delivery last failed, in the portal time zone. It is empty for a subscription that has never  failed, and it is not cleared by a later success - compare it with `lastSuccessOn` to see which came last.
    attr_accessor :last_failure_on

    # What the target answered on that failure, truncated, for diagnosing without opening the delivery log. It  is empty when the failure produced no body at all, a timeout for instance.
    attr_accessor :last_failure_content

    # When a delivery last succeeded, in the portal time zone, empty for a subscription that has never  delivered. Both this and `lastFailureOn` being empty means nothing has been attempted yet.
    attr_accessor :last_success_on

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
        :'name' => :'name',
        :'uri' => :'uri',
        :'enabled' => :'enabled',
        :'ssl' => :'ssl',
        :'triggers' => :'triggers',
        :'target_id' => :'targetId',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'modified_by' => :'modifiedBy',
        :'modified_on' => :'modifiedOn',
        :'last_failure_on' => :'lastFailureOn',
        :'last_failure_content' => :'lastFailureContent',
        :'last_success_on' => :'lastSuccessOn'
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
        :'name' => :'String',
        :'uri' => :'String',
        :'enabled' => :'Boolean',
        :'ssl' => :'Boolean',
        :'triggers' => :'WebhookTrigger',
        :'target_id' => :'String',
        :'created_by' => :'EmployeeDto',
        :'created_on' => :'Time',
        :'modified_by' => :'EmployeeDto',
        :'modified_on' => :'Time',
        :'last_failure_on' => :'Time',
        :'last_failure_content' => :'String',
        :'last_success_on' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'uri',
        :'target_id',
        :'created_on',
        :'modified_on',
        :'last_failure_on',
        :'last_failure_content',
        :'last_success_on'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WebhooksConfigDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WebhooksConfigDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'ssl')
        self.ssl = attributes[:'ssl']
      end

      if attributes.key?(:'triggers')
        self.triggers = attributes[:'triggers']
      end

      if attributes.key?(:'target_id')
        self.target_id = attributes[:'target_id']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'modified_by')
        self.modified_by = attributes[:'modified_by']
      end

      if attributes.key?(:'modified_on')
        self.modified_on = attributes[:'modified_on']
      end

      if attributes.key?(:'last_failure_on')
        self.last_failure_on = attributes[:'last_failure_on']
      end

      if attributes.key?(:'last_failure_content')
        self.last_failure_content = attributes[:'last_failure_content']
      end

      if attributes.key?(:'last_success_on')
        self.last_success_on = attributes[:'last_success_on']
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
          name == o.name &&
          uri == o.uri &&
          enabled == o.enabled &&
          ssl == o.ssl &&
          triggers == o.triggers &&
          target_id == o.target_id &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          modified_by == o.modified_by &&
          modified_on == o.modified_on &&
          last_failure_on == o.last_failure_on &&
          last_failure_content == o.last_failure_content &&
          last_success_on == o.last_success_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, uri, enabled, ssl, triggers, target_id, created_by, created_on, modified_by, modified_on, last_failure_on, last_failure_content, last_success_on].hash
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
