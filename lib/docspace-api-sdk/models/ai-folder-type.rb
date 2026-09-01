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
  class AiFolderType
    DEFAULT = 0.freeze
    COMMON = 1.freeze
    BUNCH = 2.freeze
    TRASH = 3.freeze
    USER = 5.freeze
    SHARE = 6.freeze
    Projects = 8.freeze
    Favorites = 10.freeze
    Recent = 11.freeze
    Templates = 12.freeze
    Privacy = 13.freeze
    VirtualRooms = 14.freeze
    FillingFormsRoom = 15.freeze
    EditingRoom = 16.freeze
    CustomRoom = 19.freeze
    Archive = 20.freeze
    ThirdpartyBackup = 21.freeze
    PublicRoom = 22.freeze
    ReadyFormFolder = 25.freeze
    InProcessFormFolder = 26.freeze
    FormFillingFolderDone = 27.freeze
    FormFillingFolderInProgress = 28.freeze
    VirtualDataRoom = 29.freeze
    RoomTemplates = 30.freeze
    AiRoom = 31.freeze
    Knowledge = 32.freeze
    ResultStorage = 33.freeze
    AiAgents = 34.freeze
    DefaultTemplates = 35.freeze
    Forms = 36.freeze

    def self.all_vars
      @all_vars ||= [DEFAULT, COMMON, BUNCH, TRASH, USER, SHARE, Projects, Favorites, Recent, Templates, Privacy, VirtualRooms, FillingFormsRoom, EditingRoom, CustomRoom, Archive, ThirdpartyBackup, PublicRoom, ReadyFormFolder, InProcessFormFolder, FormFillingFolderDone, FormFillingFolderInProgress, VirtualDataRoom, RoomTemplates, AiRoom, Knowledge, ResultStorage, AiAgents, DefaultTemplates, Forms].freeze
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
      return value if AiFolderType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AiFolderType"
    end
  end
end
