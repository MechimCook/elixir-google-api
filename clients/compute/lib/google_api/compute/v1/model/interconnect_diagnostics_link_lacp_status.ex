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

defmodule GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLacpStatus do
  @moduledoc """


  ## Attributes

  - googleSystemId (String.t): System ID of the port on Google?s side of the LACP exchange. Defaults to: `null`.
  - neighborSystemId (String.t): System ID of the port on the neighbor?s side of the LACP exchange. Defaults to: `null`.
  - state (String.t): The state of a LACP link, which can take one of the following values:  - ACTIVE: The link is configured and active within the bundle.  - DETACHED: The link is not configured within the bundle. This means that the rest of the object should be empty. Defaults to: `null`.
    - Enum - one of [ACTIVE, DETACHED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleSystemId => any(),
          :neighborSystemId => any(),
          :state => any()
        }

  field(:googleSystemId)
  field(:neighborSystemId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLacpStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLacpStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLacpStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
