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
  # One saved revision of a file, as the editing service recorded it.
  class EditHistoryDto < ApiModelBase
    # The file the revision belongs to; every entry of one history carries the same value.
    attr_accessor :id

    # The document key of this revision, which the editing service uses to tell the revisions of a file apart and to  reuse the copy it has cached. Hand it back unchanged when asking the editor for this revision.
    attr_accessor :key

    # The number of the revision, counting up from 1 in the order the revisions were saved. It is the value the  operations that show the changes of a revision or restore it expect.
    attr_accessor :version

    # Groups the revisions written by one editing session: entries sharing this number were saved while the same  session was open, which is how a client collapses a long list of revisions into the versions a person would  recognise.
    attr_accessor :version_group

    # The account that saved the revision. A revision saved by an account that no longer exists, or through an  anonymous link, is reported as a guest.
    attr_accessor :user

    # When the revision was saved, written with the offset of the portal's time zone rather than as plain UTC. The  times of one history are consistent with each other, so order and display the revisions by them.
    attr_accessor :created

    # The change record the editing service stored for this revision, as the raw JSON it was written in, and empty  for a revision the portal has no record for - one uploaded as a whole file, for instance. `changes` is the  same record already parsed.
    attr_accessor :changes_history

    # The single changes this revision introduced - who made each of them and when - taken from the stored change  record. It comes back empty both for a revision whose changes were never recorded and for one whose record is  in a format the portal no longer reads, so an empty list is not proof that nothing changed.
    attr_accessor :changes

    # The build of the editing service that wrote the change record of this revision, taken from the record itself;  empty when the portal holds no record for the revision.
    attr_accessor :server_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'key' => :'key',
        :'version' => :'version',
        :'version_group' => :'versionGroup',
        :'user' => :'user',
        :'created' => :'created',
        :'changes_history' => :'changesHistory',
        :'changes' => :'changes',
        :'server_version' => :'serverVersion'
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
        :'id' => :'Integer',
        :'key' => :'String',
        :'version' => :'Integer',
        :'version_group' => :'Integer',
        :'user' => :'EditHistoryAuthor',
        :'created' => :'ApiDateTime',
        :'changes_history' => :'String',
        :'changes' => :'Array<EditHistoryChangesWrapper>',
        :'server_version' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'key',
        :'changes_history',
        :'changes',
        :'server_version'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::EditHistoryDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::EditHistoryDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_group')
        self.version_group = attributes[:'version_group']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'changes_history')
        self.changes_history = attributes[:'changes_history']
      end

      if attributes.key?(:'changes')
        if (value = attributes[:'changes']).is_a?(Array)
          self.changes = value
        end
      end

      if attributes.key?(:'server_version')
        self.server_version = attributes[:'server_version']
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
          id == o.id &&
          key == o.key &&
          version == o.version &&
          version_group == o.version_group &&
          user == o.user &&
          created == o.created &&
          changes_history == o.changes_history &&
          changes == o.changes &&
          server_version == o.server_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, key, version, version_group, user, created, changes_history, changes, server_version].hash
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
