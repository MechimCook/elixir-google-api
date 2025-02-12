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

defmodule GoogleApi.Compute.V1.Model.ImageRawDisk do
  @moduledoc """
  The parameters of the raw disk image.

  ## Attributes

  - containerType (String.t): The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created. Defaults to: `null`.
    - Enum - one of [TAR]
  - sha1Checksum (String.t): [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created. Defaults to: `null`.
  - source (String.t): The full Google Cloud Storage URL where the disk image is stored. You must provide either this property or the sourceDisk property but not both. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerType => any(),
          :sha1Checksum => any(),
          :source => any()
        }

  field(:containerType)
  field(:sha1Checksum)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ImageRawDisk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ImageRawDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ImageRawDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
