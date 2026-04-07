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
  class WebhookGroupStatus
    None = 0.freeze
    NotSent = 1.freeze
    Status2xx = 2.freeze
    Status3xx = 4.freeze
    Status4xx = 8.freeze
    Status5xx = 16.freeze

    def self.all_vars
      @all_vars ||= [None, NotSent, Status2xx, Status3xx, Status4xx, Status5xx].freeze
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
      return value if WebhookGroupStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WebhookGroupStatus"
    end
  end
end
