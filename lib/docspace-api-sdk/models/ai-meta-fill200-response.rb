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
  class AiMetaFill200Response < ApiModelBase
    # Whether the values were only proposed (`true`) or written as well.
    attr_accessor :dry_run

    # The entry's metadata after the write (or as it stands, with `dryRun`), as `GET api/2.0/files/metadata/{kind}/{id}` returns it.
    attr_accessor :metadata

    # The values written, or proposed with `dryRun`: a typed value for a template field, a string for a custom field.
    attr_accessor :filled

    # The fields left as they were, with the reason for each.
    attr_accessor :unresolved

    # The documents the values were read from.
    attr_accessor :sources

    # The entries that were left out, with the reason for each.
    attr_accessor :skipped

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dry_run' => :'dryRun',
        :'metadata' => :'metadata',
        :'filled' => :'filled',
        :'unresolved' => :'unresolved',
        :'sources' => :'sources',
        :'skipped' => :'skipped'
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
        :'dry_run' => :'Boolean',
        :'metadata' => :'AiEntryMetadata',
        :'filled' => :'Array<AiMetaFill200ResponseFilledInner>',
        :'unresolved' => :'Array<AiMetaFill200ResponseUnresolvedInner>',
        :'sources' => :'Array<AiMetaFill200ResponseSourcesInner>',
        :'skipped' => :'Array<AiMetaGenerate200ResponseSkippedInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiMetaFill200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiMetaFill200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dry_run')
        self.dry_run = attributes[:'dry_run']
      else
        self.dry_run = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      else
        self.metadata = nil
      end

      if attributes.key?(:'filled')
        if (value = attributes[:'filled']).is_a?(Array)
          self.filled = value
        end
      else
        self.filled = nil
      end

      if attributes.key?(:'unresolved')
        if (value = attributes[:'unresolved']).is_a?(Array)
          self.unresolved = value
        end
      else
        self.unresolved = nil
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      else
        self.sources = nil
      end

      if attributes.key?(:'skipped')
        if (value = attributes[:'skipped']).is_a?(Array)
          self.skipped = value
        end
      else
        self.skipped = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @dry_run.nil?
        invalid_properties.push('invalid value for "dry_run", dry_run cannot be nil.')
      end

      if @metadata.nil?
        invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
      end

      if @filled.nil?
        invalid_properties.push('invalid value for "filled", filled cannot be nil.')
      end

      if @unresolved.nil?
        invalid_properties.push('invalid value for "unresolved", unresolved cannot be nil.')
      end

      if @sources.nil?
        invalid_properties.push('invalid value for "sources", sources cannot be nil.')
      end

      if @skipped.nil?
        invalid_properties.push('invalid value for "skipped", skipped cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @dry_run.nil?
      return false if @metadata.nil?
      return false if @filled.nil?
      return false if @unresolved.nil?
      return false if @sources.nil?
      return false if @skipped.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dry_run Value to be assigned
    def dry_run=(dry_run)
      if dry_run.nil?
        fail ArgumentError, 'dry_run cannot be nil'
      end

      @dry_run = dry_run
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      if metadata.nil?
        fail ArgumentError, 'metadata cannot be nil'
      end

      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param [Object] filled Value to be assigned
    def filled=(filled)
      if filled.nil?
        fail ArgumentError, 'filled cannot be nil'
      end

      @filled = filled
    end

    # Custom attribute writer method with validation
    # @param [Object] unresolved Value to be assigned
    def unresolved=(unresolved)
      if unresolved.nil?
        fail ArgumentError, 'unresolved cannot be nil'
      end

      @unresolved = unresolved
    end

    # Custom attribute writer method with validation
    # @param [Object] sources Value to be assigned
    def sources=(sources)
      if sources.nil?
        fail ArgumentError, 'sources cannot be nil'
      end

      @sources = sources
    end

    # Custom attribute writer method with validation
    # @param [Object] skipped Value to be assigned
    def skipped=(skipped)
      if skipped.nil?
        fail ArgumentError, 'skipped cannot be nil'
      end

      @skipped = skipped
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dry_run == o.dry_run &&
          metadata == o.metadata &&
          filled == o.filled &&
          unresolved == o.unresolved &&
          sources == o.sources &&
          skipped == o.skipped
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dry_run, metadata, filled, unresolved, sources, skipped].hash
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
