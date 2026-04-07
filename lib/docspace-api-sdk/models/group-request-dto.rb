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
  # The group request parameters.
  class GroupRequestDto < ApiModelBase
    # The list of group member IDs.
    attr_accessor :members

    # The group manager ID.
    attr_accessor :group_manager

    # The group name.
    attr_accessor :group_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'members' => :'members',
        :'group_manager' => :'groupManager',
        :'group_name' => :'groupName'
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
        :'members' => :'Array<String>',
        :'group_manager' => :'String',
        :'group_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'members',
        :'group_name'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::GroupRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::GroupRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'members')
        if (value = attributes[:'members']).is_a?(Array)
          self.members = value
        end
      end

      if attributes.key?(:'group_manager')
        self.group_manager = attributes[:'group_manager']
      else
        self.group_manager = nil
      end

      if attributes.key?(:'group_name')
        self.group_name = attributes[:'group_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @group_manager.nil?
        invalid_properties.push('invalid value for "group_manager", group_manager cannot be nil.')
      end

      if !@group_name.nil? && @group_name.to_s.length > 128
        invalid_properties.push('invalid value for "group_name", the character length must be smaller than or equal to 128.')
      end

      if !@group_name.nil? && @group_name.to_s.length < 0
        invalid_properties.push('invalid value for "group_name", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @group_manager.nil?
      return false if !@group_name.nil? && @group_name.to_s.length > 128
      return false if !@group_name.nil? && @group_name.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] group_manager Value to be assigned
    def group_manager=(group_manager)
      if group_manager.nil?
        fail ArgumentError, 'group_manager cannot be nil'
      end

      @group_manager = group_manager
    end

    # Custom attribute writer method with validation
    # @param [Object] group_name Value to be assigned
    def group_name=(group_name)
      if !group_name.nil? && group_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "group_name", the character length must be smaller than or equal to 128.'
      end

      if !group_name.nil? && group_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "group_name", the character length must be greater than or equal to 0.'
      end

      @group_name = group_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          members == o.members &&
          group_manager == o.group_manager &&
          group_name == o.group_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [members, group_manager, group_name].hash
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
