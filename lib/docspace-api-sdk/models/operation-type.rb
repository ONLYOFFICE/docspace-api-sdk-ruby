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
    Unknown = 0.freeze
    ServicePayment = 1.freeze
    PackagePayment = 2.freeze
    AiServicePayment = 3.freeze
    Deposit = 4.freeze
    ReceiveProviderInvoice = 5.freeze
    ProcessProviderInvoice = 6.freeze
    WriteOffServiceProfit = 7.freeze
    Profit = 8.freeze
    PartnerAccrual = 9.freeze
    ProviderPayment = 10.freeze
    PartnerPayment = 11.freeze
    Refund = 12.freeze
    BankDeposit = 13.freeze
    BankWithdrawal = 14.freeze
    GoodwillCredit = 15.freeze
    WriteOffProfit = 16.freeze
    WriteOffDifferenceCurrency = 17.freeze
    AiDebit = 18.freeze
    AiCredit = 19.freeze

    def self.all_vars
      @all_vars ||= [Unknown, ServicePayment, PackagePayment, AiServicePayment, Deposit, ReceiveProviderInvoice, ProcessProviderInvoice, WriteOffServiceProfit, Profit, PartnerAccrual, ProviderPayment, PartnerPayment, Refund, BankDeposit, BankWithdrawal, GoodwillCredit, WriteOffProfit, WriteOffDifferenceCurrency, AiDebit, AiCredit].freeze
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
