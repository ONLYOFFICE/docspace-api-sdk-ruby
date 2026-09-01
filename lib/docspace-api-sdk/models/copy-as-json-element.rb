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
  # The parameters for copying a file.
  class CopyAsJsonElement < ApiModelBase
    # The copied file name.
    attr_accessor :dest_title

    attr_accessor :dest_folder_id

    # Specifies whether to allow creating the copied file of an external extension or not.
    attr_accessor :enable_external_ext

    # The copied file password.
    attr_accessor :password

    # Specifies whether to convert the file to form or not.
    attr_accessor :to_form

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dest_title' => :'destTitle',
        :'dest_folder_id' => :'destFolderId',
        :'enable_external_ext' => :'enableExternalExt',
        :'password' => :'password',
        :'to_form' => :'toForm'
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
        :'dest_title' => :'String',
        :'dest_folder_id' => :'CopyAsJsonElementDestFolderId',
        :'enable_external_ext' => :'Boolean',
        :'password' => :'String',
        :'to_form' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'dest_title',
        :'password',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CopyAsJsonElement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CopyAsJsonElement`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dest_title')
        self.dest_title = attributes[:'dest_title']
      else
        self.dest_title = nil
      end

      if attributes.key?(:'dest_folder_id')
        self.dest_folder_id = attributes[:'dest_folder_id']
      else
        self.dest_folder_id = nil
      end

      if attributes.key?(:'enable_external_ext')
        self.enable_external_ext = attributes[:'enable_external_ext']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'to_form')
        self.to_form = attributes[:'to_form']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @dest_folder_id.nil?
        invalid_properties.push('invalid value for "dest_folder_id", dest_folder_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @dest_folder_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dest_folder_id Value to be assigned
    def dest_folder_id=(dest_folder_id)
      if dest_folder_id.nil?
        fail ArgumentError, 'dest_folder_id cannot be nil'
      end

      @dest_folder_id = dest_folder_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dest_title == o.dest_title &&
          dest_folder_id == o.dest_folder_id &&
          enable_external_ext == o.enable_external_ext &&
          password == o.password &&
          to_form == o.to_form
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dest_title, dest_folder_id, enable_external_ext, password, to_form].hash
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
