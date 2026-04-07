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
  # The progress parameters of creating a room from the template.
  class RoomFromTemplateStatusDto < ApiModelBase
    # The room ID.
    attr_accessor :room_id

    # The progress of creating a room from the template.
    attr_accessor :progress

    # The error message that is sent when a room is not created successfully from the template.
    attr_accessor :error

    # Specifies whether the process of creating a room from the template is completed.
    attr_accessor :is_completed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'room_id' => :'roomId',
        :'progress' => :'progress',
        :'error' => :'error',
        :'is_completed' => :'isCompleted'
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
        :'room_id' => :'Integer',
        :'progress' => :'Float',
        :'error' => :'String',
        :'is_completed' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'error',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::RoomFromTemplateStatusDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::RoomFromTemplateStatusDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'room_id')
        self.room_id = attributes[:'room_id']
      else
        self.room_id = nil
      end

      if attributes.key?(:'progress')
        self.progress = attributes[:'progress']
      else
        self.progress = nil
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      else
        self.error = nil
      end

      if attributes.key?(:'is_completed')
        self.is_completed = attributes[:'is_completed']
      else
        self.is_completed = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @room_id.nil?
        invalid_properties.push('invalid value for "room_id", room_id cannot be nil.')
      end

      if @progress.nil?
        invalid_properties.push('invalid value for "progress", progress cannot be nil.')
      end

      if @is_completed.nil?
        invalid_properties.push('invalid value for "is_completed", is_completed cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @room_id.nil?
      return false if @progress.nil?
      return false if @is_completed.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] room_id Value to be assigned
    def room_id=(room_id)
      if room_id.nil?
        fail ArgumentError, 'room_id cannot be nil'
      end

      @room_id = room_id
    end

    # Custom attribute writer method with validation
    # @param [Object] progress Value to be assigned
    def progress=(progress)
      if progress.nil?
        fail ArgumentError, 'progress cannot be nil'
      end

      @progress = progress
    end

    # Custom attribute writer method with validation
    # @param [Object] is_completed Value to be assigned
    def is_completed=(is_completed)
      if is_completed.nil?
        fail ArgumentError, 'is_completed cannot be nil'
      end

      @is_completed = is_completed
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          room_id == o.room_id &&
          progress == o.progress &&
          error == o.error &&
          is_completed == o.is_completed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [room_id, progress, error, is_completed].hash
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
