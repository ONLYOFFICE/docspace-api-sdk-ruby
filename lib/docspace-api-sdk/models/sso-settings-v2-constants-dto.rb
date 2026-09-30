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
  # The SSO settings constants: every value the settings accept, by name.
  class SsoSettingsV2ConstantsDto < ApiModelBase
    # The values the `nameIdFormat` of the identity provider settings accepts. The built-in configuration uses  the SAML 2.0 transient format.
    attr_accessor :sso_name_id_format_type

    # The values the `ssoBinding` and `sloBinding` of the identity provider settings accept - how the portal  sends its sign-in and sign-out requests. The built-in configuration uses HTTP POST for both.
    attr_accessor :sso_binding_type

    # The values the `signingAlgorithm` of the service provider certificate and the `verifyAlgorithm` of the  identity provider certificate accept. The built-in configuration uses RSA-SHA1 for both.
    attr_accessor :sso_signing_algorithm_type

    # The values the `encryptAlgorithm` and `decryptAlgorithm` of the certificate settings accept. The built-in  configuration uses AES-128 everywhere.
    attr_accessor :sso_encrypt_algorithm_type

    # The values the `action` of a service provider certificate accepts, which is what the portal's own key  pair may be used for.
    attr_accessor :sso_sp_certificate_action_type

    # The values the `action` of an identity provider certificate accepts, which is what the provider's  certificate may be used for - the mirror image of the service provider actions.
    attr_accessor :sso_idp_certificate_action_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sso_name_id_format_type' => :'ssoNameIdFormatType',
        :'sso_binding_type' => :'ssoBindingType',
        :'sso_signing_algorithm_type' => :'ssoSigningAlgorithmType',
        :'sso_encrypt_algorithm_type' => :'ssoEncryptAlgorithmType',
        :'sso_sp_certificate_action_type' => :'ssoSpCertificateActionType',
        :'sso_idp_certificate_action_type' => :'ssoIdpCertificateActionType'
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
        :'sso_name_id_format_type' => :'SsoNameIdFormatTypeDto',
        :'sso_binding_type' => :'SsoBindingTypeDto',
        :'sso_signing_algorithm_type' => :'SsoSigningAlgorithmTypeDto',
        :'sso_encrypt_algorithm_type' => :'SsoEncryptAlgorithmTypeDto',
        :'sso_sp_certificate_action_type' => :'SsoSpCertificateActionTypeDto',
        :'sso_idp_certificate_action_type' => :'SsoIdpCertificateActionTypeDto'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SsoSettingsV2ConstantsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SsoSettingsV2ConstantsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sso_name_id_format_type')
        self.sso_name_id_format_type = attributes[:'sso_name_id_format_type']
      end

      if attributes.key?(:'sso_binding_type')
        self.sso_binding_type = attributes[:'sso_binding_type']
      end

      if attributes.key?(:'sso_signing_algorithm_type')
        self.sso_signing_algorithm_type = attributes[:'sso_signing_algorithm_type']
      end

      if attributes.key?(:'sso_encrypt_algorithm_type')
        self.sso_encrypt_algorithm_type = attributes[:'sso_encrypt_algorithm_type']
      end

      if attributes.key?(:'sso_sp_certificate_action_type')
        self.sso_sp_certificate_action_type = attributes[:'sso_sp_certificate_action_type']
      end

      if attributes.key?(:'sso_idp_certificate_action_type')
        self.sso_idp_certificate_action_type = attributes[:'sso_idp_certificate_action_type']
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
          sso_name_id_format_type == o.sso_name_id_format_type &&
          sso_binding_type == o.sso_binding_type &&
          sso_signing_algorithm_type == o.sso_signing_algorithm_type &&
          sso_encrypt_algorithm_type == o.sso_encrypt_algorithm_type &&
          sso_sp_certificate_action_type == o.sso_sp_certificate_action_type &&
          sso_idp_certificate_action_type == o.sso_idp_certificate_action_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sso_name_id_format_type, sso_binding_type, sso_signing_algorithm_type, sso_encrypt_algorithm_type, sso_sp_certificate_action_type, sso_idp_certificate_action_type].hash
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
