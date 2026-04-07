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
  # The SSO portal settings.
  class SsoSettingsV2 < ApiModelBase
    # The timestamp indicating when the settings were last modified.
    attr_accessor :last_modified

    # Specifies if the SSO settings are enabled or not.
    attr_accessor :enable_sso

    attr_accessor :idp_settings

    # The list of the IdP certificates.
    attr_accessor :idp_certificates

    attr_accessor :idp_certificate_advanced

    # The SP login label.
    attr_accessor :sp_login_label

    # The list of the SP certificates.
    attr_accessor :sp_certificates

    attr_accessor :sp_certificate_advanced

    attr_accessor :field_mapping

    # Specifies if the authentication page will be hidden or not.
    attr_accessor :hide_auth_page

    # The user type.
    attr_accessor :users_type

    # Specifies if the email verification is disabled or not.
    attr_accessor :disable_email_verification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'last_modified' => :'lastModified',
        :'enable_sso' => :'enableSso',
        :'idp_settings' => :'idpSettings',
        :'idp_certificates' => :'idpCertificates',
        :'idp_certificate_advanced' => :'idpCertificateAdvanced',
        :'sp_login_label' => :'spLoginLabel',
        :'sp_certificates' => :'spCertificates',
        :'sp_certificate_advanced' => :'spCertificateAdvanced',
        :'field_mapping' => :'fieldMapping',
        :'hide_auth_page' => :'hideAuthPage',
        :'users_type' => :'usersType',
        :'disable_email_verification' => :'disableEmailVerification'
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
        :'last_modified' => :'Time',
        :'enable_sso' => :'Boolean',
        :'idp_settings' => :'SsoIdpSettings',
        :'idp_certificates' => :'Array<SsoCertificate>',
        :'idp_certificate_advanced' => :'SsoIdpCertificateAdvanced',
        :'sp_login_label' => :'String',
        :'sp_certificates' => :'Array<SsoCertificate>',
        :'sp_certificate_advanced' => :'SsoSpCertificateAdvanced',
        :'field_mapping' => :'SsoFieldMapping',
        :'hide_auth_page' => :'Boolean',
        :'users_type' => :'Integer',
        :'disable_email_verification' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'enable_sso',
        :'idp_certificates',
        :'sp_login_label',
        :'sp_certificates',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SsoSettingsV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SsoSettingsV2`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'enable_sso')
        self.enable_sso = attributes[:'enable_sso']
      end

      if attributes.key?(:'idp_settings')
        self.idp_settings = attributes[:'idp_settings']
      end

      if attributes.key?(:'idp_certificates')
        if (value = attributes[:'idp_certificates']).is_a?(Array)
          self.idp_certificates = value
        end
      end

      if attributes.key?(:'idp_certificate_advanced')
        self.idp_certificate_advanced = attributes[:'idp_certificate_advanced']
      end

      if attributes.key?(:'sp_login_label')
        self.sp_login_label = attributes[:'sp_login_label']
      end

      if attributes.key?(:'sp_certificates')
        if (value = attributes[:'sp_certificates']).is_a?(Array)
          self.sp_certificates = value
        end
      end

      if attributes.key?(:'sp_certificate_advanced')
        self.sp_certificate_advanced = attributes[:'sp_certificate_advanced']
      end

      if attributes.key?(:'field_mapping')
        self.field_mapping = attributes[:'field_mapping']
      end

      if attributes.key?(:'hide_auth_page')
        self.hide_auth_page = attributes[:'hide_auth_page']
      end

      if attributes.key?(:'users_type')
        self.users_type = attributes[:'users_type']
      end

      if attributes.key?(:'disable_email_verification')
        self.disable_email_verification = attributes[:'disable_email_verification']
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
          last_modified == o.last_modified &&
          enable_sso == o.enable_sso &&
          idp_settings == o.idp_settings &&
          idp_certificates == o.idp_certificates &&
          idp_certificate_advanced == o.idp_certificate_advanced &&
          sp_login_label == o.sp_login_label &&
          sp_certificates == o.sp_certificates &&
          sp_certificate_advanced == o.sp_certificate_advanced &&
          field_mapping == o.field_mapping &&
          hide_auth_page == o.hide_auth_page &&
          users_type == o.users_type &&
          disable_email_verification == o.disable_email_verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [last_modified, enable_sso, idp_settings, idp_certificates, idp_certificate_advanced, sp_login_label, sp_certificates, sp_certificate_advanced, field_mapping, hide_auth_page, users_type, disable_email_verification].hash
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
