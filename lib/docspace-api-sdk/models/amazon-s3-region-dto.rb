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
  # An Amazon S3 region.
  class AmazonS3RegionDto < ApiModelBase
    # The region code to send as the region value when configuring an Amazon S3 storage or backup target. It is  the one field of this object that is an argument elsewhere; a code the server does not list here cannot be  reached, so pick one from this list rather than typing it.
    attr_accessor :system_name

    # The region name as Amazon writes it, in English regardless of the portal language, for showing in a  picker next to `systemName`.
    attr_accessor :display_name

    # The Amazon partition the region sits in - the ordinary commercial cloud, the Chinese one, or a government  one. Regions of different partitions are not reachable with the same credentials.
    attr_accessor :partition_name

    # The domain the partition's service host names end in, which differs from partition to partition.
    attr_accessor :partition_dns_suffix

    # The pattern every region code of this partition matches, for validating a code before sending it.
    attr_accessor :partition_region_regex

    # How a service host name of the partition is assembled, with `{service}`, `{region}` and `{dnsSuffix}` to  be filled in. It is reference material - the portal builds its own endpoints from `systemName`.
    attr_accessor :hostname_template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'system_name' => :'systemName',
        :'display_name' => :'displayName',
        :'partition_name' => :'partitionName',
        :'partition_dns_suffix' => :'partitionDnsSuffix',
        :'partition_region_regex' => :'partitionRegionRegex',
        :'hostname_template' => :'hostnameTemplate'
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
        :'system_name' => :'String',
        :'display_name' => :'String',
        :'partition_name' => :'String',
        :'partition_dns_suffix' => :'String',
        :'partition_region_regex' => :'String',
        :'hostname_template' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'system_name',
        :'display_name',
        :'partition_name',
        :'partition_dns_suffix',
        :'partition_region_regex',
        :'hostname_template'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AmazonS3RegionDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AmazonS3RegionDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'system_name')
        self.system_name = attributes[:'system_name']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'partition_name')
        self.partition_name = attributes[:'partition_name']
      end

      if attributes.key?(:'partition_dns_suffix')
        self.partition_dns_suffix = attributes[:'partition_dns_suffix']
      end

      if attributes.key?(:'partition_region_regex')
        self.partition_region_regex = attributes[:'partition_region_regex']
      end

      if attributes.key?(:'hostname_template')
        self.hostname_template = attributes[:'hostname_template']
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
          system_name == o.system_name &&
          display_name == o.display_name &&
          partition_name == o.partition_name &&
          partition_dns_suffix == o.partition_dns_suffix &&
          partition_region_regex == o.partition_region_regex &&
          hostname_template == o.hostname_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [system_name, display_name, partition_name, partition_dns_suffix, partition_region_regex, hostname_template].hash
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
