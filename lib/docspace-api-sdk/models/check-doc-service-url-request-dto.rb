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
  # The ONLYOFFICE Docs connection settings to store and verify.
  class CheckDocServiceUrlRequestDto < ApiModelBase
    # The public address of the Document Server, the one a browser loads the editor from. An empty value drops the  portal's own setting, so the address configured for the deployment takes over again. A value with no scheme is  stored with `http://` prepended, and an absolute address may not carry a query string.
    attr_accessor :doc_service_url

    # The address the portal itself uses for its server-to-server calls to the Document Server, for deployments  where that traffic stays inside the private network. Left empty, those calls go to the public address instead.
    attr_accessor :doc_service_url_internal

    # The address of this portal as the Document Server has to call it back on in order to fetch and save a  document. Set it when the Document Server cannot resolve the portal by its public name; left empty, the  portal's own resolved address is used.
    attr_accessor :doc_service_url_portal

    # The shared secret that requests between the portal and the Document Server are signed with; it has to be the  same value the Document Server itself is configured with, otherwise the verification of the new settings  fails. It is write-only: the document service location is reported without it.
    attr_accessor :doc_service_signature_secret

    # The name of the HTTP header the signature travels in, which has to match the header the Document Server  expects. A secret without a header is not a usable pair and is rejected.
    attr_accessor :doc_service_signature_header

    # Whether the portal validates the TLS certificate of the Document Server. With verification on, a self-signed  certificate breaks the connection; with it off, any certificate is accepted, which is meant for test  deployments only. Omitting the field turns verification on.
    attr_accessor :doc_service_ssl_verification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'doc_service_url' => :'docServiceUrl',
        :'doc_service_url_internal' => :'docServiceUrlInternal',
        :'doc_service_url_portal' => :'docServiceUrlPortal',
        :'doc_service_signature_secret' => :'docServiceSignatureSecret',
        :'doc_service_signature_header' => :'docServiceSignatureHeader',
        :'doc_service_ssl_verification' => :'docServiceSslVerification'
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
        :'doc_service_url' => :'String',
        :'doc_service_url_internal' => :'String',
        :'doc_service_url_portal' => :'String',
        :'doc_service_signature_secret' => :'String',
        :'doc_service_signature_header' => :'String',
        :'doc_service_ssl_verification' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'doc_service_url',
        :'doc_service_url_internal',
        :'doc_service_url_portal',
        :'doc_service_signature_secret',
        :'doc_service_signature_header',
        :'doc_service_ssl_verification'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CheckDocServiceUrlRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CheckDocServiceUrlRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'doc_service_url')
        self.doc_service_url = attributes[:'doc_service_url']
      else
        self.doc_service_url = nil
      end

      if attributes.key?(:'doc_service_url_internal')
        self.doc_service_url_internal = attributes[:'doc_service_url_internal']
      end

      if attributes.key?(:'doc_service_url_portal')
        self.doc_service_url_portal = attributes[:'doc_service_url_portal']
      end

      if attributes.key?(:'doc_service_signature_secret')
        self.doc_service_signature_secret = attributes[:'doc_service_signature_secret']
      end

      if attributes.key?(:'doc_service_signature_header')
        self.doc_service_signature_header = attributes[:'doc_service_signature_header']
      end

      if attributes.key?(:'doc_service_ssl_verification')
        self.doc_service_ssl_verification = attributes[:'doc_service_ssl_verification']
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
          doc_service_url == o.doc_service_url &&
          doc_service_url_internal == o.doc_service_url_internal &&
          doc_service_url_portal == o.doc_service_url_portal &&
          doc_service_signature_secret == o.doc_service_signature_secret &&
          doc_service_signature_header == o.doc_service_signature_header &&
          doc_service_ssl_verification == o.doc_service_ssl_verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [doc_service_url, doc_service_url_internal, doc_service_url_portal, doc_service_signature_secret, doc_service_signature_header, doc_service_ssl_verification].hash
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
