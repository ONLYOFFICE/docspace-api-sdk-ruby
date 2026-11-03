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
  # The bindings with `expand=profile`: the bound profiles themselves, plus how many profiles the portal has, so a chat can start on this one read.
  class AiAssignmentsExpanded < ApiModelBase
    # The bound profiles keyed by action type, as `GET api/2.0/ai/profiles/list` describes them. A binding whose profile no longer exists is left out.
    attr_accessor :assignments

    # How many profiles the portal has.
    attr_accessor :profiles_total

    # How many of those profiles can chat; a profile without declared capabilities counts as one that can.
    attr_accessor :chat_profiles_total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'assignments' => :'assignments',
        :'profiles_total' => :'profilesTotal',
        :'chat_profiles_total' => :'chatProfilesTotal'
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
        :'assignments' => :'Hash<String, AiProfile>',
        :'profiles_total' => :'Integer',
        :'chat_profiles_total' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiAssignmentsExpanded` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiAssignmentsExpanded`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'assignments')
        if (value = attributes[:'assignments']).is_a?(Hash)
          self.assignments = value
        end
      else
        self.assignments = nil
      end

      if attributes.key?(:'profiles_total')
        self.profiles_total = attributes[:'profiles_total']
      else
        self.profiles_total = nil
      end

      if attributes.key?(:'chat_profiles_total')
        self.chat_profiles_total = attributes[:'chat_profiles_total']
      else
        self.chat_profiles_total = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @assignments.nil?
        invalid_properties.push('invalid value for "assignments", assignments cannot be nil.')
      end

      if @profiles_total.nil?
        invalid_properties.push('invalid value for "profiles_total", profiles_total cannot be nil.')
      end

      if @chat_profiles_total.nil?
        invalid_properties.push('invalid value for "chat_profiles_total", chat_profiles_total cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @assignments.nil?
      return false if @profiles_total.nil?
      return false if @chat_profiles_total.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] assignments Value to be assigned
    def assignments=(assignments)
      if assignments.nil?
        fail ArgumentError, 'assignments cannot be nil'
      end

      @assignments = assignments
    end

    # Custom attribute writer method with validation
    # @param [Object] profiles_total Value to be assigned
    def profiles_total=(profiles_total)
      if profiles_total.nil?
        fail ArgumentError, 'profiles_total cannot be nil'
      end

      @profiles_total = profiles_total
    end

    # Custom attribute writer method with validation
    # @param [Object] chat_profiles_total Value to be assigned
    def chat_profiles_total=(chat_profiles_total)
      if chat_profiles_total.nil?
        fail ArgumentError, 'chat_profiles_total cannot be nil'
      end

      @chat_profiles_total = chat_profiles_total
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          assignments == o.assignments &&
          profiles_total == o.profiles_total &&
          chat_profiles_total == o.chat_profiles_total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [assignments, profiles_total, chat_profiles_total].hash
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
