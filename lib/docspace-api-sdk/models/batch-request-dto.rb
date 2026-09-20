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
  # The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
  class BatchRequestDto < ApiModelBase
    # Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list.
    attr_accessor :return_single_operation

    # The folders to move or copy, by id. A number addresses a folder stored in the portal itself, a string  addresses a folder on a connected third-party account, and both kinds may be sent in one list.
    attr_accessor :folder_ids

    # The files to move or copy, by id. A number addresses a file stored in the portal itself, a string addresses a  file on a connected third-party account, and both kinds may be sent in one list.
    attr_accessor :file_ids

    attr_accessor :dest_folder_id

    # What happens to an item whose name is already taken in the destination folder: `skip` leaves it where it is,  `overwrite` replaces the entry at the destination, and `duplicate` places it beside that entry under a name  with a numeric suffix. `GET api/2.0/files/fileops/move` reports which items would clash.
    attr_accessor :conflict_resolve_type

    # Whether the finished operation is still reported: `false` keeps its final record readable through  `GET api/2.0/files/fileops` until it has been read once, `true` drops the record as soon as the work is done.  It deletes nothing: a move takes the sources away in any case, and a copy always leaves them.
    attr_accessor :delete_after

    # What is taken from a listed folder: `false` moves or copies the folder itself, `true` takes only what it  contains, so its files and subfolders land in the destination and the folder is not recreated there.
    attr_accessor :content

    # Marks every copied PDF form as a draft prepared for filling, which is how such a copy reports its filling  status in a virtual data room. Files that are not forms are left unaffected.
    attr_accessor :to_fill_out

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
        :'return_single_operation' => :'returnSingleOperation',
        :'folder_ids' => :'folderIds',
        :'file_ids' => :'fileIds',
        :'dest_folder_id' => :'destFolderId',
        :'conflict_resolve_type' => :'conflictResolveType',
        :'delete_after' => :'deleteAfter',
        :'content' => :'content',
        :'to_fill_out' => :'toFillOut'
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
        :'return_single_operation' => :'Boolean',
        :'folder_ids' => :'Array<BatchRequestDtoAllOfFolderIds>',
        :'file_ids' => :'Array<BatchRequestDtoAllOfFileIds>',
        :'dest_folder_id' => :'BatchRequestDtoAllOfDestFolderId',
        :'conflict_resolve_type' => :'FileConflictResolveType',
        :'delete_after' => :'Boolean',
        :'content' => :'Boolean',
        :'to_fill_out' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'folder_ids',
        :'file_ids',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FileOperationRequestBaseDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::BatchRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::BatchRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'return_single_operation')
        self.return_single_operation = attributes[:'return_single_operation']
      end

      if attributes.key?(:'folder_ids')
        if (value = attributes[:'folder_ids']).is_a?(Array)
          self.folder_ids = value
        end
      end

      if attributes.key?(:'file_ids')
        if (value = attributes[:'file_ids']).is_a?(Array)
          self.file_ids = value
        end
      end

      if attributes.key?(:'dest_folder_id')
        self.dest_folder_id = attributes[:'dest_folder_id']
      end

      if attributes.key?(:'conflict_resolve_type')
        self.conflict_resolve_type = attributes[:'conflict_resolve_type']
      end

      if attributes.key?(:'delete_after')
        self.delete_after = attributes[:'delete_after']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'to_fill_out')
        self.to_fill_out = attributes[:'to_fill_out']
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
          return_single_operation == o.return_single_operation &&
          folder_ids == o.folder_ids &&
          file_ids == o.file_ids &&
          dest_folder_id == o.dest_folder_id &&
          conflict_resolve_type == o.conflict_resolve_type &&
          delete_after == o.delete_after &&
          content == o.content &&
          to_fill_out == o.to_fill_out
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [return_single_operation, folder_ids, file_ids, dest_folder_id, conflict_resolve_type, delete_after, content, to_fill_out].hash
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
