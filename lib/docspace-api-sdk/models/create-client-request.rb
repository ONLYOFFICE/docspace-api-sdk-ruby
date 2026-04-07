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
  # Client creation request containing client details
  class CreateClientRequest < ApiModelBase
    # The client name.
    attr_accessor :name

    # The description of the client
    attr_accessor :description

    # The logo of the client in base64 format
    attr_accessor :logo

    # The scopes for the client
    attr_accessor :scopes

    attr_accessor :public

    # Indicates whether PKCE is allowed for the client
    attr_accessor :allow_pkce

    # Indicates if the client is public
    attr_accessor :is_public

    # The website URL of the client
    attr_accessor :website_url

    # The terms URL of the client
    attr_accessor :terms_url

    # The policy URL of the client
    attr_accessor :policy_url

    # The redirect URIs for the client
    attr_accessor :redirect_uris

    # The allowed origins for the client
    attr_accessor :allowed_origins

    # The logout redirect URI for the client
    attr_accessor :logout_redirect_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'logo' => :'logo',
        :'scopes' => :'scopes',
        :'public' => :'public',
        :'allow_pkce' => :'allow_pkce',
        :'is_public' => :'is_public',
        :'website_url' => :'website_url',
        :'terms_url' => :'terms_url',
        :'policy_url' => :'policy_url',
        :'redirect_uris' => :'redirect_uris',
        :'allowed_origins' => :'allowed_origins',
        :'logout_redirect_uri' => :'logout_redirect_uri'
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
        :'logo' => :'String',
        :'scopes' => :'Array<String>',
        :'public' => :'Boolean',
        :'allow_pkce' => :'Boolean',
        :'is_public' => :'Boolean',
        :'website_url' => :'String',
        :'terms_url' => :'String',
        :'policy_url' => :'String',
        :'redirect_uris' => :'Array<String>',
        :'allowed_origins' => :'Array<String>',
        :'logout_redirect_uri' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CreateClientRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CreateClientRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end

      if attributes.key?(:'public')
        self.public = attributes[:'public']
      end

      if attributes.key?(:'allow_pkce')
        self.allow_pkce = attributes[:'allow_pkce']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
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

      if attributes.key?(:'redirect_uris')
        if (value = attributes[:'redirect_uris']).is_a?(Array)
          self.redirect_uris = value
        end
      else
        self.redirect_uris = nil
      end

      if attributes.key?(:'allowed_origins')
        if (value = attributes[:'allowed_origins']).is_a?(Array)
          self.allowed_origins = value
        end
      else
        self.allowed_origins = nil
      end

      if attributes.key?(:'logout_redirect_uri')
        self.logout_redirect_uri = attributes[:'logout_redirect_uri']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 256
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 256.')
      end

      if !@name.nil? && @name.to_s.length < 3
        invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 3.')
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      if !@description.nil? && @description.to_s.length < 0
        invalid_properties.push('invalid value for "description", the character length must be greater than or equal to 0.')
      end

      if !@logo.nil? && @logo.to_s.length < 1
        invalid_properties.push('invalid value for "logo", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      if !@logo.nil? && @logo !~ pattern
        invalid_properties.push("invalid value for \"logo\", must conform to the pattern #{pattern}.")
      end

      if !@scopes.nil? && @scopes.length < 1
        invalid_properties.push('invalid value for "scopes", number of items must be greater than or equal to 1.')
      end

      if !@website_url.nil? && @website_url.to_s.length < 1
        invalid_properties.push('invalid value for "website_url", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if !@website_url.nil? && @website_url !~ pattern
        invalid_properties.push("invalid value for \"website_url\", must conform to the pattern #{pattern}.")
      end

      if !@terms_url.nil? && @terms_url.to_s.length < 1
        invalid_properties.push('invalid value for "terms_url", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if !@terms_url.nil? && @terms_url !~ pattern
        invalid_properties.push("invalid value for \"terms_url\", must conform to the pattern #{pattern}.")
      end

      if !@policy_url.nil? && @policy_url.to_s.length < 1
        invalid_properties.push('invalid value for "policy_url", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if !@policy_url.nil? && @policy_url !~ pattern
        invalid_properties.push("invalid value for \"policy_url\", must conform to the pattern #{pattern}.")
      end

      if @redirect_uris.nil?
        invalid_properties.push('invalid value for "redirect_uris", redirect_uris cannot be nil.')
      end

      if @redirect_uris.length > 12
        invalid_properties.push('invalid value for "redirect_uris", number of items must be less than or equal to 12.')
      end

      if @redirect_uris.length < 1
        invalid_properties.push('invalid value for "redirect_uris", number of items must be greater than or equal to 1.')
      end

      if @allowed_origins.nil?
        invalid_properties.push('invalid value for "allowed_origins", allowed_origins cannot be nil.')
      end

      if @allowed_origins.length > 12
        invalid_properties.push('invalid value for "allowed_origins", number of items must be less than or equal to 12.')
      end

      if @allowed_origins.length < 1
        invalid_properties.push('invalid value for "allowed_origins", number of items must be greater than or equal to 1.')
      end

      if !@logout_redirect_uri.nil? && @logout_redirect_uri.to_s.length < 1
        invalid_properties.push('invalid value for "logout_redirect_uri", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if !@logout_redirect_uri.nil? && @logout_redirect_uri !~ pattern
        invalid_properties.push("invalid value for \"logout_redirect_uri\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 256
      return false if !@name.nil? && @name.to_s.length < 3
      return false if !@description.nil? && @description.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length < 0
      return false if !@logo.nil? && @logo.to_s.length < 1
      return false if !@logo.nil? && @logo !~ Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      return false if !@scopes.nil? && @scopes.length < 1
      return false if !@website_url.nil? && @website_url.to_s.length < 1
      return false if !@website_url.nil? && @website_url !~ Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      return false if !@terms_url.nil? && @terms_url.to_s.length < 1
      return false if !@terms_url.nil? && @terms_url !~ Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      return false if !@policy_url.nil? && @policy_url.to_s.length < 1
      return false if !@policy_url.nil? && @policy_url !~ Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      return false if @redirect_uris.nil?
      return false if @redirect_uris.length > 12
      return false if @redirect_uris.length < 1
      return false if @allowed_origins.nil?
      return false if @allowed_origins.length > 12
      return false if @allowed_origins.length < 1
      return false if !@logout_redirect_uri.nil? && @logout_redirect_uri.to_s.length < 1
      return false if !@logout_redirect_uri.nil? && @logout_redirect_uri !~ Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 256
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 256.'
      end

      if name.to_s.length < 3
        fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 3.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      if description.to_s.length < 0
        fail ArgumentError, 'invalid value for "description", the character length must be greater than or equal to 0.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] logo Value to be assigned
    def logo=(logo)
      if logo.nil?
        fail ArgumentError, 'logo cannot be nil'
      end

      if logo.to_s.length < 1
        fail ArgumentError, 'invalid value for "logo", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      if logo !~ pattern
        fail ArgumentError, "invalid value for \"logo\", must conform to the pattern #{pattern}."
      end

      @logo = logo
    end

    # Custom attribute writer method with validation
    # @param [Object] scopes Value to be assigned
    def scopes=(scopes)
      if scopes.nil?
        fail ArgumentError, 'scopes cannot be nil'
      end

      if scopes.length < 1
        fail ArgumentError, 'invalid value for "scopes", number of items must be greater than or equal to 1.'
      end

      @scopes = scopes
    end

    # Custom attribute writer method with validation
    # @param [Object] website_url Value to be assigned
    def website_url=(website_url)
      if website_url.nil?
        fail ArgumentError, 'website_url cannot be nil'
      end

      if website_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "website_url", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if website_url !~ pattern
        fail ArgumentError, "invalid value for \"website_url\", must conform to the pattern #{pattern}."
      end

      @website_url = website_url
    end

    # Custom attribute writer method with validation
    # @param [Object] terms_url Value to be assigned
    def terms_url=(terms_url)
      if terms_url.nil?
        fail ArgumentError, 'terms_url cannot be nil'
      end

      if terms_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "terms_url", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if terms_url !~ pattern
        fail ArgumentError, "invalid value for \"terms_url\", must conform to the pattern #{pattern}."
      end

      @terms_url = terms_url
    end

    # Custom attribute writer method with validation
    # @param [Object] policy_url Value to be assigned
    def policy_url=(policy_url)
      if policy_url.nil?
        fail ArgumentError, 'policy_url cannot be nil'
      end

      if policy_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "policy_url", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if policy_url !~ pattern
        fail ArgumentError, "invalid value for \"policy_url\", must conform to the pattern #{pattern}."
      end

      @policy_url = policy_url
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_uris Value to be assigned
    def redirect_uris=(redirect_uris)
      if redirect_uris.nil?
        fail ArgumentError, 'redirect_uris cannot be nil'
      end

      if redirect_uris.length > 12
        fail ArgumentError, 'invalid value for "redirect_uris", number of items must be less than or equal to 12.'
      end

      if redirect_uris.length < 1
        fail ArgumentError, 'invalid value for "redirect_uris", number of items must be greater than or equal to 1.'
      end

      @redirect_uris = redirect_uris
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_origins Value to be assigned
    def allowed_origins=(allowed_origins)
      if allowed_origins.nil?
        fail ArgumentError, 'allowed_origins cannot be nil'
      end

      if allowed_origins.length > 12
        fail ArgumentError, 'invalid value for "allowed_origins", number of items must be less than or equal to 12.'
      end

      if allowed_origins.length < 1
        fail ArgumentError, 'invalid value for "allowed_origins", number of items must be greater than or equal to 1.'
      end

      @allowed_origins = allowed_origins
    end

    # Custom attribute writer method with validation
    # @param [Object] logout_redirect_uri Value to be assigned
    def logout_redirect_uri=(logout_redirect_uri)
      if logout_redirect_uri.nil?
        fail ArgumentError, 'logout_redirect_uri cannot be nil'
      end

      if logout_redirect_uri.to_s.length < 1
        fail ArgumentError, 'invalid value for "logout_redirect_uri", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$|^https?:\/\/(\d{1,3}\.){3}\d{1,3}(:\d+)?(\/[a-zA-Z0-9-._~:\/?#\[\]@!$&'()*+,;=]*)?$/)
      if logout_redirect_uri !~ pattern
        fail ArgumentError, "invalid value for \"logout_redirect_uri\", must conform to the pattern #{pattern}."
      end

      @logout_redirect_uri = logout_redirect_uri
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          logo == o.logo &&
          scopes == o.scopes &&
          public == o.public &&
          allow_pkce == o.allow_pkce &&
          is_public == o.is_public &&
          website_url == o.website_url &&
          terms_url == o.terms_url &&
          policy_url == o.policy_url &&
          redirect_uris == o.redirect_uris &&
          allowed_origins == o.allowed_origins &&
          logout_redirect_uri == o.logout_redirect_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, logo, scopes, public, allow_pkce, is_public, website_url, terms_url, policy_url, redirect_uris, allowed_origins, logout_redirect_uri].hash
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
