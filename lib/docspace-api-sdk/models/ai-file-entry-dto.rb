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
  class AiFileEntryDto < ApiModelBase
    # The name shown for the entry. For a file it carries the extension, which is how the format is recognised, and  for a room it is the room name.
    attr_accessor :title

    # The level the calling account holds on this entry, resolved from its own rights, the groups it belongs to and  any link it came in through. It is the level itself, not what the account may do with it - the action flags  below answer that.
    attr_accessor :access

    # Who gave the calling account the access it is using. It is filled in only while the entry is being read  through a share, and never for a caller without an account.
    attr_accessor :shared_by

    # Who owns the place the entry is shared from - the creator of the room it lies in, or of the personal section  that holds it. It is filled in only while the entry is being read through a share, and never for a caller  without an account.
    attr_accessor :owned_by

    # Whether at least one external link exists for the entry, whichever kind. It says nothing about accounts and  groups - those are counted by the flag for members below.
    attr_accessor :shared

    # Whether at least one account or group has been given rights on the entry directly, as opposed to reaching it  through a link or through the room around it.
    attr_accessor :shared_for_user

    # Whether one of the entry's links is open to people outside the portal, as opposed to a link that only its own  members can follow. This is the flag to watch when the concern is who can reach the content from outside.
    attr_accessor :shared_external

    # Whether the entry is reachable because the room or folder around it is shared, rather than through rights of  its own. A copy or a move takes the entry out of that scope.
    attr_accessor :parent_shared

    # A shortened address that opens the entry through the link it is being read with. It is an empty string  whenever no link applies, which is the usual case for a member browsing their own rooms.
    attr_accessor :short_web_url

    # When the entry was created, written with the offset of the portal's time zone. For a file restored from an  older version this is still the moment the file first appeared.
    attr_accessor :created

    # Who created the entry. It is null for a caller without an account, who is told nothing about the portal's  members.
    attr_accessor :created_by

    # When the entry last changed, written with the offset of the portal's time zone. It is never reported as  earlier than the creation moment, so the two can be compared safely.
    attr_accessor :updated

    # When the entry will disappear on its own, written with the offset of the portal's time zone. It is filled in  only where a removal is actually scheduled - something in the trash while the portal cleans it up  automatically, or a guest's own documents - so a null means nothing is scheduled rather than that the entry is  permanent.
    attr_accessor :auto_delete

    # The section the entry ultimately belongs to, which is what tells a personal document from one inside a room,  from a template and from something in the trash or the archive.
    attr_accessor :root_folder_type

    # The kind of room the entry lies in, which decides what the room allows - filling forms, public links,  indexing. It is null for an entry that is not inside a room at all.
    attr_accessor :parent_room_type

    # Who changed the entry last. It is null for a caller without an account.
    attr_accessor :updated_by

    # Set when the entry is stored on a connected third-party account rather than on the portal, and null when it is  stored on the portal. Such an entry is identified by a string rather than a number, and some operations skip  it.
    attr_accessor :provider_item

    # Which third-party service holds the entry, matching the keys accepted by the third-party operations. It is  null for an entry stored on the portal.
    attr_accessor :provider_key

    # The connected account the entry comes from, for telling apart two connections to the same service. It is null  for an entry stored on the portal.
    attr_accessor :provider_id

    # The place of the entry in a room where the members arrange the content themselves, given as the position of  the entry preceded by the positions of the folders leading to it, separated by dots. It is empty when nothing  has been arranged.
    attr_accessor :order

    # Set when the calling account has marked the entry as a favorite, which is what puts it into the favorites  listing. For a file that is not marked it is null rather than false.
    attr_accessor :is_favorite

    # Tells a folder from a file, and so which of the two shapes the rest of the object has. A room is reported as a  folder here.
    attr_accessor :file_entry_type

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
        :'title' => :'title',
        :'access' => :'access',
        :'shared_by' => :'sharedBy',
        :'owned_by' => :'ownedBy',
        :'shared' => :'shared',
        :'shared_for_user' => :'sharedForUser',
        :'shared_external' => :'sharedExternal',
        :'parent_shared' => :'parentShared',
        :'short_web_url' => :'shortWebUrl',
        :'created' => :'created',
        :'created_by' => :'createdBy',
        :'updated' => :'updated',
        :'auto_delete' => :'autoDelete',
        :'root_folder_type' => :'rootFolderType',
        :'parent_room_type' => :'parentRoomType',
        :'updated_by' => :'updatedBy',
        :'provider_item' => :'providerItem',
        :'provider_key' => :'providerKey',
        :'provider_id' => :'providerId',
        :'order' => :'order',
        :'is_favorite' => :'isFavorite',
        :'file_entry_type' => :'fileEntryType',
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
        :'is_link_expired' => :'isLinkExpired'
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
        :'title' => :'String',
        :'access' => :'AiFileShare',
        :'shared_by' => :'AiEmployeeDto',
        :'owned_by' => :'AiEmployeeDto',
        :'shared' => :'Boolean',
        :'shared_for_user' => :'Boolean',
        :'shared_external' => :'Boolean',
        :'parent_shared' => :'Boolean',
        :'short_web_url' => :'String',
        :'created' => :'AiApiDateTime',
        :'created_by' => :'AiEmployeeDto',
        :'updated' => :'AiApiDateTime',
        :'auto_delete' => :'AiApiDateTime',
        :'root_folder_type' => :'AiFolderType',
        :'parent_room_type' => :'AiFolderType',
        :'updated_by' => :'AiEmployeeDto',
        :'provider_item' => :'Boolean',
        :'provider_key' => :'String',
        :'provider_id' => :'Integer',
        :'order' => :'String',
        :'is_favorite' => :'Boolean',
        :'file_entry_type' => :'AiFileEntryType',
        :'id' => :'Integer',
        :'root_folder_id' => :'Integer',
        :'origin_id' => :'Integer',
        :'origin_room_id' => :'Integer',
        :'origin_title' => :'String',
        :'origin_room_title' => :'String',
        :'can_share' => :'Boolean',
        :'share_settings' => :'AiFileEntryDtoAllOfShareSettings',
        :'security' => :'AiFileEntryDtoAllOfSecurity',
        :'available_share_rights' => :'AiFileEntryDtoAllOfAvailableShareRights',
        :'request_token' => :'String',
        :'external' => :'Boolean',
        :'expiration_date' => :'AiApiDateTime',
        :'is_link_expired' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'origin_title',
        :'origin_room_title',
        :'share_settings',
        :'security',
        :'available_share_rights',
        :'request_token',
        :'external',
        :'is_link_expired'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AiFileEntryBaseDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiFileEntryDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiFileEntryDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'access')
        self.access = attributes[:'access']
      end

      if attributes.key?(:'shared_by')
        self.shared_by = attributes[:'shared_by']
      end

      if attributes.key?(:'owned_by')
        self.owned_by = attributes[:'owned_by']
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.key?(:'shared_for_user')
        self.shared_for_user = attributes[:'shared_for_user']
      end

      if attributes.key?(:'shared_external')
        self.shared_external = attributes[:'shared_external']
      end

      if attributes.key?(:'parent_shared')
        self.parent_shared = attributes[:'parent_shared']
      end

      if attributes.key?(:'short_web_url')
        self.short_web_url = attributes[:'short_web_url']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'auto_delete')
        self.auto_delete = attributes[:'auto_delete']
      end

      if attributes.key?(:'root_folder_type')
        self.root_folder_type = attributes[:'root_folder_type']
      end

      if attributes.key?(:'parent_room_type')
        self.parent_room_type = attributes[:'parent_room_type']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'provider_item')
        self.provider_item = attributes[:'provider_item']
      end

      if attributes.key?(:'provider_key')
        self.provider_key = attributes[:'provider_key']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'is_favorite')
        self.is_favorite = attributes[:'is_favorite']
      end

      if attributes.key?(:'file_entry_type')
        self.file_entry_type = attributes[:'file_entry_type']
      end

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
          title == o.title &&
          access == o.access &&
          shared_by == o.shared_by &&
          owned_by == o.owned_by &&
          shared == o.shared &&
          shared_for_user == o.shared_for_user &&
          shared_external == o.shared_external &&
          parent_shared == o.parent_shared &&
          short_web_url == o.short_web_url &&
          created == o.created &&
          created_by == o.created_by &&
          updated == o.updated &&
          auto_delete == o.auto_delete &&
          root_folder_type == o.root_folder_type &&
          parent_room_type == o.parent_room_type &&
          updated_by == o.updated_by &&
          provider_item == o.provider_item &&
          provider_key == o.provider_key &&
          provider_id == o.provider_id &&
          order == o.order &&
          is_favorite == o.is_favorite &&
          file_entry_type == o.file_entry_type &&
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
          is_link_expired == o.is_link_expired
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, access, shared_by, owned_by, shared, shared_for_user, shared_external, parent_shared, short_web_url, created, created_by, updated, auto_delete, root_folder_type, parent_room_type, updated_by, provider_item, provider_key, provider_id, order, is_favorite, file_entry_type, id, root_folder_id, origin_id, origin_room_id, origin_title, origin_room_title, can_share, share_settings, security, available_share_rights, request_token, external, expiration_date, is_link_expired].hash
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
