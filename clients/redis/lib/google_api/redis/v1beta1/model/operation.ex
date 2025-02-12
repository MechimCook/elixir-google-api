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

defmodule GoogleApi.Redis.V1beta1.Model.Operation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a network API call.

  ## Attributes

  - done (boolean()): If the value is &#x60;false&#x60;, it means the operation is still in progress. If &#x60;true&#x60;, the operation is completed, and either &#x60;error&#x60; or &#x60;response&#x60; is available. Defaults to: `null`.
  - error (Status): The error result of the operation in case of failure or cancellation. Defaults to: `null`.
  - metadata (%{optional(String.t) &#x3D;&gt; String.t}): {  &#x60;createTime&#x60;: The time the operation was created.  &#x60;endTime&#x60;: The time the operation finished running.  &#x60;target&#x60;: Server-defined resource path for the target of the operation.  &#x60;verb&#x60;: Name of the verb executed by the operation.  &#x60;statusDetail&#x60;: Human-readable status of the operation, if any.  &#x60;cancelRequested&#x60;: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to &#x60;Code.CANCELLED&#x60;.  &#x60;apiVersion&#x60;: API version used to start the operation.  } Defaults to: `null`.
  - name (String.t): The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the &#x60;name&#x60; should be a resource name ending with &#x60;operations/{unique_id}&#x60;. Defaults to: `null`.
  - response (%{optional(String.t) &#x3D;&gt; String.t}): The normal response of the operation in case of success.  If the original method returns no data on success, such as &#x60;Delete&#x60;, the response is &#x60;google.protobuf.Empty&#x60;.  If the original method is standard &#x60;Get&#x60;/&#x60;Create&#x60;/&#x60;Update&#x60;, the response should be the resource.  For other methods, the response should have the type &#x60;XxxResponse&#x60;, where &#x60;Xxx&#x60; is the original method name.  For example, if the original method name is &#x60;TakeSnapshot()&#x60;, the inferred response type is &#x60;TakeSnapshotResponse&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => any(),
          :error => GoogleApi.Redis.V1beta1.Model.Status.t(),
          :metadata => map(),
          :name => any(),
          :response => map()
        }

  field(:done)
  field(:error, as: GoogleApi.Redis.V1beta1.Model.Status)
  field(:metadata, type: :map)
  field(:name)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.Operation do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
