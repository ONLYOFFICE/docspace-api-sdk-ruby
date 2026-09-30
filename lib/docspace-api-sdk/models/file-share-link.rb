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
  # A sharing link of a file, a folder or a room, with everything set on it.
  class FileShareLink < ApiModelBase
    # The identifier of the link, the one to send back as `linkId` to change or delete it.
    attr_accessor :id

    # The name the link is listed under, which its author is free to choose and to leave empty.
    attr_accessor :title

    # The shortened address to hand out. Opening it is what turns the link into access; the address stays the same  while the link exists.
    attr_accessor :share_link

    # The moment the link stops working, written with the offset of the portal time zone. Null when the link was  left without an end.
    attr_accessor :expiration_date

    # Which of the two jobs the link does: letting somebody into the room as a member, or handing out the entry  itself. The counters of uses are filled in for the first kind only.
    attr_accessor :link_type

    # The password a visitor has to send before the link resolves, readable only by those who may manage the link.  Empty when the link asks for none.
    attr_accessor :password

    # Whether visitors coming through this link may only read the entry in the editor and not download or print it.
    attr_accessor :deny_download

    # Whether the moment in `expirationDate` has already passed, which leaves the link in place but refuses  everybody who opens it.
    attr_accessor :is_expired

    # Whether this is the one link the entry always keeps: a public or a form-filling room is given it at creation,  and deleting it there only makes a new one.
    attr_accessor :primary

    # Whether the visitor has to sign in to the portal before the link resolves, as opposed to it being open to  anybody who has the address.
    attr_accessor :internal

    # The key that stands for this link in the calls that resolve it, such as `GET api/2.0/files/share/{key}`. It is  filled in for links that hand out the entry, and empty for the ones that invite into a room.
    attr_accessor :request_token

    # How many accounts may still join the room through this invitation link in total. Null on a link that hands out  the entry, where nothing is counted.
    attr_accessor :max_use_count

    # How many accounts have already joined through this invitation link. Once it reaches `maxUseCount` the link  stops letting anybody else in. Null on a link that hands out the entry.
    attr_accessor :current_use_count

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
        :'title' => :'title',
        :'share_link' => :'shareLink',
        :'expiration_date' => :'expirationDate',
        :'link_type' => :'linkType',
        :'password' => :'password',
        :'deny_download' => :'denyDownload',
        :'is_expired' => :'isExpired',
        :'primary' => :'primary',
        :'internal' => :'internal',
        :'request_token' => :'requestToken',
        :'max_use_count' => :'maxUseCount',
        :'current_use_count' => :'currentUseCount'
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
        :'id' => :'String',
        :'title' => :'String',
        :'share_link' => :'String',
        :'expiration_date' => :'ApiDateTime',
        :'link_type' => :'LinkType',
        :'password' => :'String',
        :'deny_download' => :'Boolean',
        :'is_expired' => :'Boolean',
        :'primary' => :'Boolean',
        :'internal' => :'Boolean',
        :'request_token' => :'String',
        :'max_use_count' => :'Integer',
        :'current_use_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'share_link',
        :'password',
        :'deny_download',
        :'is_expired',
        :'internal',
        :'request_token',
        :'max_use_count',
        :'current_use_count'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileShareLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileShareLink`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'share_link')
        self.share_link = attributes[:'share_link']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'link_type')
        self.link_type = attributes[:'link_type']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'deny_download')
        self.deny_download = attributes[:'deny_download']
      end

      if attributes.key?(:'is_expired')
        self.is_expired = attributes[:'is_expired']
      end

      if attributes.key?(:'primary')
        self.primary = attributes[:'primary']
      end

      if attributes.key?(:'internal')
        self.internal = attributes[:'internal']
      end

      if attributes.key?(:'request_token')
        self.request_token = attributes[:'request_token']
      end

      if attributes.key?(:'max_use_count')
        self.max_use_count = attributes[:'max_use_count']
      end

      if attributes.key?(:'current_use_count')
        self.current_use_count = attributes[:'current_use_count']
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
          title == o.title &&
          share_link == o.share_link &&
          expiration_date == o.expiration_date &&
          link_type == o.link_type &&
          password == o.password &&
          deny_download == o.deny_download &&
          is_expired == o.is_expired &&
          primary == o.primary &&
          internal == o.internal &&
          request_token == o.request_token &&
          max_use_count == o.max_use_count &&
          current_use_count == o.current_use_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, share_link, expiration_date, link_type, password, deny_download, is_expired, primary, internal, request_token, max_use_count, current_use_count].hash
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
