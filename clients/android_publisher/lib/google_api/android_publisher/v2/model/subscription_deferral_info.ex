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

defmodule GoogleApi.AndroidPublisher.V2.Model.SubscriptionDeferralInfo do
  @moduledoc """
  A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.

  ## Attributes

  - desiredExpiryTimeMillis (String.t): The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The given time must be later/greater than the current expiry time for the subscription. Defaults to: `null`.
  - expectedExpiryTimeMillis (String.t): The expected expiry time for the subscription. If the current expiry time for the subscription is not the value specified here, the deferral will not occur. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desiredExpiryTimeMillis => any(),
          :expectedExpiryTimeMillis => any()
        }

  field(:desiredExpiryTimeMillis)
  field(:expectedExpiryTimeMillis)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionDeferralInfo do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.SubscriptionDeferralInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionDeferralInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end