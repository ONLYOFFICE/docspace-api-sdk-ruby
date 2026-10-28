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
  class ActionType
    None = 0.freeze
    Create = 1.freeze
    Update = 2.freeze
    Delete = 3.freeze
    Link = 4.freeze
    Unlink = 5.freeze
    Attach = 6.freeze
    Detach = 7.freeze
    Send = 8.freeze
    Import = 9.freeze
    Export = 10.freeze
    UpdateAccess = 11.freeze
    Download = 12.freeze
    Upload = 13.freeze
    Copy = 14.freeze
    Move = 15.freeze
    Reassigns = 16.freeze
    Follow = 17.freeze
    Unfollow = 18.freeze
    Logout = 19.freeze

    def self.all_vars
      @all_vars ||= [None, Create, Update, Delete, Link, Unlink, Attach, Detach, Send, Import, Export, UpdateAccess, Download, Upload, Copy, Move, Reassigns, Follow, Unfollow, Logout].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ActionType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ActionType"
    end
  end
end
