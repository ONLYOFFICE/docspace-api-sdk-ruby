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
  # The form gallery parameters.
  class FormGalleryDto < ApiModelBase
    # The form gallery path.
    attr_accessor :path

    # The form gallery domain.
    attr_accessor :domain

    # The form gallery extension.
    attr_accessor :ext

    # The form gallery upload path.
    attr_accessor :upload_path

    # The form gallery upload domain.
    attr_accessor :upload_domain

    # The form gallery upload extension.
    attr_accessor :upload_ext

    # The form gallery upload dashboard.
    attr_accessor :upload_dashboard

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'path' => :'path',
        :'domain' => :'domain',
        :'ext' => :'ext',
        :'upload_path' => :'uploadPath',
        :'upload_domain' => :'uploadDomain',
        :'upload_ext' => :'uploadExt',
        :'upload_dashboard' => :'uploadDashboard'
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
        :'path' => :'String',
        :'domain' => :'String',
        :'ext' => :'String',
        :'upload_path' => :'String',
        :'upload_domain' => :'String',
        :'upload_ext' => :'String',
        :'upload_dashboard' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'path',
        :'domain',
        :'ext',
        :'upload_path',
        :'upload_domain',
        :'upload_ext',
        :'upload_dashboard'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FormGalleryDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FormGalleryDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      else
        self.path = nil
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      else
        self.domain = nil
      end

      if attributes.key?(:'ext')
        self.ext = attributes[:'ext']
      else
        self.ext = nil
      end

      if attributes.key?(:'upload_path')
        self.upload_path = attributes[:'upload_path']
      else
        self.upload_path = nil
      end

      if attributes.key?(:'upload_domain')
        self.upload_domain = attributes[:'upload_domain']
      else
        self.upload_domain = nil
      end

      if attributes.key?(:'upload_ext')
        self.upload_ext = attributes[:'upload_ext']
      else
        self.upload_ext = nil
      end

      if attributes.key?(:'upload_dashboard')
        self.upload_dashboard = attributes[:'upload_dashboard']
      else
        self.upload_dashboard = nil
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
          path == o.path &&
          domain == o.domain &&
          ext == o.ext &&
          upload_path == o.upload_path &&
          upload_domain == o.upload_domain &&
          upload_ext == o.upload_ext &&
          upload_dashboard == o.upload_dashboard
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [path, domain, ext, upload_path, upload_domain, upload_ext, upload_dashboard].hash
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
