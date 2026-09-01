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
  # The OAuth 2.0 token issued by a third-party provider.
  class OAuth20Token < ApiModelBase
    # Access token
    attr_accessor :access_token

    # Refresh token
    attr_accessor :refresh_token

    # Expires in
    attr_accessor :expires_in

    # Client id
    attr_accessor :client_id

    # Client secret
    attr_accessor :client_secret

    # Redirect uri
    attr_accessor :redirect_uri

    # Timestamp
    attr_accessor :timestamp

    # Is expired
    attr_accessor :is_expired

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_token' => :'access_token',
        :'refresh_token' => :'refresh_token',
        :'expires_in' => :'expires_in',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'redirect_uri' => :'redirect_uri',
        :'timestamp' => :'timestamp',
        :'is_expired' => :'isExpired'
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
        :'access_token' => :'String',
        :'refresh_token' => :'String',
        :'expires_in' => :'Integer',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'redirect_uri' => :'String',
        :'timestamp' => :'Time',
        :'is_expired' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'access_token',
        :'refresh_token',
        :'client_id',
        :'client_secret',
        :'redirect_uri',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::OAuth20Token` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::OAuth20Token`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access_token')
        self.access_token = attributes[:'access_token']
      end

      if attributes.key?(:'refresh_token')
        self.refresh_token = attributes[:'refresh_token']
      end

      if attributes.key?(:'expires_in')
        self.expires_in = attributes[:'expires_in']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'redirect_uri')
        self.redirect_uri = attributes[:'redirect_uri']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'is_expired')
        self.is_expired = attributes[:'is_expired']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_token == o.access_token &&
          refresh_token == o.refresh_token &&
          expires_in == o.expires_in &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          redirect_uri == o.redirect_uri &&
          timestamp == o.timestamp &&
          is_expired == o.is_expired
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [access_token, refresh_token, expires_in, client_id, client_secret, redirect_uri, timestamp, is_expired].hash
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
