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
  class ClientResponse < ApiModelBase
    # The client name.
    attr_accessor :name

    # The client description.
    attr_accessor :description

    # The tenant ID associated with the client.
    attr_accessor :tenant

    # The client scopes.
    attr_accessor :scopes

    # Specifies if the client is currently enabled or not.
    attr_accessor :enabled

    # The client identifier issued to the client during registration.
    attr_accessor :client_id

    # The client secret issued to the client during registration.
    attr_accessor :client_secret

    # The URL to the client's website.
    attr_accessor :website_url

    # The URL to the client's terms of service.
    attr_accessor :terms_url

    # The URL to the client's privacy policy.
    attr_accessor :policy_url

    # The URL to the client's logo.
    attr_accessor :logo

    # The authentication methods supported by the client.
    attr_accessor :authentication_methods

    # The list of allowed redirect URIs.
    attr_accessor :redirect_uris

    # The list of allowed CORS origins.
    attr_accessor :allowed_origins

    # The list of allowed logout redirect URIs.
    attr_accessor :logout_redirect_uris

    # The date and time when the client was created.
    attr_accessor :created_on

    # The user who created the client.
    attr_accessor :created_by

    # The date and time when the client was last modified.
    attr_accessor :modified_on

    # The user who last modified the client.
    attr_accessor :modified_by

    # Indicates whether the client is accessible by third-party tenants.
    attr_accessor :is_public

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'tenant' => :'tenant',
        :'scopes' => :'scopes',
        :'enabled' => :'enabled',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'website_url' => :'website_url',
        :'terms_url' => :'terms_url',
        :'policy_url' => :'policy_url',
        :'logo' => :'logo',
        :'authentication_methods' => :'authentication_methods',
        :'redirect_uris' => :'redirect_uris',
        :'allowed_origins' => :'allowed_origins',
        :'logout_redirect_uris' => :'logout_redirect_uris',
        :'created_on' => :'created_on',
        :'created_by' => :'created_by',
        :'modified_on' => :'modified_on',
        :'modified_by' => :'modified_by',
        :'is_public' => :'is_public'
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
        :'description' => :'String',
        :'tenant' => :'Integer',
        :'scopes' => :'Array<String>',
        :'enabled' => :'Boolean',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'website_url' => :'String',
        :'terms_url' => :'String',
        :'policy_url' => :'String',
        :'logo' => :'String',
        :'authentication_methods' => :'Array<String>',
        :'redirect_uris' => :'Array<String>',
        :'allowed_origins' => :'Array<String>',
        :'logout_redirect_uris' => :'Array<String>',
        :'created_on' => :'Time',
        :'created_by' => :'String',
        :'modified_on' => :'Time',
        :'modified_by' => :'String',
        :'is_public' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ClientResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ClientResponse`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'website_url')
        self.website_url = attributes[:'website_url']
      end

      if attributes.key?(:'terms_url')
        self.terms_url = attributes[:'terms_url']
      end

      if attributes.key?(:'policy_url')
        self.policy_url = attributes[:'policy_url']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'authentication_methods')
        if (value = attributes[:'authentication_methods']).is_a?(Array)
          self.authentication_methods = value
        end
      end

      if attributes.key?(:'redirect_uris')
        if (value = attributes[:'redirect_uris']).is_a?(Array)
          self.redirect_uris = value
        end
      end

      if attributes.key?(:'allowed_origins')
        if (value = attributes[:'allowed_origins']).is_a?(Array)
          self.allowed_origins = value
        end
      end

      if attributes.key?(:'logout_redirect_uris')
        if (value = attributes[:'logout_redirect_uris']).is_a?(Array)
          self.logout_redirect_uris = value
        end
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'modified_on')
        self.modified_on = attributes[:'modified_on']
      end

      if attributes.key?(:'modified_by')
        self.modified_by = attributes[:'modified_by']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
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

    # Custom attribute writer method with validation
    # @param [Object] scopes Value to be assigned
    def scopes=(scopes)
      if scopes.nil?
        fail ArgumentError, 'scopes cannot be nil'
      end

      @scopes = scopes
    end

    # Custom attribute writer method with validation
    # @param [Object] authentication_methods Value to be assigned
    def authentication_methods=(authentication_methods)
      if authentication_methods.nil?
        fail ArgumentError, 'authentication_methods cannot be nil'
      end

      @authentication_methods = authentication_methods
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_uris Value to be assigned
    def redirect_uris=(redirect_uris)
      if redirect_uris.nil?
        fail ArgumentError, 'redirect_uris cannot be nil'
      end

      @redirect_uris = redirect_uris
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_origins Value to be assigned
    def allowed_origins=(allowed_origins)
      if allowed_origins.nil?
        fail ArgumentError, 'allowed_origins cannot be nil'
      end

      @allowed_origins = allowed_origins
    end

    # Custom attribute writer method with validation
    # @param [Object] logout_redirect_uris Value to be assigned
    def logout_redirect_uris=(logout_redirect_uris)
      if logout_redirect_uris.nil?
        fail ArgumentError, 'logout_redirect_uris cannot be nil'
      end

      @logout_redirect_uris = logout_redirect_uris
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          tenant == o.tenant &&
          scopes == o.scopes &&
          enabled == o.enabled &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          website_url == o.website_url &&
          terms_url == o.terms_url &&
          policy_url == o.policy_url &&
          logo == o.logo &&
          authentication_methods == o.authentication_methods &&
          redirect_uris == o.redirect_uris &&
          allowed_origins == o.allowed_origins &&
          logout_redirect_uris == o.logout_redirect_uris &&
          created_on == o.created_on &&
          created_by == o.created_by &&
          modified_on == o.modified_on &&
          modified_by == o.modified_by &&
          is_public == o.is_public
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, tenant, scopes, enabled, client_id, client_secret, website_url, terms_url, policy_url, logo, authentication_methods, redirect_uris, allowed_origins, logout_redirect_uris, created_on, created_by, modified_on, modified_by, is_public].hash
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
