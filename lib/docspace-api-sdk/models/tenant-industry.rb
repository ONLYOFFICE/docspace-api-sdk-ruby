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
  class TenantIndustry
    Other = 0.freeze
    Accounting = 1.freeze
    AdvertisingMarketingPR = 2.freeze
    Banking = 3.freeze
    Consulting = 4.freeze
    Design = 5.freeze
    Education = 6.freeze
    Environment = 7.freeze
    FinancialServices = 8.freeze
    HealthCare = 9.freeze
    IT = 10.freeze
    Legal = 11.freeze
    Manufacturing = 12.freeze
    PublicSector = 13.freeze
    Publishing = 14.freeze
    RetailSales = 15.freeze
    Telecommunications = 16.freeze

    def self.all_vars
      @all_vars ||= [Other, Accounting, AdvertisingMarketingPR, Banking, Consulting, Design, Education, Environment, FinancialServices, HealthCare, IT, Legal, Manufacturing, PublicSector, Publishing, RetailSales, Telecommunications].freeze
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
      return value if TenantIndustry.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #TenantIndustry"
    end
  end
end
