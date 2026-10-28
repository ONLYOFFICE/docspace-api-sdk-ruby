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
  # The link of a room to create, change or revoke.
  class RoomLinkRequest < ApiModelBase
    # Which link to change, taken from `GET api/2.0/files/rooms/{id}/links`. Leaving it out creates a link, and an  identifier the room does not know creates a link carrying that identifier.
    attr_accessor :link_id

    # What whoever opens the link may do in the room. The value 0 revokes the link instead of changing it, and the  levels a room accepts depend on its kind.
    attr_accessor :access

    # When the link stops working, written with the offset of the portal time zone. A date already past is dropped  silently for an external link and refused for an invitation link, and a date further ahead than the portal  allows is refused as well; leaving it out means the link does not expire.
    attr_accessor :expiration_date

    # Whether the external link works only for people already signed in to the portal. With it off the link opens  the room for anyone who has the address, subject to the password.
    attr_accessor :internal

    # The name the link is shown under in the room. An empty value is accepted and the portal names the link itself,  so the answer is what tells the caller the name in use.
    attr_accessor :title

    # Which kind of link to create: an invitation link makes whoever opens it a member of the room, while an  external link opens the room without an account. It is fixed when the link is created and is ignored on later  changes.
    attr_accessor :link_type

    # The password an external link asks for before it opens the room. An empty value leaves the link open to anyone  who has the address, and the password is never returned when links are listed.
    attr_accessor :password

    # Whether people arriving through the link are stopped from downloading and printing what they open. They can  still read the documents in the editor.
    attr_accessor :deny_download

    # How many people an invitation link may still let in before it stops working. A value below the number of  people who already used it is refused, and leaving it out puts no ceiling on the link.
    attr_accessor :max_use_count

    # How many people have already joined through this invitation link. The value is kept by the portal: it is  reported back when links are listed and anything sent here is ignored.
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
        :'link_id' => :'linkId',
        :'access' => :'access',
        :'expiration_date' => :'expirationDate',
        :'internal' => :'internal',
        :'title' => :'title',
        :'link_type' => :'linkType',
        :'password' => :'password',
        :'deny_download' => :'denyDownload',
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
        :'link_id' => :'String',
        :'access' => :'FileShare',
        :'expiration_date' => :'ApiDateTime',
        :'internal' => :'Boolean',
        :'title' => :'String',
        :'link_type' => :'LinkType',
        :'password' => :'String',
        :'deny_download' => :'Boolean',
        :'max_use_count' => :'Integer',
        :'current_use_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'password',
        :'max_use_count',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::RoomLinkRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::RoomLinkRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'access')
        self.access = attributes[:'access']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'internal')
        self.internal = attributes[:'internal']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
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
      if !@title.nil? && @title.to_s.length > 255
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 255.')
      end

      if !@title.nil? && @title.to_s.length < 0
        invalid_properties.push('invalid value for "title", the character length must be greater than or equal to 0.')
      end

      if !@password.nil? && @password.to_s.length > 255
        invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 255.')
      end

      if !@password.nil? && @password.to_s.length < 0
        invalid_properties.push('invalid value for "password", the character length must be greater than or equal to 0.')
      end

      if !@max_use_count.nil? && @max_use_count > 1000
        invalid_properties.push('invalid value for "max_use_count", must be smaller than or equal to 1000.')
      end

      if !@max_use_count.nil? && @max_use_count < 1
        invalid_properties.push('invalid value for "max_use_count", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@title.nil? && @title.to_s.length > 255
      return false if !@title.nil? && @title.to_s.length < 0
      return false if !@password.nil? && @password.to_s.length > 255
      return false if !@password.nil? && @password.to_s.length < 0
      return false if !@max_use_count.nil? && @max_use_count > 1000
      return false if !@max_use_count.nil? && @max_use_count < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 255
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 255.'
      end

      if !title.nil? && title.to_s.length < 0
        fail ArgumentError, 'invalid value for "title", the character length must be greater than or equal to 0.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if !password.nil? && password.to_s.length > 255
        fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 255.'
      end

      if !password.nil? && password.to_s.length < 0
        fail ArgumentError, 'invalid value for "password", the character length must be greater than or equal to 0.'
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] max_use_count Value to be assigned
    def max_use_count=(max_use_count)
      if !max_use_count.nil? && max_use_count > 1000
        fail ArgumentError, 'invalid value for "max_use_count", must be smaller than or equal to 1000.'
      end

      if !max_use_count.nil? && max_use_count < 1
        fail ArgumentError, 'invalid value for "max_use_count", must be greater than or equal to 1.'
      end

      @max_use_count = max_use_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link_id == o.link_id &&
          access == o.access &&
          expiration_date == o.expiration_date &&
          internal == o.internal &&
          title == o.title &&
          link_type == o.link_type &&
          password == o.password &&
          deny_download == o.deny_download &&
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
      [link_id, access, expiration_date, internal, title, link_type, password, deny_download, max_use_count, current_use_count].hash
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
