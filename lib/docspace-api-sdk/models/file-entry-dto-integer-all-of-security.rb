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
  # The actions that can be performed with the file entry.
  class FileEntryDtoIntegerAllOfSecurity < ApiModelBase
    attr_accessor :read

    attr_accessor :comment

    attr_accessor :fill_forms

    attr_accessor :review

    attr_accessor :create

    attr_accessor :create_from

    attr_accessor :edit

    attr_accessor :delete

    attr_accessor :custom_filter

    attr_accessor :edit_room

    attr_accessor :rename

    attr_accessor :read_history

    attr_accessor :lock

    attr_accessor :edit_history

    attr_accessor :copy_to

    attr_accessor :copy

    attr_accessor :move_to

    attr_accessor :move

    attr_accessor :pin

    attr_accessor :mute

    attr_accessor :edit_access

    attr_accessor :duplicate

    attr_accessor :submit_to_form_gallery

    attr_accessor :download

    attr_accessor :convert

    attr_accessor :copy_shared_link

    attr_accessor :read_links

    attr_accessor :reconnect

    attr_accessor :create_room_from

    attr_accessor :copy_link

    attr_accessor :embed

    attr_accessor :change_owner

    attr_accessor :index_export

    attr_accessor :start_filling

    attr_accessor :filling_status

    attr_accessor :reset_filling

    attr_accessor :stop_filling

    attr_accessor :open_form

    attr_accessor :edit_internal

    attr_accessor :edit_expiration

    attr_accessor :vectorization

    attr_accessor :ask_ai

    attr_accessor :use_chat

    attr_accessor :update_xlsx

    attr_accessor :analyze_responses

    attr_accessor :can_use_ai

    attr_accessor :history_export

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'read' => :'Read',
        :'comment' => :'Comment',
        :'fill_forms' => :'FillForms',
        :'review' => :'Review',
        :'create' => :'Create',
        :'create_from' => :'CreateFrom',
        :'edit' => :'Edit',
        :'delete' => :'Delete',
        :'custom_filter' => :'CustomFilter',
        :'edit_room' => :'EditRoom',
        :'rename' => :'Rename',
        :'read_history' => :'ReadHistory',
        :'lock' => :'Lock',
        :'edit_history' => :'EditHistory',
        :'copy_to' => :'CopyTo',
        :'copy' => :'Copy',
        :'move_to' => :'MoveTo',
        :'move' => :'Move',
        :'pin' => :'Pin',
        :'mute' => :'Mute',
        :'edit_access' => :'EditAccess',
        :'duplicate' => :'Duplicate',
        :'submit_to_form_gallery' => :'SubmitToFormGallery',
        :'download' => :'Download',
        :'convert' => :'Convert',
        :'copy_shared_link' => :'CopySharedLink',
        :'read_links' => :'ReadLinks',
        :'reconnect' => :'Reconnect',
        :'create_room_from' => :'CreateRoomFrom',
        :'copy_link' => :'CopyLink',
        :'embed' => :'Embed',
        :'change_owner' => :'ChangeOwner',
        :'index_export' => :'IndexExport',
        :'start_filling' => :'StartFilling',
        :'filling_status' => :'FillingStatus',
        :'reset_filling' => :'ResetFilling',
        :'stop_filling' => :'StopFilling',
        :'open_form' => :'OpenForm',
        :'edit_internal' => :'EditInternal',
        :'edit_expiration' => :'EditExpiration',
        :'vectorization' => :'Vectorization',
        :'ask_ai' => :'AskAi',
        :'use_chat' => :'UseChat',
        :'update_xlsx' => :'UpdateXlsx',
        :'analyze_responses' => :'AnalyzeResponses',
        :'can_use_ai' => :'CanUseAi',
        :'history_export' => :'HistoryExport'
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
        :'read' => :'Boolean',
        :'comment' => :'Boolean',
        :'fill_forms' => :'Boolean',
        :'review' => :'Boolean',
        :'create' => :'Boolean',
        :'create_from' => :'Boolean',
        :'edit' => :'Boolean',
        :'delete' => :'Boolean',
        :'custom_filter' => :'Boolean',
        :'edit_room' => :'Boolean',
        :'rename' => :'Boolean',
        :'read_history' => :'Boolean',
        :'lock' => :'Boolean',
        :'edit_history' => :'Boolean',
        :'copy_to' => :'Boolean',
        :'copy' => :'Boolean',
        :'move_to' => :'Boolean',
        :'move' => :'Boolean',
        :'pin' => :'Boolean',
        :'mute' => :'Boolean',
        :'edit_access' => :'Boolean',
        :'duplicate' => :'Boolean',
        :'submit_to_form_gallery' => :'Boolean',
        :'download' => :'Boolean',
        :'convert' => :'Boolean',
        :'copy_shared_link' => :'Boolean',
        :'read_links' => :'Boolean',
        :'reconnect' => :'Boolean',
        :'create_room_from' => :'Boolean',
        :'copy_link' => :'Boolean',
        :'embed' => :'Boolean',
        :'change_owner' => :'Boolean',
        :'index_export' => :'Boolean',
        :'start_filling' => :'Boolean',
        :'filling_status' => :'Boolean',
        :'reset_filling' => :'Boolean',
        :'stop_filling' => :'Boolean',
        :'open_form' => :'Boolean',
        :'edit_internal' => :'Boolean',
        :'edit_expiration' => :'Boolean',
        :'vectorization' => :'Boolean',
        :'ask_ai' => :'Boolean',
        :'use_chat' => :'Boolean',
        :'update_xlsx' => :'Boolean',
        :'analyze_responses' => :'Boolean',
        :'can_use_ai' => :'Boolean',
        :'history_export' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileEntryDtoIntegerAllOfSecurity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileEntryDtoIntegerAllOfSecurity`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'read')
        self.read = attributes[:'read']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'fill_forms')
        self.fill_forms = attributes[:'fill_forms']
      end

      if attributes.key?(:'review')
        self.review = attributes[:'review']
      end

      if attributes.key?(:'create')
        self.create = attributes[:'create']
      end

      if attributes.key?(:'create_from')
        self.create_from = attributes[:'create_from']
      end

      if attributes.key?(:'edit')
        self.edit = attributes[:'edit']
      end

      if attributes.key?(:'delete')
        self.delete = attributes[:'delete']
      end

      if attributes.key?(:'custom_filter')
        self.custom_filter = attributes[:'custom_filter']
      end

      if attributes.key?(:'edit_room')
        self.edit_room = attributes[:'edit_room']
      end

      if attributes.key?(:'rename')
        self.rename = attributes[:'rename']
      end

      if attributes.key?(:'read_history')
        self.read_history = attributes[:'read_history']
      end

      if attributes.key?(:'lock')
        self.lock = attributes[:'lock']
      end

      if attributes.key?(:'edit_history')
        self.edit_history = attributes[:'edit_history']
      end

      if attributes.key?(:'copy_to')
        self.copy_to = attributes[:'copy_to']
      end

      if attributes.key?(:'copy')
        self.copy = attributes[:'copy']
      end

      if attributes.key?(:'move_to')
        self.move_to = attributes[:'move_to']
      end

      if attributes.key?(:'move')
        self.move = attributes[:'move']
      end

      if attributes.key?(:'pin')
        self.pin = attributes[:'pin']
      end

      if attributes.key?(:'mute')
        self.mute = attributes[:'mute']
      end

      if attributes.key?(:'edit_access')
        self.edit_access = attributes[:'edit_access']
      end

      if attributes.key?(:'duplicate')
        self.duplicate = attributes[:'duplicate']
      end

      if attributes.key?(:'submit_to_form_gallery')
        self.submit_to_form_gallery = attributes[:'submit_to_form_gallery']
      end

      if attributes.key?(:'download')
        self.download = attributes[:'download']
      end

      if attributes.key?(:'convert')
        self.convert = attributes[:'convert']
      end

      if attributes.key?(:'copy_shared_link')
        self.copy_shared_link = attributes[:'copy_shared_link']
      end

      if attributes.key?(:'read_links')
        self.read_links = attributes[:'read_links']
      end

      if attributes.key?(:'reconnect')
        self.reconnect = attributes[:'reconnect']
      end

      if attributes.key?(:'create_room_from')
        self.create_room_from = attributes[:'create_room_from']
      end

      if attributes.key?(:'copy_link')
        self.copy_link = attributes[:'copy_link']
      end

      if attributes.key?(:'embed')
        self.embed = attributes[:'embed']
      end

      if attributes.key?(:'change_owner')
        self.change_owner = attributes[:'change_owner']
      end

      if attributes.key?(:'index_export')
        self.index_export = attributes[:'index_export']
      end

      if attributes.key?(:'start_filling')
        self.start_filling = attributes[:'start_filling']
      end

      if attributes.key?(:'filling_status')
        self.filling_status = attributes[:'filling_status']
      end

      if attributes.key?(:'reset_filling')
        self.reset_filling = attributes[:'reset_filling']
      end

      if attributes.key?(:'stop_filling')
        self.stop_filling = attributes[:'stop_filling']
      end

      if attributes.key?(:'open_form')
        self.open_form = attributes[:'open_form']
      end

      if attributes.key?(:'edit_internal')
        self.edit_internal = attributes[:'edit_internal']
      end

      if attributes.key?(:'edit_expiration')
        self.edit_expiration = attributes[:'edit_expiration']
      end

      if attributes.key?(:'vectorization')
        self.vectorization = attributes[:'vectorization']
      end

      if attributes.key?(:'ask_ai')
        self.ask_ai = attributes[:'ask_ai']
      end

      if attributes.key?(:'use_chat')
        self.use_chat = attributes[:'use_chat']
      end

      if attributes.key?(:'update_xlsx')
        self.update_xlsx = attributes[:'update_xlsx']
      end

      if attributes.key?(:'analyze_responses')
        self.analyze_responses = attributes[:'analyze_responses']
      end

      if attributes.key?(:'can_use_ai')
        self.can_use_ai = attributes[:'can_use_ai']
      end

      if attributes.key?(:'history_export')
        self.history_export = attributes[:'history_export']
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
          read == o.read &&
          comment == o.comment &&
          fill_forms == o.fill_forms &&
          review == o.review &&
          create == o.create &&
          create_from == o.create_from &&
          edit == o.edit &&
          delete == o.delete &&
          custom_filter == o.custom_filter &&
          edit_room == o.edit_room &&
          rename == o.rename &&
          read_history == o.read_history &&
          lock == o.lock &&
          edit_history == o.edit_history &&
          copy_to == o.copy_to &&
          copy == o.copy &&
          move_to == o.move_to &&
          move == o.move &&
          pin == o.pin &&
          mute == o.mute &&
          edit_access == o.edit_access &&
          duplicate == o.duplicate &&
          submit_to_form_gallery == o.submit_to_form_gallery &&
          download == o.download &&
          convert == o.convert &&
          copy_shared_link == o.copy_shared_link &&
          read_links == o.read_links &&
          reconnect == o.reconnect &&
          create_room_from == o.create_room_from &&
          copy_link == o.copy_link &&
          embed == o.embed &&
          change_owner == o.change_owner &&
          index_export == o.index_export &&
          start_filling == o.start_filling &&
          filling_status == o.filling_status &&
          reset_filling == o.reset_filling &&
          stop_filling == o.stop_filling &&
          open_form == o.open_form &&
          edit_internal == o.edit_internal &&
          edit_expiration == o.edit_expiration &&
          vectorization == o.vectorization &&
          ask_ai == o.ask_ai &&
          use_chat == o.use_chat &&
          update_xlsx == o.update_xlsx &&
          analyze_responses == o.analyze_responses &&
          can_use_ai == o.can_use_ai &&
          history_export == o.history_export
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [read, comment, fill_forms, review, create, create_from, edit, delete, custom_filter, edit_room, rename, read_history, lock, edit_history, copy_to, copy, move_to, move, pin, mute, edit_access, duplicate, submit_to_form_gallery, download, convert, copy_shared_link, read_links, reconnect, create_room_from, copy_link, embed, change_owner, index_export, start_filling, filling_status, reset_filling, stop_filling, open_form, edit_internal, edit_expiration, vectorization, ask_ai, use_chat, update_xlsx, analyze_responses, can_use_ai, history_export].hash
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
