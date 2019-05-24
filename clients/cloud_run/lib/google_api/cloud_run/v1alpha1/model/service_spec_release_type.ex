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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType do
  @moduledoc """
  ServiceSpecReleaseType contains the options for slowly releasing revisions. See ServiceSpec for more details.  Not currently supported by Cloud Run.

  ## Attributes

  - configuration (ConfigurationSpec): The configuration for this service. All revisions from this service must come from a single configuration. Defaults to: `null`.
  - revisions ([String.t]): Revisions is an ordered list of 1 or 2 revisions. The first is the current revision, and the second is the candidate revision. If a single revision is provided, traffic will be pinned at that revision.  \&quot;@latest\&quot; is a shortcut for usage that refers to the latest created revision by the configuration. Defaults to: `null`.
  - rolloutPercent (integer()): RolloutPercent is the percent of traffic that should be sent to the candidate revision, i.e. the 2nd revision in the revisions list. Valid values are between 0 and 99 inclusive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec.t(),
          :revisions => list(any()),
          :rolloutPercent => any()
        }

  field(:configuration, as: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec)
  field(:revisions, type: :list)
  field(:rolloutPercent)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end