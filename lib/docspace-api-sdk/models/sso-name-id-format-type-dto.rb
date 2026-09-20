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
  # The SAML name ID formats the SSO settings accept.
  class SsoNameIdFormatTypeDto < ApiModelBase
    # The SAML 1.1 unspecified name ID format.
    attr_accessor :saml11_unspecified

    # The SAML 1.1 email address name ID format.
    attr_accessor :saml11_email_address

    # The SAML 2.0 entity name ID format.
    attr_accessor :saml20_entity

    # The SAML 2.0 transient name ID format, whose identifier differs from one session to the next. It is what  the built-in configuration uses.
    attr_accessor :saml20_transient

    # The SAML 2.0 persistent name ID format, whose identifier stays the same for one person across sessions.
    attr_accessor :saml20_persistent

    # The SAML 2.0 encrypted name ID format.
    attr_accessor :saml20_encrypted

    # The SAML 2.0 unspecified name ID format.
    attr_accessor :saml20_unspecified

    # The SAML 1.1 X.509 subject name name ID format.
    attr_accessor :saml11_x509_subject_name

    # The SAML 1.1 Windows domain qualified name name ID format.
    attr_accessor :saml11_windows_domain_qualified_name

    # The SAML 2.0 Kerberos name ID format.
    attr_accessor :saml20_kerberos

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'saml11_unspecified' => :'saml11Unspecified',
        :'saml11_email_address' => :'saml11EmailAddress',
        :'saml20_entity' => :'saml20Entity',
        :'saml20_transient' => :'saml20Transient',
        :'saml20_persistent' => :'saml20Persistent',
        :'saml20_encrypted' => :'saml20Encrypted',
        :'saml20_unspecified' => :'saml20Unspecified',
        :'saml11_x509_subject_name' => :'saml11X509SubjectName',
        :'saml11_windows_domain_qualified_name' => :'saml11WindowsDomainQualifiedName',
        :'saml20_kerberos' => :'saml20Kerberos'
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
        :'saml11_unspecified' => :'String',
        :'saml11_email_address' => :'String',
        :'saml20_entity' => :'String',
        :'saml20_transient' => :'String',
        :'saml20_persistent' => :'String',
        :'saml20_encrypted' => :'String',
        :'saml20_unspecified' => :'String',
        :'saml11_x509_subject_name' => :'String',
        :'saml11_windows_domain_qualified_name' => :'String',
        :'saml20_kerberos' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'saml11_unspecified',
        :'saml11_email_address',
        :'saml20_entity',
        :'saml20_transient',
        :'saml20_persistent',
        :'saml20_encrypted',
        :'saml20_unspecified',
        :'saml11_x509_subject_name',
        :'saml11_windows_domain_qualified_name',
        :'saml20_kerberos'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SsoNameIdFormatTypeDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SsoNameIdFormatTypeDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'saml11_unspecified')
        self.saml11_unspecified = attributes[:'saml11_unspecified']
      end

      if attributes.key?(:'saml11_email_address')
        self.saml11_email_address = attributes[:'saml11_email_address']
      end

      if attributes.key?(:'saml20_entity')
        self.saml20_entity = attributes[:'saml20_entity']
      end

      if attributes.key?(:'saml20_transient')
        self.saml20_transient = attributes[:'saml20_transient']
      end

      if attributes.key?(:'saml20_persistent')
        self.saml20_persistent = attributes[:'saml20_persistent']
      end

      if attributes.key?(:'saml20_encrypted')
        self.saml20_encrypted = attributes[:'saml20_encrypted']
      end

      if attributes.key?(:'saml20_unspecified')
        self.saml20_unspecified = attributes[:'saml20_unspecified']
      end

      if attributes.key?(:'saml11_x509_subject_name')
        self.saml11_x509_subject_name = attributes[:'saml11_x509_subject_name']
      end

      if attributes.key?(:'saml11_windows_domain_qualified_name')
        self.saml11_windows_domain_qualified_name = attributes[:'saml11_windows_domain_qualified_name']
      end

      if attributes.key?(:'saml20_kerberos')
        self.saml20_kerberos = attributes[:'saml20_kerberos']
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
          saml11_unspecified == o.saml11_unspecified &&
          saml11_email_address == o.saml11_email_address &&
          saml20_entity == o.saml20_entity &&
          saml20_transient == o.saml20_transient &&
          saml20_persistent == o.saml20_persistent &&
          saml20_encrypted == o.saml20_encrypted &&
          saml20_unspecified == o.saml20_unspecified &&
          saml11_x509_subject_name == o.saml11_x509_subject_name &&
          saml11_windows_domain_qualified_name == o.saml11_windows_domain_qualified_name &&
          saml20_kerberos == o.saml20_kerberos
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [saml11_unspecified, saml11_email_address, saml20_entity, saml20_transient, saml20_persistent, saml20_encrypted, saml20_unspecified, saml11_x509_subject_name, saml11_windows_domain_qualified_name, saml20_kerberos].hash
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
