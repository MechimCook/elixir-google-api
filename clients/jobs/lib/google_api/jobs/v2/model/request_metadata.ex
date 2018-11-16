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

defmodule GoogleApi.Jobs.V2.Model.RequestMetadata do
  @moduledoc """
  Input only.  Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.

  ## Attributes

  - deviceInfo (DeviceInfo): Optional.  The type of device used by the job seeker at the time of the call to the service. Defaults to: `null`.
  - domain (String.t): Required.  The client-defined scope or source of the service call, which typically is the domain on which the service has been implemented and is currently being run.  For example, if the service is being run by client &lt;em&gt;Foo, Inc.&lt;/em&gt;, on job board www.foo.com and career site www.bar.com, then this field is set to \&quot;foo.com\&quot; for use on the job board, and \&quot;bar.com\&quot; for use on the career site.  If this field is not available for some reason, send \&quot;UNKNOWN\&quot;. Note that any improvements to the service model for a particular tenant site rely on this field being set correctly to some domain. Defaults to: `null`.
  - sessionId (String.t): Required.  A unique session identification string. A session is defined as the duration of an end user&#39;s interaction with the service over a period. Obfuscate this field for privacy concerns before providing it to the API.  If this field is not available for some reason, please send \&quot;UNKNOWN\&quot;. Note that any improvements to the service model for a particular tenant site, rely on this field being set correctly to some unique session_id. Defaults to: `null`.
  - userId (String.t): Required.  A unique user identification string, as determined by the client. The client is responsible for ensuring client-level uniqueness of this value in order to have the strongest positive impact on search quality. Obfuscate this field for privacy concerns before providing it to the service.  If this field is not available for some reason, please send \&quot;UNKNOWN\&quot;. Note that any improvements to the service model for a particular tenant site, rely on this field being set correctly to some unique user_id. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceInfo => GoogleApi.Jobs.V2.Model.DeviceInfo.t(),
          :domain => any(),
          :sessionId => any(),
          :userId => any()
        }

  field(:deviceInfo, as: GoogleApi.Jobs.V2.Model.DeviceInfo)
  field(:domain)
  field(:sessionId)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.RequestMetadata do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.RequestMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.RequestMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end