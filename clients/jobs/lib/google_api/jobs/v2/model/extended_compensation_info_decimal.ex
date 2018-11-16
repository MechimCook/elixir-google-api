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

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal do
  @moduledoc """
  Deprecated. See CompensationInfo.  Decimal number.

  ## Attributes

  - micros (integer()): Micro (10^-6) units. The value must be between -999,999 and +999,999 inclusive. If &#x60;units&#x60; is positive, &#x60;micros&#x60; must be positive or zero. If &#x60;units&#x60; is zero, &#x60;micros&#x60; can be positive, zero, or negative. If &#x60;units&#x60; is negative, &#x60;micros&#x60; must be negative or zero. For example -1.75 is represented as &#x60;units&#x60;&#x3D;-1 and &#x60;micros&#x60;&#x3D;-750,000. Defaults to: `null`.
  - units (String.t): Whole units. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :micros => any(),
          :units => any()
        }

  field(:micros)
  field(:units)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end