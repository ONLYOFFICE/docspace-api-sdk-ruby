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
  class OperationType
    Any = 0.freeze
    Unknown = 1.freeze
    ServicePayment = 2.freeze
    PackagePayment = 4.freeze
    ServiceUsage = 8.freeze
    Deposit = 16.freeze
    ReceiveProviderInvoice = 32.freeze
    ProcessProviderInvoice = 64.freeze
    WriteOffServiceProfit = 128.freeze
    Profit = 256.freeze
    PartnerAccrual = 512.freeze
    ProviderPayment = 1024.freeze
    PartnerPayment = 2048.freeze
    Refund = 4096.freeze
    BankDeposit = 8192.freeze
    BankWithdrawal = 16384.freeze
    GoodwillCredit = 32768.freeze
    WriteOffProfit = 65536.freeze
    WriteOffDifferenceCurrency = 131072.freeze

    def self.all_vars
      @all_vars ||= [Any, Unknown, ServicePayment, PackagePayment, ServiceUsage, Deposit, ReceiveProviderInvoice, ProcessProviderInvoice, WriteOffServiceProfit, Profit, PartnerAccrual, ProviderPayment, PartnerPayment, Refund, BankDeposit, BankWithdrawal, GoodwillCredit, WriteOffProfit, WriteOffDifferenceCurrency].freeze
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
      return value if OperationType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #OperationType"
    end
  end
end
