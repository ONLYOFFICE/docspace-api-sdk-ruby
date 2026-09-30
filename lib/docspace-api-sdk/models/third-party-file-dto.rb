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
  # A stored file as the calling account sees it: where it lives, which revision this is, how it can be opened and  what the portal is currently doing with it.
  class ThirdPartyFileDto < ApiModelBase
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

    # The folder the file is stored in. When the file was reached through a share and the caller cannot open its  real parent, the identifier of the Shared with me section is reported instead, so this is where the file is  visible rather than where it physically sits.
    attr_accessor :folder_id

    # The revision this entry describes. It starts at 1 and moves to the next number each time new content is stored  over the file, except for an editing session opened against the file itself, which replaces the content and  keeps the number. `GET api/2.0/files/file/{fileId}/history` lists them all.
    attr_accessor :version

    # Groups revisions that belong together, which is how a history can fold a long editing session into one entry:  versions saved inside one session share this number, and an upload over the file starts a new group.
    attr_accessor :version_group

    # The size already formatted for display, with a unit and the separators of the caller's language. Read  `pureContentLength` for a number to calculate with.
    attr_accessor :content_length

    # The size of the stored content in bytes, and null for an empty file.
    attr_accessor :pure_content_length

    # What the portal is currently doing with the file and how the caller stands towards it - open in the editor,  unread, being converted, and so on. The value is a bit mask that combines those states, so a file can report a  number that matches none of the published members on its own.
    attr_accessor :file_status

    # The accounts that have the file open in the editor at this moment, as account identifier to display name, and  empty when nobody has. The all-zero identifier stands for people who came in through an external link without  signing in, and its name carries their number in brackets when there is more than one.
    attr_accessor :editing_by

    # Not a property of the file at all: it repeats, inverted, the calling account's own switch for new-item badges,  so it is the same in every entry of one answer. True means that account has badges turned off.
    attr_accessor :mute

    # The address that returns the bytes of the file - a download, in spite of the name; `webUrl` is the address a  person opens. When the file was reached through an external link the address carries the key of that link, so  it keeps working without signing in.
    attr_accessor :view_url

    # The page that opens the file in a browser: the editor for a format the portal edits, the media viewer for  pictures, audio and video, and the download address for a format it cannot show at all.
    attr_accessor :web_url

    # The broad kind of content, worked out from the extension, which is what a client uses to pick an icon or a  viewer without parsing `fileExst` itself.
    attr_accessor :file_type

    # The extension of the stored file, leading dot included and always lower case. For a format the portal keeps in  a converted shape this is the extension it is served under, not the one it was uploaded with.
    attr_accessor :file_exst

    # The note kept with this revision. The portal writes it itself for revisions it creates, an upload over an  existing file among them, and an editor stores the note a person typed when saving a version.
    attr_accessor :comment

    # True for a file in a private room, whose content the server never sees and which therefore cannot be converted  or taken over by an upload. Null, rather than false, for an ordinary file.
    attr_accessor :encrypted

    # The address of the generated preview image. It is filled in only while `thumbnailStatus` says the preview has  been created, and it carries a suffix that changes with the file, so an image cached for an earlier revision  is not reused.
    attr_accessor :thumbnail_url

    # How far the preview image has got. Only the created state means `thumbnailUrl` holds an address; the others  mean there is none, either because it is still being produced or because this format has no preview.
    attr_accessor :thumbnail_status

    # True while the file is held under a lock that stops anyone but its holder from editing it, and null rather  than false when there is no lock. `lockedBy` names the holder unless the caller is the holder.
    attr_accessor :locked

    # The display name of the account holding the lock, and null when the caller holds it - so `locked` true  together with no name here means the lock is the caller's own.
    attr_accessor :locked_by

    # For a fillable PDF form, whether the caller already has a filling draft of it, in which case `draftLocation`  says where that draft lives. Null for anything that is not a form.
    attr_accessor :has_draft

    # How far the filling of this form has got for the calling account, and whose turn it is now. It is worked out  only inside a virtual data room, where filling runs in steps; everywhere else it stays at the none value.
    attr_accessor :form_filling_status

    # Whether the file is a PDF, and so offered as a fillable form. It is null for any other file type.
    attr_accessor :is_form

    # True while a spreadsheet is in the mode where each person sorts and filters their own view without changing  what the others see, and null rather than false when it is not.
    attr_accessor :custom_filter_enabled

    # The display name of the account that turned that mode on, and null when the caller turned it on themselves.
    attr_accessor :custom_filter_enabled_by

    # For a form in a room for filling, whether it has been released for filling; until then it is still being  prepared and only the people running the room work with it. Null for a file this does not apply to.
    attr_accessor :start_filling

    # True during the short window in which a released form is still being written out by the editor. Neither  filling nor editing is accepted while it lasts, so a client should wait and read the file again.
    attr_accessor :is_filling_preparing

    # Left empty by the portal: the folder holding the caller's draft is reported in `draftLocation` instead.
    attr_accessor :in_process_folder_id

    # Left empty by the portal, like the identifier beside it; the draft's folder is named in `draftLocation`.
    attr_accessor :in_process_folder_title

    # The folder that collects the completed copies of this form. It is filled in only for the original form of a  room for filling, and only for a caller allowed to work with that form; null everywhere else.
    attr_accessor :results_folder_id

    # Where the caller's own filling draft of this form is kept. Null when there is no draft yet, which is the same  thing `hasDraft` reports.
    attr_accessor :draft_location

    attr_accessor :view_accessibility

    # The moment the caller last opened the file. It is kept per account and is what orders the Recent section, so  it is null for a file this account has never opened. Written with the offset of the portal's time zone.
    attr_accessor :last_opened

    # The moment the file falls under the lifetime rule of the room holding it and is removed. It is counted from  the first revision rather than the latest one, so editing a file does not postpone it, and it is null when the  room sets no lifetime. Written with the offset of the portal's time zone.
    attr_accessor :expired

    # How far the indexing of the file's content for AI search has got. It is null for a file that has never been  queued for indexing, which is every file while the feature is off for the portal.
    attr_accessor :vectorization_status

    # The table collecting the submitted values of this form in the external database configured for its room. The  field is left out of the answer entirely when the form has no such table.
    attr_accessor :external_db_table_name

    # The pixel size of the picture, measured by reading the stored file rather than taken from any stored metadata.  Null for anything that is not a picture the portal can show, and also when the file could not be read.
    attr_accessor :dimensions

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
        :'is_link_expired' => :'isLinkExpired',
        :'folder_id' => :'folderId',
        :'version' => :'version',
        :'version_group' => :'versionGroup',
        :'content_length' => :'contentLength',
        :'pure_content_length' => :'pureContentLength',
        :'file_status' => :'fileStatus',
        :'editing_by' => :'editingBy',
        :'mute' => :'mute',
        :'view_url' => :'viewUrl',
        :'web_url' => :'webUrl',
        :'file_type' => :'fileType',
        :'file_exst' => :'fileExst',
        :'comment' => :'comment',
        :'encrypted' => :'encrypted',
        :'thumbnail_url' => :'thumbnailUrl',
        :'thumbnail_status' => :'thumbnailStatus',
        :'locked' => :'locked',
        :'locked_by' => :'lockedBy',
        :'has_draft' => :'hasDraft',
        :'form_filling_status' => :'formFillingStatus',
        :'is_form' => :'isForm',
        :'custom_filter_enabled' => :'customFilterEnabled',
        :'custom_filter_enabled_by' => :'customFilterEnabledBy',
        :'start_filling' => :'startFilling',
        :'is_filling_preparing' => :'isFillingPreparing',
        :'in_process_folder_id' => :'inProcessFolderId',
        :'in_process_folder_title' => :'inProcessFolderTitle',
        :'results_folder_id' => :'resultsFolderId',
        :'draft_location' => :'draftLocation',
        :'view_accessibility' => :'viewAccessibility',
        :'last_opened' => :'lastOpened',
        :'expired' => :'expired',
        :'vectorization_status' => :'vectorizationStatus',
        :'external_db_table_name' => :'externalDbTableName',
        :'dimensions' => :'dimensions'
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
        :'access' => :'FileShare',
        :'shared_by' => :'EmployeeDto',
        :'owned_by' => :'EmployeeDto',
        :'shared' => :'Boolean',
        :'shared_for_user' => :'Boolean',
        :'shared_external' => :'Boolean',
        :'parent_shared' => :'Boolean',
        :'short_web_url' => :'String',
        :'created' => :'ApiDateTime',
        :'created_by' => :'EmployeeDto',
        :'updated' => :'ApiDateTime',
        :'auto_delete' => :'ApiDateTime',
        :'root_folder_type' => :'FolderType',
        :'parent_room_type' => :'FolderType',
        :'updated_by' => :'EmployeeDto',
        :'provider_item' => :'Boolean',
        :'provider_key' => :'String',
        :'provider_id' => :'Integer',
        :'order' => :'String',
        :'is_favorite' => :'Boolean',
        :'file_entry_type' => :'FileEntryType',
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
        :'folder_id' => :'String',
        :'version' => :'Integer',
        :'version_group' => :'Integer',
        :'content_length' => :'String',
        :'pure_content_length' => :'Integer',
        :'file_status' => :'FileStatus',
        :'editing_by' => :'Hash<String, String>',
        :'mute' => :'Boolean',
        :'view_url' => :'String',
        :'web_url' => :'String',
        :'file_type' => :'FileType',
        :'file_exst' => :'String',
        :'comment' => :'String',
        :'encrypted' => :'Boolean',
        :'thumbnail_url' => :'String',
        :'thumbnail_status' => :'Thumbnail',
        :'locked' => :'Boolean',
        :'locked_by' => :'String',
        :'has_draft' => :'Boolean',
        :'form_filling_status' => :'FormFillingStatus',
        :'is_form' => :'Boolean',
        :'custom_filter_enabled' => :'Boolean',
        :'custom_filter_enabled_by' => :'String',
        :'start_filling' => :'Boolean',
        :'is_filling_preparing' => :'Boolean',
        :'in_process_folder_id' => :'Integer',
        :'in_process_folder_title' => :'String',
        :'results_folder_id' => :'Integer',
        :'draft_location' => :'ThirdPartyDraftLocation',
        :'view_accessibility' => :'FileDtoAllOfViewAccessibility',
        :'last_opened' => :'ApiDateTime',
        :'expired' => :'ApiDateTime',
        :'vectorization_status' => :'VectorizationStatus',
        :'external_db_table_name' => :'String',
        :'dimensions' => :'Size'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'share_settings',
        :'security',
        :'available_share_rights',
        :'folder_id',
        :'content_length',
        :'pure_content_length',
        :'view_url',
        :'web_url',
        :'file_exst',
        :'comment',
        :'encrypted',
        :'thumbnail_url',
        :'locked',
        :'locked_by',
        :'has_draft',
        :'is_form',
        :'custom_filter_enabled',
        :'custom_filter_enabled_by',
        :'start_filling',
        :'is_filling_preparing',
        :'in_process_folder_id',
        :'in_process_folder_title',
        :'results_folder_id',
        :'view_accessibility',
        :'external_db_table_name',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ThirdPartyFileEntryDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ThirdPartyFileDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ThirdPartyFileDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
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

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_group')
        self.version_group = attributes[:'version_group']
      end

      if attributes.key?(:'content_length')
        self.content_length = attributes[:'content_length']
      end

      if attributes.key?(:'pure_content_length')
        self.pure_content_length = attributes[:'pure_content_length']
      end

      if attributes.key?(:'file_status')
        self.file_status = attributes[:'file_status']
      end

      if attributes.key?(:'editing_by')
        if (value = attributes[:'editing_by']).is_a?(Hash)
          self.editing_by = value
        end
      end

      if attributes.key?(:'mute')
        self.mute = attributes[:'mute']
      end

      if attributes.key?(:'view_url')
        self.view_url = attributes[:'view_url']
      end

      if attributes.key?(:'web_url')
        self.web_url = attributes[:'web_url']
      end

      if attributes.key?(:'file_type')
        self.file_type = attributes[:'file_type']
      end

      if attributes.key?(:'file_exst')
        self.file_exst = attributes[:'file_exst']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'encrypted')
        self.encrypted = attributes[:'encrypted']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'thumbnail_status')
        self.thumbnail_status = attributes[:'thumbnail_status']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'locked_by')
        self.locked_by = attributes[:'locked_by']
      end

      if attributes.key?(:'has_draft')
        self.has_draft = attributes[:'has_draft']
      end

      if attributes.key?(:'form_filling_status')
        self.form_filling_status = attributes[:'form_filling_status']
      end

      if attributes.key?(:'is_form')
        self.is_form = attributes[:'is_form']
      end

      if attributes.key?(:'custom_filter_enabled')
        self.custom_filter_enabled = attributes[:'custom_filter_enabled']
      end

      if attributes.key?(:'custom_filter_enabled_by')
        self.custom_filter_enabled_by = attributes[:'custom_filter_enabled_by']
      end

      if attributes.key?(:'start_filling')
        self.start_filling = attributes[:'start_filling']
      end

      if attributes.key?(:'is_filling_preparing')
        self.is_filling_preparing = attributes[:'is_filling_preparing']
      end

      if attributes.key?(:'in_process_folder_id')
        self.in_process_folder_id = attributes[:'in_process_folder_id']
      end

      if attributes.key?(:'in_process_folder_title')
        self.in_process_folder_title = attributes[:'in_process_folder_title']
      end

      if attributes.key?(:'results_folder_id')
        self.results_folder_id = attributes[:'results_folder_id']
      end

      if attributes.key?(:'draft_location')
        self.draft_location = attributes[:'draft_location']
      end

      if attributes.key?(:'view_accessibility')
        self.view_accessibility = attributes[:'view_accessibility']
      end

      if attributes.key?(:'last_opened')
        self.last_opened = attributes[:'last_opened']
      end

      if attributes.key?(:'expired')
        self.expired = attributes[:'expired']
      end

      if attributes.key?(:'vectorization_status')
        self.vectorization_status = attributes[:'vectorization_status']
      end

      if attributes.key?(:'external_db_table_name')
        self.external_db_table_name = attributes[:'external_db_table_name']
      end

      if attributes.key?(:'dimensions')
        self.dimensions = attributes[:'dimensions']
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
          is_link_expired == o.is_link_expired &&
          folder_id == o.folder_id &&
          version == o.version &&
          version_group == o.version_group &&
          content_length == o.content_length &&
          pure_content_length == o.pure_content_length &&
          file_status == o.file_status &&
          editing_by == o.editing_by &&
          mute == o.mute &&
          view_url == o.view_url &&
          web_url == o.web_url &&
          file_type == o.file_type &&
          file_exst == o.file_exst &&
          comment == o.comment &&
          encrypted == o.encrypted &&
          thumbnail_url == o.thumbnail_url &&
          thumbnail_status == o.thumbnail_status &&
          locked == o.locked &&
          locked_by == o.locked_by &&
          has_draft == o.has_draft &&
          form_filling_status == o.form_filling_status &&
          is_form == o.is_form &&
          custom_filter_enabled == o.custom_filter_enabled &&
          custom_filter_enabled_by == o.custom_filter_enabled_by &&
          start_filling == o.start_filling &&
          is_filling_preparing == o.is_filling_preparing &&
          in_process_folder_id == o.in_process_folder_id &&
          in_process_folder_title == o.in_process_folder_title &&
          results_folder_id == o.results_folder_id &&
          draft_location == o.draft_location &&
          view_accessibility == o.view_accessibility &&
          last_opened == o.last_opened &&
          expired == o.expired &&
          vectorization_status == o.vectorization_status &&
          external_db_table_name == o.external_db_table_name &&
          dimensions == o.dimensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, access, shared_by, owned_by, shared, shared_for_user, shared_external, parent_shared, short_web_url, created, created_by, updated, auto_delete, root_folder_type, parent_room_type, updated_by, provider_item, provider_key, provider_id, order, is_favorite, file_entry_type, id, root_folder_id, origin_id, origin_room_id, origin_title, origin_room_title, can_share, share_settings, security, available_share_rights, request_token, external, expiration_date, is_link_expired, folder_id, version, version_group, content_length, pure_content_length, file_status, editing_by, mute, view_url, web_url, file_type, file_exst, comment, encrypted, thumbnail_url, thumbnail_status, locked, locked_by, has_draft, form_filling_status, is_form, custom_filter_enabled, custom_filter_enabled_by, start_filling, is_filling_preparing, in_process_folder_id, in_process_folder_title, results_folder_id, draft_location, view_accessibility, last_opened, expired, vectorization_status, external_db_table_name, dimensions].hash
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
