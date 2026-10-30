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
  # The part of a file or folder that depends on how the entry is identified: by a number on the portal, or by a  string on a connected third-party account.
  class ThirdPartyFileEntryDto < FileEntryBaseDto
    # The identifier to pass back to the other operations of this entry. It is a number for storage on the portal  and a string for a connected third-party account, and it is unique only within its own kind, so files and  folders may carry the same value.
    attr_accessor :id

    # The section the entry ultimately lies in, as an identifier that can be listed like any other folder. For an  entry inside a room this is the rooms section, not the room.
    attr_accessor :root_folder_id

    # The folder the entry was deleted from, which is where restoring it puts it back. It is left out of the answer  unless the entry is in the trash.
    attr_accessor :origin_id

    # The room the entry was deleted from, left out of the answer for anything that was not deleted out of a room.
    attr_accessor :origin_room_id

    # The name of the folder the entry was deleted from, for showing where it would be restored to. It is null for  an entry that is not in the trash.
    attr_accessor :origin_title

    # The name of the room the entry was deleted from, null for anything that was not deleted out of a room.
    attr_accessor :origin_room_title

    # Whether the calling account may change who has access to the entry, and so whether offering a sharing dialog  for it makes sense. It is false in rooms whose access is fixed by the room itself, such as a private one, even  for its manager.
    attr_accessor :can_share

    attr_accessor :share_settings

    attr_accessor :security

    attr_accessor :available_share_rights

    # The token of the link the entry is being read through, which is the value the external-share operations expect  and which also has to be carried by the download and preview addresses. It is null whenever the entry is not  being read through a link.
    attr_accessor :request_token

    # Set when the link being used was made for this very entry, and false when the entry is reached through a link  to the room around it. It is null when no link is involved.
    attr_accessor :external

    # When the link being used stops working, written with the offset of the portal's time zone. It is null for a  link that never expires and whenever no link is involved.
    attr_accessor :expiration_date

    # Set when the link being used has already passed its expiration date, which is why the entry cannot be opened  even though it is described here. It is null when no link is involved.
    attr_accessor :is_link_expired

    # The IDs of the metadata templates assigned to the file entry.
    attr_accessor :assigned_metadata_templates

    # Where the search text of the listing was met in the metadata of the entry: one item per string value holding  the text, in the order of the fields. Present only in a listing filtered by text, and only for the entries whose  metadata contain it; an entry found by its title alone carries nothing here.
    attr_accessor :metadata_matches

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
        :'root_folder_id' => :'rootFolderId',
        :'origin_id' => :'originId',
        :'origin_room_id' => :'originRoomId',
        :'origin_title' => :'originTitle',
        :'origin_room_title' => :'originRoomTitle',
        :'can_share' => :'canShare',
        :'share_settings' => :'shareSettings',
        :'security' => :'security',
        :'available_share_rights' => :'availableShareRights',
        :'request_token' => :'requestToken',
        :'external' => :'external',
        :'expiration_date' => :'expirationDate',
        :'is_link_expired' => :'isLinkExpired',
        :'assigned_metadata_templates' => :'assignedMetadataTemplates',
        :'metadata_matches' => :'metadataMatches'
      }
    end

    # Returns attribute mapping this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attribute_map
      superclass.acceptable_attribute_map.merge(attribute_map)
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'root_folder_id' => :'String',
        :'origin_id' => :'String',
        :'origin_room_id' => :'String',
        :'origin_title' => :'String',
        :'origin_room_title' => :'String',
        :'can_share' => :'Boolean',
        :'share_settings' => :'AiFileEntryDtoAllOfShareSettings',
        :'security' => :'AiFileEntryDtoAllOfSecurity',
        :'available_share_rights' => :'AiFileEntryDtoAllOfAvailableShareRights',
        :'request_token' => :'String',
        :'external' => :'Boolean',
        :'expiration_date' => :'ApiDateTime',
        :'is_link_expired' => :'Boolean',
        :'assigned_metadata_templates' => :'Array<Integer>',
        :'metadata_matches' => :'Array<MetadataMatchDto>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'root_folder_id',
        :'origin_id',
        :'origin_room_id',
        :'origin_title',
        :'origin_room_title',
        :'share_settings',
        :'security',
        :'available_share_rights',
        :'request_token',
        :'external',
        :'is_link_expired',
        :'assigned_metadata_templates',
        :'metadata_matches'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FileEntryBaseDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ThirdPartyFileEntryDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ThirdPartyFileEntryDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'root_folder_id')
        self.root_folder_id = attributes[:'root_folder_id']
      end

      if attributes.key?(:'origin_id')
        self.origin_id = attributes[:'origin_id']
      end

      if attributes.key?(:'origin_room_id')
        self.origin_room_id = attributes[:'origin_room_id']
      end

      if attributes.key?(:'origin_title')
        self.origin_title = attributes[:'origin_title']
      end

      if attributes.key?(:'origin_room_title')
        self.origin_room_title = attributes[:'origin_room_title']
      end

      if attributes.key?(:'can_share')
        self.can_share = attributes[:'can_share']
      end

      if attributes.key?(:'share_settings')
        self.share_settings = attributes[:'share_settings']
      end

      if attributes.key?(:'security')
        self.security = attributes[:'security']
      end

      if attributes.key?(:'available_share_rights')
        self.available_share_rights = attributes[:'available_share_rights']
      end

      if attributes.key?(:'request_token')
        self.request_token = attributes[:'request_token']
      end

      if attributes.key?(:'external')
        self.external = attributes[:'external']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'is_link_expired')
        self.is_link_expired = attributes[:'is_link_expired']
      end

      if attributes.key?(:'assigned_metadata_templates')
        if (value = attributes[:'assigned_metadata_templates']).is_a?(Array)
          self.assigned_metadata_templates = value
        end
      end

      if attributes.key?(:'metadata_matches')
        if (value = attributes[:'metadata_matches']).is_a?(Array)
          self.metadata_matches = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          root_folder_id == o.root_folder_id &&
          origin_id == o.origin_id &&
          origin_room_id == o.origin_room_id &&
          origin_title == o.origin_title &&
          origin_room_title == o.origin_room_title &&
          can_share == o.can_share &&
          share_settings == o.share_settings &&
          security == o.security &&
          available_share_rights == o.available_share_rights &&
          request_token == o.request_token &&
          external == o.external &&
          expiration_date == o.expiration_date &&
          is_link_expired == o.is_link_expired &&
          assigned_metadata_templates == o.assigned_metadata_templates &&
          metadata_matches == o.metadata_matches && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, root_folder_id, origin_id, origin_room_id, origin_title, origin_room_title, can_share, share_settings, security, available_share_rights, request_token, external, expiration_date, is_link_expired, assigned_metadata_templates, metadata_matches].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
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
      hash = super
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
