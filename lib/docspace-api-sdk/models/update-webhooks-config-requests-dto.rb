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
  # The request parameters for updating the webhook configuration.
  class UpdateWebhooksConfigRequestsDto < ApiModelBase
    # The human-readable name of the webhook configuration.
    attr_accessor :name

    # The destination URL where the webhook events will be sent.
    attr_accessor :uri

    # The webhook secret key used to sign the webhook payloads for the security verification.
    attr_accessor :secret_key

    # Specifies whether the webhook configuration is active or not.
    attr_accessor :enabled

    # Specifies whether the SSL certificate verification is required or not.
    attr_accessor :ssl

    # Defines which events will trigger webhook notifications.
    attr_accessor :triggers

    # Target ID
    attr_accessor :target_id

    # The webhook configuration ID.
    attr_accessor :id

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
        :'name' => :'name',
        :'uri' => :'uri',
        :'secret_key' => :'secretKey',
        :'enabled' => :'enabled',
        :'ssl' => :'ssl',
        :'triggers' => :'triggers',
        :'target_id' => :'targetId',
        :'id' => :'id'
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
        :'name' => :'String',
        :'uri' => :'String',
        :'secret_key' => :'String',
        :'enabled' => :'Boolean',
        :'ssl' => :'Boolean',
        :'triggers' => :'WebhookTrigger',
        :'target_id' => :'String',
        :'id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CreateWebhooksConfigRequestsDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UpdateWebhooksConfigRequestsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UpdateWebhooksConfigRequestsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'uri')
        self.uri = attributes[:'uri']
      else
        self.uri = nil
      end

      if attributes.key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 50
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 50.')
      end

      if @name.to_s.length < 0
        invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 0.')
      end

      if @uri.nil?
        invalid_properties.push('invalid value for "uri", uri cannot be nil.')
      end

      if @uri.to_s.length < 1
        invalid_properties.push('invalid value for "uri", the character length must be greater than or equal to 1.')
      end

      if !@secret_key.nil? && @secret_key.to_s.length > 50
        invalid_properties.push('invalid value for "secret_key", the character length must be smaller than or equal to 50.')
      end

      if !@secret_key.nil? && @secret_key.to_s.length < 0
        invalid_properties.push('invalid value for "secret_key", the character length must be greater than or equal to 0.')
      end

      if !@target_id.nil? && @target_id.to_s.length > 255
        invalid_properties.push('invalid value for "target_id", the character length must be smaller than or equal to 255.')
      end

      if !@target_id.nil? && @target_id.to_s.length < 0
        invalid_properties.push('invalid value for "target_id", the character length must be greater than or equal to 0.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @name.to_s.length < 0
      return false if @uri.nil?
      return false if @uri.to_s.length < 1
      return false if !@secret_key.nil? && @secret_key.to_s.length > 50
      return false if !@secret_key.nil? && @secret_key.to_s.length < 0
      return false if !@target_id.nil? && @target_id.to_s.length > 255
      return false if !@target_id.nil? && @target_id.to_s.length < 0
      return false if @id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 50
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 50.'
      end

      if name.to_s.length < 0
        fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 0.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] uri Value to be assigned
    def uri=(uri)
      if uri.nil?
        fail ArgumentError, 'uri cannot be nil'
      end

      if uri.to_s.length < 1
        fail ArgumentError, 'invalid value for "uri", the character length must be greater than or equal to 1.'
      end

      @uri = uri
    end

    # Custom attribute writer method with validation
    # @param [Object] secret_key Value to be assigned
    def secret_key=(secret_key)
      if secret_key.nil?
        fail ArgumentError, 'secret_key cannot be nil'
      end

      if secret_key.to_s.length > 50
        fail ArgumentError, 'invalid value for "secret_key", the character length must be smaller than or equal to 50.'
      end

      if secret_key.to_s.length < 0
        fail ArgumentError, 'invalid value for "secret_key", the character length must be greater than or equal to 0.'
      end

      @secret_key = secret_key
    end

    # Custom attribute writer method with validation
    # @param [Object] target_id Value to be assigned
    def target_id=(target_id)
      if target_id.nil?
        fail ArgumentError, 'target_id cannot be nil'
      end

      if target_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "target_id", the character length must be smaller than or equal to 255.'
      end

      if target_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "target_id", the character length must be greater than or equal to 0.'
      end

      @target_id = target_id
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
          name == o.name &&
          uri == o.uri &&
          secret_key == o.secret_key &&
          enabled == o.enabled &&
          ssl == o.ssl &&
          triggers == o.triggers &&
          target_id == o.target_id &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, uri, secret_key, enabled, ssl, triggers, target_id, id].hash
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
