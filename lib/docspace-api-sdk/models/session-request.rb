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
  # The session request parameters.
  class SessionRequest < ApiModelBase
    # The file name.
    attr_accessor :file_name

    # The file size.
    attr_accessor :file_size

    # The relative path to the file.
    attr_accessor :relative_path

    attr_accessor :create_on

    # Specifies whether the file is encrypted or not.
    attr_accessor :encrypted

    # Specifies whether to create a new file if it already exists.
    attr_accessor :create_new_if_exist

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_name' => :'fileName',
        :'file_size' => :'fileSize',
        :'relative_path' => :'relativePath',
        :'create_on' => :'createOn',
        :'encrypted' => :'encrypted',
        :'create_new_if_exist' => :'createNewIfExist'
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
        :'file_name' => :'String',
        :'file_size' => :'Integer',
        :'relative_path' => :'String',
        :'create_on' => :'ApiDateTime',
        :'encrypted' => :'Boolean',
        :'create_new_if_exist' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'file_name',
        :'relative_path',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SessionRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SessionRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      else
        self.file_name = nil
      end

      if attributes.key?(:'file_size')
        self.file_size = attributes[:'file_size']
      end

      if attributes.key?(:'relative_path')
        self.relative_path = attributes[:'relative_path']
      end

      if attributes.key?(:'create_on')
        self.create_on = attributes[:'create_on']
      end

      if attributes.key?(:'encrypted')
        self.encrypted = attributes[:'encrypted']
      end

      if attributes.key?(:'create_new_if_exist')
        self.create_new_if_exist = attributes[:'create_new_if_exist']
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
          file_name == o.file_name &&
          file_size == o.file_size &&
          relative_path == o.relative_path &&
          create_on == o.create_on &&
          encrypted == o.encrypted &&
          create_new_if_exist == o.create_new_if_exist
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_name, file_size, relative_path, create_on, encrypted, create_new_if_exist].hash
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
