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
  # What one model can do with extended thinking. Providers describe each model through this shape so the UI offers only the choices that change the request, and the request builders clamp to the same table.
  class AiReasoningSupport < ApiModelBase
    # Whether the model can think at all. False hides the whole control.
    attr_accessor :thinks

    # Whether `off` really turns thinking off. False means the model thinks always and off only drops to its lowest depth (or leaves the default depth, where there is no knob).
    attr_accessor :can_disable

    # Depths the model distinguishes, lowest first. Empty when thinking is an on/off switch with no depth (or the model doesn't think). A level not listed is clamped to the nearest one — see `clampReasoningLevel`.
    attr_accessor :depths

    # The depth the model runs at when nothing asks for one — what a stored `off` means on a model that cannot be switched off. Known only where a catalogue reports it (OpenRouter's `default_effort`); otherwise `DEFAULT_REASONING_LEVEL` clamped to `depths` is assumed.
    attr_accessor :default_depth

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'thinks' => :'thinks',
        :'can_disable' => :'canDisable',
        :'depths' => :'depths',
        :'default_depth' => :'defaultDepth'
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
        :'thinks' => :'Boolean',
        :'can_disable' => :'Boolean',
        :'depths' => :'Array<AiReasoningDepth>',
        :'default_depth' => :'AiReasoningDepth'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiReasoningSupport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiReasoningSupport`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'thinks')
        self.thinks = attributes[:'thinks']
      else
        self.thinks = nil
      end

      if attributes.key?(:'can_disable')
        self.can_disable = attributes[:'can_disable']
      else
        self.can_disable = nil
      end

      if attributes.key?(:'depths')
        if (value = attributes[:'depths']).is_a?(Array)
          self.depths = value
        end
      else
        self.depths = nil
      end

      if attributes.key?(:'default_depth')
        self.default_depth = attributes[:'default_depth']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @thinks.nil?
        invalid_properties.push('invalid value for "thinks", thinks cannot be nil.')
      end

      if @can_disable.nil?
        invalid_properties.push('invalid value for "can_disable", can_disable cannot be nil.')
      end

      if @depths.nil?
        invalid_properties.push('invalid value for "depths", depths cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @thinks.nil?
      return false if @can_disable.nil?
      return false if @depths.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] thinks Value to be assigned
    def thinks=(thinks)
      if thinks.nil?
        fail ArgumentError, 'thinks cannot be nil'
      end

      @thinks = thinks
    end

    # Custom attribute writer method with validation
    # @param [Object] can_disable Value to be assigned
    def can_disable=(can_disable)
      if can_disable.nil?
        fail ArgumentError, 'can_disable cannot be nil'
      end

      @can_disable = can_disable
    end

    # Custom attribute writer method with validation
    # @param [Object] depths Value to be assigned
    def depths=(depths)
      if depths.nil?
        fail ArgumentError, 'depths cannot be nil'
      end

      @depths = depths
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          thinks == o.thinks &&
          can_disable == o.can_disable &&
          depths == o.depths &&
          default_depth == o.default_depth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [thinks, can_disable, depths, default_depth].hash
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
