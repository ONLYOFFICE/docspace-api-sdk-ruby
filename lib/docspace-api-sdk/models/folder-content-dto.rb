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
  # One page of the contents of a folder or of a section: its entries split into files and folders, the folder itself,  and the counters needed to page through the rest.
  class FolderContentDto < ApiModelBase
    # The file entries of this page. It is empty when the folder holds no files, when the filters matched none of  them, and in the sections that list rooms only.
    attr_accessor :files

    # The folder entries of this page. In a section of rooms these entries are the rooms themselves, which is where  their type, tags, logo and quota are read from.
    attr_accessor :folders

    # The folder or section the page was read from, with its own title, type and access rights. It describes the  container, not the entries, and is filled in even when the page is empty.
    attr_accessor :current

    attr_accessor :path_parts

    # The position of the first entry of this page in the whole result, echoing the requested start index. Add the  number of entries received to it to ask for the next page.
    attr_accessor :start_index

    # How many entries this page carries, files and folders together. A page shorter than the requested size means  the result is exhausted.
    attr_accessor :count

    # How many entries matched before paging was applied, across the whole folder. Page until the start index plus  the entries received reaches it.
    attr_accessor :total

    # How many entries of this folder are marked as new for the caller. It is 0 for every listing when the account  has switched the new-item badges off, so a zero here does not prove that nothing has changed.
    attr_accessor :new

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'files' => :'files',
        :'folders' => :'folders',
        :'current' => :'current',
        :'path_parts' => :'pathParts',
        :'start_index' => :'startIndex',
        :'count' => :'count',
        :'total' => :'total',
        :'new' => :'new'
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
        :'files' => :'Array<FileEntryBaseDto>',
        :'folders' => :'Array<FileEntryBaseDto>',
        :'current' => :'FolderDto',
        :'path_parts' => :'Object',
        :'start_index' => :'Integer',
        :'count' => :'Integer',
        :'total' => :'Integer',
        :'new' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'files',
        :'folders',
        :'path_parts',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FolderContentDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FolderContentDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.key?(:'folders')
        if (value = attributes[:'folders']).is_a?(Array)
          self.folders = value
        end
      end

      if attributes.key?(:'current')
        self.current = attributes[:'current']
      end

      if attributes.key?(:'path_parts')
        self.path_parts = attributes[:'path_parts']
      else
        self.path_parts = nil
      end

      if attributes.key?(:'start_index')
        self.start_index = attributes[:'start_index']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      else
        self.total = nil
      end

      if attributes.key?(:'new')
        self.new = attributes[:'new']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @total.nil?
        invalid_properties.push('invalid value for "total", total cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @total.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] total Value to be assigned
    def total=(total)
      if total.nil?
        fail ArgumentError, 'total cannot be nil'
      end

      @total = total
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          files == o.files &&
          folders == o.folders &&
          current == o.current &&
          path_parts == o.path_parts &&
          start_index == o.start_index &&
          count == o.count &&
          total == o.total &&
          new == o.new
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [files, folders, current, path_parts, start_index, count, total, new].hash
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
