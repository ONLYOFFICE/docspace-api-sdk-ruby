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
  class TenantStatus
    Active = 0.freeze
    Suspended = 1.freeze
    RemovePending = 2.freeze
    Transfering = 3.freeze
    Restoring = 4.freeze
    Migrating = 5.freeze
    Encryption = 6.freeze

    def self.all_vars
      @all_vars ||= [Active, Suspended, RemovePending, Transfering, Restoring, Migrating, Encryption].freeze
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
      return value if TenantStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #TenantStatus"
    end
  end
end
