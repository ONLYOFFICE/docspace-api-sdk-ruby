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
  # The sign-in methods this portal offers, as a login client needs them before anyone has signed in.
  class CapabilitiesDto < ApiModelBase
    # Whether members may sign in with their directory credentials. It is `false` both when LDAP sign-in is  switched off and when the pricing plan or the installation does not include it, and also when the settings  could not be read at all - a `false` here means the method is not offered, never that it is unknown.
    attr_accessor :ldap_enabled

    # The directory domain members authenticate against, to be shown next to the login field. It is empty  whenever `ldapEnabled` is `false`, and also while the portal has not completed a directory synchronisation.
    attr_accessor :ldap_domain

    # The keys of the external identity providers to offer, ordered for the country the caller's IP address  resolves to and reduced to those this installation has credentials for. Pass one of them as `provider` to  `POST api/2.0/authentication`. An empty list means external sign-in is not on offer.
    attr_accessor :providers

    # The caption for the single sign-on button in the portal language, empty whenever `ssoUrl` is.
    attr_accessor :sso_label

    # Whether external identity providers may be used on this portal at all. While it is `false`, `providers` is  empty because the list is not even assembled.
    attr_accessor :oauth_enabled

    # The address to send the browser to for SAML single sign-on. It is empty when single sign-on is not on  offer, which is the one thing to test - there is no separate flag for it.
    attr_accessor :sso_url

    # Whether the installation exposes its built-in identity server, which is what the portal's own OAuth  applications authenticate against. It concerns third-party applications signing in to the portal, not  portal members signing in to an external provider - that is `providers`.
    attr_accessor :identity_server_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ldap_enabled' => :'ldapEnabled',
        :'ldap_domain' => :'ldapDomain',
        :'providers' => :'providers',
        :'sso_label' => :'ssoLabel',
        :'oauth_enabled' => :'oauthEnabled',
        :'sso_url' => :'ssoUrl',
        :'identity_server_enabled' => :'identityServerEnabled'
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
        :'ldap_enabled' => :'Boolean',
        :'ldap_domain' => :'String',
        :'providers' => :'Array<String>',
        :'sso_label' => :'String',
        :'oauth_enabled' => :'Boolean',
        :'sso_url' => :'String',
        :'identity_server_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ldap_domain',
        :'providers',
        :'sso_label',
        :'sso_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CapabilitiesDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CapabilitiesDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ldap_enabled')
        self.ldap_enabled = attributes[:'ldap_enabled']
      else
        self.ldap_enabled = nil
      end

      if attributes.key?(:'ldap_domain')
        self.ldap_domain = attributes[:'ldap_domain']
      end

      if attributes.key?(:'providers')
        if (value = attributes[:'providers']).is_a?(Array)
          self.providers = value
        end
      else
        self.providers = nil
      end

      if attributes.key?(:'sso_label')
        self.sso_label = attributes[:'sso_label']
      else
        self.sso_label = nil
      end

      if attributes.key?(:'oauth_enabled')
        self.oauth_enabled = attributes[:'oauth_enabled']
      else
        self.oauth_enabled = nil
      end

      if attributes.key?(:'sso_url')
        self.sso_url = attributes[:'sso_url']
      else
        self.sso_url = nil
      end

      if attributes.key?(:'identity_server_enabled')
        self.identity_server_enabled = attributes[:'identity_server_enabled']
      else
        self.identity_server_enabled = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @ldap_enabled.nil?
        invalid_properties.push('invalid value for "ldap_enabled", ldap_enabled cannot be nil.')
      end

      if @oauth_enabled.nil?
        invalid_properties.push('invalid value for "oauth_enabled", oauth_enabled cannot be nil.')
      end

      if @identity_server_enabled.nil?
        invalid_properties.push('invalid value for "identity_server_enabled", identity_server_enabled cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ldap_enabled.nil?
      return false if @oauth_enabled.nil?
      return false if @identity_server_enabled.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ldap_enabled Value to be assigned
    def ldap_enabled=(ldap_enabled)
      if ldap_enabled.nil?
        fail ArgumentError, 'ldap_enabled cannot be nil'
      end

      @ldap_enabled = ldap_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] oauth_enabled Value to be assigned
    def oauth_enabled=(oauth_enabled)
      if oauth_enabled.nil?
        fail ArgumentError, 'oauth_enabled cannot be nil'
      end

      @oauth_enabled = oauth_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] identity_server_enabled Value to be assigned
    def identity_server_enabled=(identity_server_enabled)
      if identity_server_enabled.nil?
        fail ArgumentError, 'identity_server_enabled cannot be nil'
      end

      @identity_server_enabled = identity_server_enabled
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ldap_enabled == o.ldap_enabled &&
          ldap_domain == o.ldap_domain &&
          providers == o.providers &&
          sso_label == o.sso_label &&
          oauth_enabled == o.oauth_enabled &&
          sso_url == o.sso_url &&
          identity_server_enabled == o.identity_server_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ldap_enabled, ldap_domain, providers, sso_label, oauth_enabled, sso_url, identity_server_enabled].hash
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
