# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.Order do
  @moduledoc """
  Order. All methods require the order manager role.

  ## Attributes

  - acknowledged (boolean()): Whether the order was acknowledged. Defaults to: `null`.
  - channelType (String.t): Deprecated. Defaults to: `null`.
  - customer (OrderCustomer): The details of the customer who placed the order. Defaults to: `null`.
  - deliveryDetails (OrderDeliveryDetails): Delivery details for shipments. Defaults to: `null`.
  - id (String.t): The REST ID of the order. Globally unique. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;content#order\&quot;. Defaults to: `null`.
  - lineItems ([OrderLineItem]): Line items that are ordered. Defaults to: `null`.
  - merchantId (String.t):  Defaults to: `null`.
  - merchantOrderId (String.t): Merchant-provided ID of the order. Defaults to: `null`.
  - netAmount (Price): The net amount for the order. For example, if an order was originally for a grand total of $100 and a refund was issued for $20, the net amount will be $80. Defaults to: `null`.
  - paymentMethod (OrderPaymentMethod): The details of the payment method. Defaults to: `null`.
  - paymentStatus (String.t): The status of the payment. Defaults to: `null`.
  - placedDate (String.t): The date when the order was placed, in ISO 8601 format. Defaults to: `null`.
  - promotions ([OrderLegacyPromotion]): The details of the merchant provided promotions applied to the order. More details about the program are here. Defaults to: `null`.
  - refunds ([OrderRefund]): Refunds for the order. Defaults to: `null`.
  - shipments ([OrderShipment]): Shipments of the order. Defaults to: `null`.
  - shippingCost (Price): The total cost of shipping for all items. Defaults to: `null`.
  - shippingCostTax (Price): The tax for the total shipping cost. Defaults to: `null`.
  - shippingOption (String.t): Deprecated. Shipping details are provided with line items instead. Defaults to: `null`.
  - status (String.t): The status of the order. Defaults to: `null`.
  - taxCollector (String.t): The party responsible for collecting and remitting taxes. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledged => any(),
          :channelType => any(),
          :customer => GoogleApi.Content.V2.Model.OrderCustomer.t(),
          :deliveryDetails => GoogleApi.Content.V2.Model.OrderDeliveryDetails.t(),
          :id => any(),
          :kind => any(),
          :lineItems => list(GoogleApi.Content.V2.Model.OrderLineItem.t()),
          :merchantId => any(),
          :merchantOrderId => any(),
          :netAmount => GoogleApi.Content.V2.Model.Price.t(),
          :paymentMethod => GoogleApi.Content.V2.Model.OrderPaymentMethod.t(),
          :paymentStatus => any(),
          :placedDate => any(),
          :promotions => list(GoogleApi.Content.V2.Model.OrderLegacyPromotion.t()),
          :refunds => list(GoogleApi.Content.V2.Model.OrderRefund.t()),
          :shipments => list(GoogleApi.Content.V2.Model.OrderShipment.t()),
          :shippingCost => GoogleApi.Content.V2.Model.Price.t(),
          :shippingCostTax => GoogleApi.Content.V2.Model.Price.t(),
          :shippingOption => any(),
          :status => any(),
          :taxCollector => any()
        }

  field(:acknowledged)
  field(:channelType)
  field(:customer, as: GoogleApi.Content.V2.Model.OrderCustomer)
  field(:deliveryDetails, as: GoogleApi.Content.V2.Model.OrderDeliveryDetails)
  field(:id)
  field(:kind)
  field(:lineItems, as: GoogleApi.Content.V2.Model.OrderLineItem, type: :list)
  field(:merchantId)
  field(:merchantOrderId)
  field(:netAmount, as: GoogleApi.Content.V2.Model.Price)
  field(:paymentMethod, as: GoogleApi.Content.V2.Model.OrderPaymentMethod)
  field(:paymentStatus)
  field(:placedDate)
  field(:promotions, as: GoogleApi.Content.V2.Model.OrderLegacyPromotion, type: :list)
  field(:refunds, as: GoogleApi.Content.V2.Model.OrderRefund, type: :list)
  field(:shipments, as: GoogleApi.Content.V2.Model.OrderShipment, type: :list)
  field(:shippingCost, as: GoogleApi.Content.V2.Model.Price)
  field(:shippingCostTax, as: GoogleApi.Content.V2.Model.Price)
  field(:shippingOption)
  field(:status)
  field(:taxCollector)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Order do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Order.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Order do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
