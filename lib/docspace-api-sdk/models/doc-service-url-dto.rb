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
  # The document service location as this portal has it configured, together with the editor entry points a client  needs in order to open a document.
  class DocServiceUrlDto < ApiModelBase
    # The editor version the running Document Server reported. It is filled in only when the version was asked for,  and comes back empty otherwise. When the Document Server does not answer, a fallback version is reported  rather than an error, so a value here is no proof that the server is reachable.
    attr_accessor :version

    # The absolute URL of the editor api script that a client has to load before it can open a document. It is  derived from the public Document Server address unless the deployment overrides it separately.
    attr_accessor :doc_service_url_api

    # The public Document Server address a browser loads the editor from. Empty means no document server is  configured for this portal, and documents cannot be opened for editing or viewing.
    attr_accessor :doc_service_url

    # The absolute URL of a page a client may load in advance to warm the editor scripts up. Loading it is optional  and changes nothing on the portal.
    attr_accessor :doc_service_preload_url

    # The address the portal uses for its own server-to-server calls to the Document Server. When no private-network  address is configured, it repeats the public one.
    attr_accessor :doc_service_url_internal

    # The address the Document Server is told to call this portal back on. Empty means nothing overrides it and the  portal's own resolved address is used.
    attr_accessor :doc_service_portal_url

    # The name of the HTTP header that carries the signature on requests between the portal and the Document Server.  The secret itself is not part of the answer, so this only tells a client whether request signing is set up and  under which header.
    attr_accessor :doc_service_signature_header

    # Whether the portal validates the TLS certificate of the Document Server. False means any certificate is  accepted, which is expected only in a test deployment.
    attr_accessor :doc_service_ssl_verification

    # Whether every one of these settings is still the one the deployment ships with. False means at least one of  the addresses, the signature settings or SSL verification has been overridden for this portal.
    attr_accessor :is_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'version' => :'version',
        :'doc_service_url_api' => :'docServiceUrlApi',
        :'doc_service_url' => :'docServiceUrl',
        :'doc_service_preload_url' => :'docServicePreloadUrl',
        :'doc_service_url_internal' => :'docServiceUrlInternal',
        :'doc_service_portal_url' => :'docServicePortalUrl',
        :'doc_service_signature_header' => :'docServiceSignatureHeader',
        :'doc_service_ssl_verification' => :'docServiceSslVerification',
        :'is_default' => :'isDefault'
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
        :'version' => :'String',
        :'doc_service_url_api' => :'String',
        :'doc_service_url' => :'String',
        :'doc_service_preload_url' => :'String',
        :'doc_service_url_internal' => :'String',
        :'doc_service_portal_url' => :'String',
        :'doc_service_signature_header' => :'String',
        :'doc_service_ssl_verification' => :'Boolean',
        :'is_default' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'version',
        :'doc_service_url_api',
        :'doc_service_url',
        :'doc_service_preload_url',
        :'doc_service_url_internal',
        :'doc_service_portal_url',
        :'doc_service_signature_header',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DocServiceUrlDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DocServiceUrlDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'doc_service_url_api')
        self.doc_service_url_api = attributes[:'doc_service_url_api']
      else
        self.doc_service_url_api = nil
      end

      if attributes.key?(:'doc_service_url')
        self.doc_service_url = attributes[:'doc_service_url']
      else
        self.doc_service_url = nil
      end

      if attributes.key?(:'doc_service_preload_url')
        self.doc_service_preload_url = attributes[:'doc_service_preload_url']
      else
        self.doc_service_preload_url = nil
      end

      if attributes.key?(:'doc_service_url_internal')
        self.doc_service_url_internal = attributes[:'doc_service_url_internal']
      else
        self.doc_service_url_internal = nil
      end

      if attributes.key?(:'doc_service_portal_url')
        self.doc_service_portal_url = attributes[:'doc_service_portal_url']
      else
        self.doc_service_portal_url = nil
      end

      if attributes.key?(:'doc_service_signature_header')
        self.doc_service_signature_header = attributes[:'doc_service_signature_header']
      else
        self.doc_service_signature_header = nil
      end

      if attributes.key?(:'doc_service_ssl_verification')
        self.doc_service_ssl_verification = attributes[:'doc_service_ssl_verification']
      else
        self.doc_service_ssl_verification = nil
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      else
        self.is_default = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @doc_service_ssl_verification.nil?
        invalid_properties.push('invalid value for "doc_service_ssl_verification", doc_service_ssl_verification cannot be nil.')
      end

      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @doc_service_ssl_verification.nil?
      return false if @is_default.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] doc_service_ssl_verification Value to be assigned
    def doc_service_ssl_verification=(doc_service_ssl_verification)
      if doc_service_ssl_verification.nil?
        fail ArgumentError, 'doc_service_ssl_verification cannot be nil'
      end

      @doc_service_ssl_verification = doc_service_ssl_verification
    end

    # Custom attribute writer method with validation
    # @param [Object] is_default Value to be assigned
    def is_default=(is_default)
      if is_default.nil?
        fail ArgumentError, 'is_default cannot be nil'
      end

      @is_default = is_default
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          version == o.version &&
          doc_service_url_api == o.doc_service_url_api &&
          doc_service_url == o.doc_service_url &&
          doc_service_preload_url == o.doc_service_preload_url &&
          doc_service_url_internal == o.doc_service_url_internal &&
          doc_service_portal_url == o.doc_service_portal_url &&
          doc_service_signature_header == o.doc_service_signature_header &&
          doc_service_ssl_verification == o.doc_service_ssl_verification &&
          is_default == o.is_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [version, doc_service_url_api, doc_service_url, doc_service_preload_url, doc_service_url_internal, doc_service_portal_url, doc_service_signature_header, doc_service_ssl_verification, is_default].hash
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
