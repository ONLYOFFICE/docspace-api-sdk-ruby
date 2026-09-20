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
  # The progress of one file conversion, together with the converted file once it exists.
  class ConversationResultDto < ApiModelBase
    # The identifier of the conversion entry. The portal leaves it empty for file conversions, so a caller follows  its own conversion by the file it queued rather than by this value.
    attr_accessor :id

    # Tells which kind of file operation the entry describes, so that a conversion can be told apart from the copy,  move and download entries that share this envelope. A conversion entry reports the conversion type.
    attr_accessor :operation

    # How far the conversion has got, counted in percent from 0 while it is only queued to 100 once it is over -  whether it ended with a converted file or with an error. 100 is the value a polling caller waits for.
    attr_accessor :progress

    # Describes what is being converted: the identifier of the source file, the version that was taken and whether  an existing result may be overwritten, packed as a JSON object inside a string. It is what identifies the  entry when several conversions of the same caller are in flight.
    attr_accessor :source

    attr_accessor :result

    # The reason the conversion stopped, in the language of the caller, and empty while it is running and after it  has succeeded. `progress` reaches 100 for a failure as well, so this field is what separates a converted file  from a broken conversion; a conversion still unfinished after ten minutes ends with a timeout reported here.
    attr_accessor :error

    # Reports whether the portal has taken the entry as far as it goes: `1` once the conversion has finished or  failed, and empty while it is still queued or still being converted. It is the bookkeeping of the conversion  queue rather than a result - what happened is in `progress`, `error` and `result`.
    attr_accessor :processed

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
        :'id' => :'id',
        :'operation' => :'Operation',
        :'progress' => :'progress',
        :'source' => :'source',
        :'result' => :'result',
        :'error' => :'error',
        :'processed' => :'processed'
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
        :'id' => :'String',
        :'operation' => :'FileOperationType',
        :'progress' => :'Integer',
        :'source' => :'String',
        :'result' => :'Object',
        :'error' => :'String',
        :'processed' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'source',
        :'result',
        :'error',
        :'processed'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ConversationResultDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ConversationResultDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      else
        self.operation = nil
      end

      if attributes.key?(:'progress')
        self.progress = attributes[:'progress']
      else
        self.progress = nil
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'processed')
        self.processed = attributes[:'processed']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @operation.nil?
        invalid_properties.push('invalid value for "operation", operation cannot be nil.')
      end

      if @progress.nil?
        invalid_properties.push('invalid value for "progress", progress cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @operation.nil?
      return false if @progress.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] operation Value to be assigned
    def operation=(operation)
      if operation.nil?
        fail ArgumentError, 'operation cannot be nil'
      end

      @operation = operation
    end

    # Custom attribute writer method with validation
    # @param [Object] progress Value to be assigned
    def progress=(progress)
      if progress.nil?
        fail ArgumentError, 'progress cannot be nil'
      end

      @progress = progress
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          operation == o.operation &&
          progress == o.progress &&
          source == o.source &&
          result == o.result &&
          error == o.error &&
          processed == o.processed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, operation, progress, source, result, error, processed].hash
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
