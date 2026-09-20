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
  # The consent-facing subset of a client: everything needed to render a consent screen, and nothing that would let a caller act as the client.
  class ClientInfoResponse < ApiModelBase
    # The display name shown to the user on the consent screen, between 3 and 256 characters.
    attr_accessor :name

    # The free-text description shown next to the name on the consent screen, at most 255 characters.
    attr_accessor :description

    # The permissions the client may ask for, named as they appear in the tenant scope catalogue - for example files:read, rooms:write or openid. A client cannot request a scope that is not listed here.
    attr_accessor :scopes

    # The generated identifier of the client, sent as client_id in every OAuth2 request. It is assigned when the client is registered and never changes afterwards.
    attr_accessor :client_id

    # The URL of the client home page, offered to the user before they consent.
    attr_accessor :website_url

    # The URL of the client terms of service, linked from the consent screen.
    attr_accessor :terms_url

    # The URL of the client privacy policy, linked from the consent screen.
    attr_accessor :policy_url

    # The client logo as a data URI carrying base64 image data, shown on the consent screen. Only png, jpeg, jpg and svg+xml are accepted, the whole string may not exceed 2000000 characters and the decoded image may not exceed 256000 bytes.
    attr_accessor :logo

    # How the client authenticates itself at the token endpoint: client_secret_post for a confidential client that sends its secret, none for a public client that proves itself with PKCE instead.
    attr_accessor :authentication_methods

    # When the client was registered, as an ISO-8601 timestamp with a zone offset.
    attr_accessor :created_on

    # The identifier of the user who registered the client. A plain user may read and change only the clients where this is their own identifier.
    attr_accessor :created_by

    # When the client was last changed, as an ISO-8601 timestamp with a zone offset.
    attr_accessor :modified_on

    # The identifier of the user who last changed the client.
    attr_accessor :modified_by

    # Whether the client is offered to third-party tenants rather than only to the tenant that registered it.
    attr_accessor :is_public

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'scopes' => :'scopes',
        :'client_id' => :'client_id',
        :'website_url' => :'website_url',
        :'terms_url' => :'terms_url',
        :'policy_url' => :'policy_url',
        :'logo' => :'logo',
        :'authentication_methods' => :'authentication_methods',
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
        :'scopes' => :'Array<String>',
        :'client_id' => :'String',
        :'website_url' => :'String',
        :'terms_url' => :'String',
        :'policy_url' => :'String',
        :'logo' => :'String',
        :'authentication_methods' => :'Array<String>',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ClientInfoResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ClientInfoResponse`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          scopes == o.scopes &&
          client_id == o.client_id &&
          website_url == o.website_url &&
          terms_url == o.terms_url &&
          policy_url == o.policy_url &&
          logo == o.logo &&
          authentication_methods == o.authentication_methods &&
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
      [name, description, scopes, client_id, website_url, terms_url, policy_url, logo, authentication_methods, created_on, created_by, modified_on, modified_by, is_public].hash
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
