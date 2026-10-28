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
  # The parameters of a new room in the Rooms section.
  class CreateRoomRequestDto < ApiModelBase
    # The name of the room. It is trimmed, characters that a folder name cannot hold are replaced with underscores  and the rest is truncated, so the stored title can differ from the one sent; a blank title is rejected. Titles  are not unique, and rooms are told apart by their id.
    attr_accessor :title

    # The storage the room may take, in bytes. It is accepted only while the per-room quota feature is on for the  portal and must stay inside the portal own limit; leaving it out lets the room follow the portal default.
    attr_accessor :quota

    # Whether the room keeps a manual order of its contents. With it on every file and folder carries a position  that listings follow and that `PUT api/2.0/files/rooms/{id}/reorder` compacts; with it off the contents are  ordered by the sorting of the request.
    attr_accessor :indexing

    # Whether members without editing rights are stopped from downloading and printing the contents of the room.  They can still open the documents in the editor.
    attr_accessor :deny_download

    # How long files may stay in the room before they are deleted automatically. The countdown starts when the  setting is saved, and leaving the field out keeps the files forever.
    attr_accessor :lifetime

    # The watermark drawn over documents opened in the room. Leaving the field out adds no watermark, and sending it  with the switch turned off removes the one the room has.
    attr_accessor :watermark

    # The picture to use as the room logo, named by the path that `POST api/2.0/files/logos` returned for an image  uploaded beforehand, plus the crop to take from it. Leaving the field out keeps the room on its cover and  colour.
    attr_accessor :logo

    # The labels to attach to the room, by name. Names the portal tag catalogue does not hold yet are added to it,  and `GET api/2.0/files/tags` lists what already exists.
    attr_accessor :tags

    # The background colour the room is drawn with while it has no logo, as six hexadecimal digits with no leading  number sign. An empty value restores the default colour of the room type.
    attr_accessor :color

    # The picture drawn on the room while it has no logo, named by an identifier from  `GET api/2.0/files/rooms/covers`. Any other value is rejected, and an empty value leaves the room without a  cover.
    attr_accessor :cover

    # What the room is for. It decides which sharing links, roles and form features the room offers, and it cannot  be changed once the room exists, so a room of the wrong kind has to be recreated.
    attr_accessor :room_type

    # Whether the room is end-to-end encrypted. Its files can then be opened only in the desktop application by  members whose encryption keys are set up, and the flag cannot be changed after the room is created.
    attr_accessor :private

    # Not implemented on room creation: any non-empty value is rejected, and members are invited afterwards with  `PUT api/2.0/files/rooms/{id}/share`.
    attr_accessor :share

    # The model and the prompt an AI room answers with. It belongs to AI rooms only and is rejected for a room of  any other kind.
    attr_accessor :chat_settings

    # For a form filling room, whether the data of every completed submission is also pushed to the external  database configured for the portal. It is what `POST api/2.0/files/rooms/{id}/externaldbsync` re-runs for the  forms already collected.
    attr_accessor :send_form_to_external_db

    # For a form filling room, whether the collected submissions are also gathered into a spreadsheet stored next to  the completed forms. With it off the submissions are kept only as the filled documents themselves.
    attr_accessor :save_form_as_xlsx

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
        :'quota' => :'quota',
        :'indexing' => :'indexing',
        :'deny_download' => :'denyDownload',
        :'lifetime' => :'lifetime',
        :'watermark' => :'watermark',
        :'logo' => :'logo',
        :'tags' => :'tags',
        :'color' => :'color',
        :'cover' => :'cover',
        :'room_type' => :'roomType',
        :'private' => :'private',
        :'share' => :'share',
        :'chat_settings' => :'chatSettings',
        :'send_form_to_external_db' => :'sendFormToExternalDB',
        :'save_form_as_xlsx' => :'saveFormAsXLSX'
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
        :'quota' => :'Integer',
        :'indexing' => :'Boolean',
        :'deny_download' => :'Boolean',
        :'lifetime' => :'RoomDataLifetimeDto',
        :'watermark' => :'WatermarkRequestDto',
        :'logo' => :'LogoRequest',
        :'tags' => :'Array<String>',
        :'color' => :'String',
        :'cover' => :'String',
        :'room_type' => :'RoomType',
        :'private' => :'Boolean',
        :'share' => :'Array<FileShareParams>',
        :'chat_settings' => :'ChatSettings',
        :'send_form_to_external_db' => :'Boolean',
        :'save_form_as_xlsx' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'quota',
        :'indexing',
        :'deny_download',
        :'tags',
        :'color',
        :'cover',
        :'share',
        :'send_form_to_external_db',
        :'save_form_as_xlsx'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CreateRoomRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CreateRoomRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'quota')
        self.quota = attributes[:'quota']
      end

      if attributes.key?(:'indexing')
        self.indexing = attributes[:'indexing']
      end

      if attributes.key?(:'deny_download')
        self.deny_download = attributes[:'deny_download']
      end

      if attributes.key?(:'lifetime')
        self.lifetime = attributes[:'lifetime']
      end

      if attributes.key?(:'watermark')
        self.watermark = attributes[:'watermark']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'cover')
        self.cover = attributes[:'cover']
      end

      if attributes.key?(:'room_type')
        self.room_type = attributes[:'room_type']
      else
        self.room_type = nil
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.key?(:'share')
        if (value = attributes[:'share']).is_a?(Array)
          self.share = value
        end
      end

      if attributes.key?(:'chat_settings')
        self.chat_settings = attributes[:'chat_settings']
      end

      if attributes.key?(:'send_form_to_external_db')
        self.send_form_to_external_db = attributes[:'send_form_to_external_db']
      end

      if attributes.key?(:'save_form_as_xlsx')
        self.save_form_as_xlsx = attributes[:'save_form_as_xlsx']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @title.to_s.length > 170
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 170.')
      end

      if @title.to_s.length < 0
        invalid_properties.push('invalid value for "title", the character length must be greater than or equal to 0.')
      end

      pattern = Regexp.new(/^[0-9a-fA-F]{6}$/)
      if !@color.nil? && @color !~ pattern
        invalid_properties.push("invalid value for \"color\", must conform to the pattern #{pattern}.")
      end

      if !@cover.nil? && @cover.to_s.length > 50
        invalid_properties.push('invalid value for "cover", the character length must be smaller than or equal to 50.')
      end

      if !@cover.nil? && @cover.to_s.length < 0
        invalid_properties.push('invalid value for "cover", the character length must be greater than or equal to 0.')
      end

      if @room_type.nil?
        invalid_properties.push('invalid value for "room_type", room_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @title.to_s.length > 170
      return false if @title.to_s.length < 0
      return false if !@color.nil? && @color !~ Regexp.new(/^[0-9a-fA-F]{6}$/)
      return false if !@cover.nil? && @cover.to_s.length > 50
      return false if !@cover.nil? && @cover.to_s.length < 0
      return false if @room_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 170
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 170.'
      end

      if !title.nil? && title.to_s.length < 0
        fail ArgumentError, 'invalid value for "title", the character length must be greater than or equal to 0.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] color Value to be assigned
    def color=(color)
      pattern = Regexp.new(/^[0-9a-fA-F]{6}$/)
      if !color.nil? && color !~ pattern
        fail ArgumentError, "invalid value for \"color\", must conform to the pattern #{pattern}."
      end

      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] cover Value to be assigned
    def cover=(cover)
      if !cover.nil? && cover.to_s.length > 50
        fail ArgumentError, 'invalid value for "cover", the character length must be smaller than or equal to 50.'
      end

      if !cover.nil? && cover.to_s.length < 0
        fail ArgumentError, 'invalid value for "cover", the character length must be greater than or equal to 0.'
      end

      @cover = cover
    end

    # Custom attribute writer method with validation
    # @param [Object] room_type Value to be assigned
    def room_type=(room_type)
      if room_type.nil?
        fail ArgumentError, 'room_type cannot be nil'
      end

      @room_type = room_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          quota == o.quota &&
          indexing == o.indexing &&
          deny_download == o.deny_download &&
          lifetime == o.lifetime &&
          watermark == o.watermark &&
          logo == o.logo &&
          tags == o.tags &&
          color == o.color &&
          cover == o.cover &&
          room_type == o.room_type &&
          private == o.private &&
          share == o.share &&
          chat_settings == o.chat_settings &&
          send_form_to_external_db == o.send_form_to_external_db &&
          save_form_as_xlsx == o.save_form_as_xlsx
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, quota, indexing, deny_download, lifetime, watermark, logo, tags, color, cover, room_type, private, share, chat_settings, send_form_to_external_db, save_form_as_xlsx].hash
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
