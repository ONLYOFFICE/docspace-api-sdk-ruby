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
  # The Firebase user parameters.
  class FireBaseUser < ApiModelBase
    # The Firebase user ID.
    attr_accessor :id

    # The user ID.
    attr_accessor :user_id

    # The tenant ID.
    attr_accessor :tenant_id

    # The Firebase device token.
    attr_accessor :firebase_device_token

    # The Firebase application.
    attr_accessor :application

    # Specifies if the user is subscribed to the push notifications or not.
    attr_accessor :is_subscribed

    # The database tenant parameters.
    attr_accessor :tenant

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userId',
        :'tenant_id' => :'tenantId',
        :'firebase_device_token' => :'firebaseDeviceToken',
        :'application' => :'application',
        :'is_subscribed' => :'isSubscribed',
        :'tenant' => :'tenant'
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
        :'user_id' => :'String',
        :'tenant_id' => :'Integer',
        :'firebase_device_token' => :'String',
        :'application' => :'String',
        :'is_subscribed' => :'Boolean',
        :'tenant' => :'DbTenant'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'firebase_device_token',
        :'application',
        :'is_subscribed',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FireBaseUser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FireBaseUser`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'firebase_device_token')
        self.firebase_device_token = attributes[:'firebase_device_token']
      end

      if attributes.key?(:'application')
        self.application = attributes[:'application']
      end

      if attributes.key?(:'is_subscribed')
        self.is_subscribed = attributes[:'is_subscribed']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@firebase_device_token.nil? && @firebase_device_token.to_s.length > 255
        invalid_properties.push('invalid value for "firebase_device_token", the character length must be smaller than or equal to 255.')
      end

      if !@application.nil? && @application.to_s.length > 20
        invalid_properties.push('invalid value for "application", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@firebase_device_token.nil? && @firebase_device_token.to_s.length > 255
      return false if !@application.nil? && @application.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] firebase_device_token Value to be assigned
    def firebase_device_token=(firebase_device_token)
      if !firebase_device_token.nil? && firebase_device_token.to_s.length > 255
        fail ArgumentError, 'invalid value for "firebase_device_token", the character length must be smaller than or equal to 255.'
      end

      @firebase_device_token = firebase_device_token
    end

    # Custom attribute writer method with validation
    # @param [Object] application Value to be assigned
    def application=(application)
      if !application.nil? && application.to_s.length > 20
        fail ArgumentError, 'invalid value for "application", the character length must be smaller than or equal to 20.'
      end

      @application = application
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          tenant_id == o.tenant_id &&
          firebase_device_token == o.firebase_device_token &&
          application == o.application &&
          is_subscribed == o.is_subscribed &&
          tenant == o.tenant
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, tenant_id, firebase_device_token, application, is_subscribed, tenant].hash
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
