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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions do
  @moduledoc """
  Options for exporting from MySQL.

  ## Attributes

  - masterData (integer()): Option to include SQL statement required to set up replication. If set to 1, the dump file includes a CHANGE MASTER TO statement with the binary log coordinates. If set to 2, the CHANGE MASTER TO statement is written as a SQL comment, and has no effect. All other values are ignored. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :masterData => any()
        }

  field(:masterData)
end

defimpl Poison.Decoder,
  for: GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end