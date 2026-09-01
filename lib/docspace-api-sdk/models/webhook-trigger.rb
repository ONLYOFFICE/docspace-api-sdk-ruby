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
  class WebhookTrigger
    All = 0.freeze
    UserCreated = 1.freeze
    UserInvited = 2.freeze
    UserUpdated = 4.freeze
    UserDeleted = 8.freeze
    GroupCreated = 16.freeze
    GroupUpdated = 32.freeze
    GroupDeleted = 64.freeze
    FileCreated = 128.freeze
    FileUploaded = 256.freeze
    FileUpdated = 512.freeze
    FileTrashed = 1024.freeze
    FileDeleted = 2048.freeze
    FileRestored = 4096.freeze
    FileCopied = 8192.freeze
    FileMoved = 16384.freeze
    FolderCreated = 32768.freeze
    FolderUpdated = 65536.freeze
    FolderTrashed = 131072.freeze
    FolderDeleted = 262144.freeze
    FolderRestored = 524288.freeze
    FolderCopied = 1048576.freeze
    FolderMoved = 2097152.freeze
    RoomCreated = 4194304.freeze
    RoomUpdated = 8388608.freeze
    RoomArchived = 16777216.freeze
    RoomDeleted = 33554432.freeze
    RoomRestored = 67108864.freeze
    RoomCopied = 134217728.freeze
    FormSubmit = 268435456.freeze
    FormFilledOut = 536870912.freeze
    FormStopped = 1073741824.freeze

    def self.all_vars
      @all_vars ||= [All, UserCreated, UserInvited, UserUpdated, UserDeleted, GroupCreated, GroupUpdated, GroupDeleted, FileCreated, FileUploaded, FileUpdated, FileTrashed, FileDeleted, FileRestored, FileCopied, FileMoved, FolderCreated, FolderUpdated, FolderTrashed, FolderDeleted, FolderRestored, FolderCopied, FolderMoved, RoomCreated, RoomUpdated, RoomArchived, RoomDeleted, RoomRestored, RoomCopied, FormSubmit, FormFilledOut, FormStopped].freeze
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
      return value if WebhookTrigger.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WebhookTrigger"
    end
  end
end
