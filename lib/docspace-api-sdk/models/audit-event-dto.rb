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
  # One entry of the portal audit trail: who changed what, from where, and where it belongs in the product.
  class AuditEventDto < ApiModelBase
    # The ID of the recorded entry. Nothing accepts it as an argument - no operation fetches a single audit event  - so it serves only to tell two otherwise identical entries apart.
    attr_accessor :id

    # When the action happened, in the portal time zone. The `from` and `to` filters are read as UTC instants, so  the two do not line up on a portal that is not on UTC.
    attr_accessor :date

    # The display name of the user who acted, taken from the account as it stands now rather than as it stood  when the entry was written. A localised placeholder stands in when there is no account to read: a portal  background job, an anonymous guest, or a user who has since been deleted.
    attr_accessor :user

    # The ID of the user who acted, which is what the `userId` filter of this operation matches on. It stays  readable after the account is deleted, which is when `user` falls back to a placeholder.
    attr_accessor :user_id

    # The whole event as a readable sentence in the portal language, with the names of the objects involved  substituted into it. On the two `audit/.../last` operations each substituted value is cut to 50 characters;  the filtered operations substitute them in full. It is empty when the build has no wording for the action.
    attr_accessor :action

    # The action itself, as the `action` filter of this operation spells it and as  `GET api/2.0/security/audit/mappers` lists it under `messageAction`. Use this rather than parsing `action`,  which is prose and changes with the portal language.
    attr_accessor :action_id

    # The IP address the request came from, with the port stripped off. It is empty for an action a portal  background job performed, which has no request behind it.
    attr_accessor :ip

    # The English name of the country the IP address is located in, empty when the address cannot be located -  the normal outcome for private and loopback addresses.
    attr_accessor :country

    # The city the IP address is located in, empty under the same conditions as `country`.
    attr_accessor :city

    # The browser and its version as parsed from the user agent of the request, empty when the client sent none  that could be parsed or when no request was involved.
    attr_accessor :browser

    # The operating system as parsed from the same user agent, empty under the same conditions as `browser`.
    attr_accessor :platform

    # Where in the portal the action was made from: the referrer of the request, or that request's own path when  it carried no referrer. Long values are cut off at 512 characters.
    attr_accessor :page

    # The kind of change the action stands for, as the `actionType` filter of this operation spells it. It is  derived from `actionId`, not stored per entry, so it is the same on every entry of one action.
    attr_accessor :action_type

    # The product the action belongs to. It cannot be filtered on here; the tree that groups actions by product  is `GET api/2.0/security/audit/mappers`.
    attr_accessor :product

    # The location inside that product, as the `moduleType` filter of this operation spells it. It is also  derived from `actionId` rather than stored per entry.
    attr_accessor :location

    # The objects the action was applied to, as the trail recorded them - a title, an account, an ID - one string  each. It is empty for an action that targets nothing, such as a settings change, and the `target` filter of  this operation matches one of these values in full.
    attr_accessor :target

    # The kinds of object the action applies to, holding at most two entries and none at all for an action that  targets nothing. Only the first of them can be filtered on, through `entryType`.
    attr_accessor :entries

    # Where the action took place, spelled out in the portal language rather than as a code: for a Documents  event the room or the root folder it happened in, and for anything else the name of the module. Nothing  filters on it.
    attr_accessor :context

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
        :'date' => :'date',
        :'user' => :'user',
        :'user_id' => :'userId',
        :'action' => :'action',
        :'action_id' => :'actionId',
        :'ip' => :'ip',
        :'country' => :'country',
        :'city' => :'city',
        :'browser' => :'browser',
        :'platform' => :'platform',
        :'page' => :'page',
        :'action_type' => :'actionType',
        :'product' => :'product',
        :'location' => :'location',
        :'target' => :'target',
        :'entries' => :'entries',
        :'context' => :'context'
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
        :'date' => :'ApiDateTime',
        :'user' => :'String',
        :'user_id' => :'String',
        :'action' => :'String',
        :'action_id' => :'MessageAction',
        :'ip' => :'String',
        :'country' => :'String',
        :'city' => :'String',
        :'browser' => :'String',
        :'platform' => :'String',
        :'page' => :'String',
        :'action_type' => :'ActionType',
        :'product' => :'ProductType',
        :'location' => :'LocationType',
        :'target' => :'Array<String>',
        :'entries' => :'Array<EntryType>',
        :'context' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user',
        :'action',
        :'ip',
        :'country',
        :'city',
        :'browser',
        :'platform',
        :'page',
        :'target',
        :'entries',
        :'context'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AuditEventDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AuditEventDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'action_id')
        self.action_id = attributes[:'action_id']
      end

      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'browser')
        self.browser = attributes[:'browser']
      end

      if attributes.key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'action_type')
        self.action_type = attributes[:'action_type']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'target')
        if (value = attributes[:'target']).is_a?(Array)
          self.target = value
        end
      end

      if attributes.key?(:'entries')
        if (value = attributes[:'entries']).is_a?(Array)
          self.entries = value
        end
      end

      if attributes.key?(:'context')
        self.context = attributes[:'context']
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
          date == o.date &&
          user == o.user &&
          user_id == o.user_id &&
          action == o.action &&
          action_id == o.action_id &&
          ip == o.ip &&
          country == o.country &&
          city == o.city &&
          browser == o.browser &&
          platform == o.platform &&
          page == o.page &&
          action_type == o.action_type &&
          product == o.product &&
          location == o.location &&
          target == o.target &&
          entries == o.entries &&
          context == o.context
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, date, user, user_id, action, action_id, ip, country, city, browser, platform, page, action_type, product, location, target, entries, context].hash
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
