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
  # The SP advanced certificate parameters.
  class SsoSpCertificateAdvanced < ApiModelBase
    # The certificate signing algorithm.
    attr_accessor :signing_algorithm

    # Specifies if SP will sign the SAML authentication requests sent to IdP or not.
    attr_accessor :sign_auth_requests

    # Specifies if SP will sign the SAML logout requests sent to IdP or not.
    attr_accessor :sign_logout_requests

    # Specifies if SP will sign the SAML logout responses sent to IdP or not.
    attr_accessor :sign_logout_responses

    # The certificate encryption algorithm.
    attr_accessor :encrypt_algorithm

    # The certificate decryption algorithm.
    attr_accessor :decrypt_algorithm

    # Specifies if the assertions will be encrypted or not.
    attr_accessor :encrypt_assertions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'signing_algorithm' => :'signingAlgorithm',
        :'sign_auth_requests' => :'signAuthRequests',
        :'sign_logout_requests' => :'signLogoutRequests',
        :'sign_logout_responses' => :'signLogoutResponses',
        :'encrypt_algorithm' => :'encryptAlgorithm',
        :'decrypt_algorithm' => :'decryptAlgorithm',
        :'encrypt_assertions' => :'encryptAssertions'
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
        :'signing_algorithm' => :'String',
        :'sign_auth_requests' => :'Boolean',
        :'sign_logout_requests' => :'Boolean',
        :'sign_logout_responses' => :'Boolean',
        :'encrypt_algorithm' => :'String',
        :'decrypt_algorithm' => :'String',
        :'encrypt_assertions' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'signing_algorithm',
        :'encrypt_algorithm',
        :'decrypt_algorithm',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SsoSpCertificateAdvanced` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SsoSpCertificateAdvanced`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'signing_algorithm')
        self.signing_algorithm = attributes[:'signing_algorithm']
      end

      if attributes.key?(:'sign_auth_requests')
        self.sign_auth_requests = attributes[:'sign_auth_requests']
      end

      if attributes.key?(:'sign_logout_requests')
        self.sign_logout_requests = attributes[:'sign_logout_requests']
      end

      if attributes.key?(:'sign_logout_responses')
        self.sign_logout_responses = attributes[:'sign_logout_responses']
      end

      if attributes.key?(:'encrypt_algorithm')
        self.encrypt_algorithm = attributes[:'encrypt_algorithm']
      end

      if attributes.key?(:'decrypt_algorithm')
        self.decrypt_algorithm = attributes[:'decrypt_algorithm']
      end

      if attributes.key?(:'encrypt_assertions')
        self.encrypt_assertions = attributes[:'encrypt_assertions']
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
          signing_algorithm == o.signing_algorithm &&
          sign_auth_requests == o.sign_auth_requests &&
          sign_logout_requests == o.sign_logout_requests &&
          sign_logout_responses == o.sign_logout_responses &&
          encrypt_algorithm == o.encrypt_algorithm &&
          decrypt_algorithm == o.decrypt_algorithm &&
          encrypt_assertions == o.encrypt_assertions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [signing_algorithm, sign_auth_requests, sign_logout_requests, sign_logout_responses, encrypt_algorithm, decrypt_algorithm, encrypt_assertions].hash
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
