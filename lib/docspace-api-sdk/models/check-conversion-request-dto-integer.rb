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
  # The parameters for checking file conversion.
  class CheckConversionRequestDtoInteger < ApiModelBase
    # The file ID to check conversion proccess.
    attr_accessor :file_id

    # Specifies if the conversion process is synchronous or not.
    attr_accessor :sync

    # Specifies whether to start a conversion process or not.
    attr_accessor :start_convert

    # The file version that is converted.
    attr_accessor :version

    # The password of the converted file.
    attr_accessor :password

    # The conversion output type.
    attr_accessor :output_type

    # Specifies whether to create a new file if it exists or not.
    attr_accessor :create_new_if_exist

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_id' => :'fileId',
        :'sync' => :'sync',
        :'start_convert' => :'startConvert',
        :'version' => :'version',
        :'password' => :'password',
        :'output_type' => :'outputType',
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
        :'file_id' => :'Integer',
        :'sync' => :'Boolean',
        :'start_convert' => :'Boolean',
        :'version' => :'Integer',
        :'password' => :'String',
        :'output_type' => :'String',
        :'create_new_if_exist' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'password',
        :'output_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CheckConversionRequestDtoInteger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CheckConversionRequestDtoInteger`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_id')
        self.file_id = attributes[:'file_id']
      end

      if attributes.key?(:'sync')
        self.sync = attributes[:'sync']
      end

      if attributes.key?(:'start_convert')
        self.start_convert = attributes[:'start_convert']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'output_type')
        self.output_type = attributes[:'output_type']
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
          file_id == o.file_id &&
          sync == o.sync &&
          start_convert == o.start_convert &&
          version == o.version &&
          password == o.password &&
          output_type == o.output_type &&
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
      [file_id, sync, start_convert, version, password, output_type, create_new_if_exist].hash
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
