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

defmodule GoogleApi.Compute.V1.Model.RouterBgpPeer do
  @moduledoc """


  ## Attributes

  - advertiseMode (String.t): User-specified flag to indicate which mode to use for advertisement. Defaults to: `null`.
    - Enum - one of [CUSTOM, DEFAULT]
  - advertisedGroups ([String.t]): User-specified list of prefix groups to advertise in custom mode, which can take one of the following options:  - ALL_SUBNETS: Advertises all available subnets, including peer VPC subnets.  - ALL_VPC_SUBNETS: Advertises the router&#39;s own VPC subnets.  - ALL_PEER_VPC_SUBNETS: Advertises peer subnets of the router&#39;s VPC network. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the \&quot;bgp\&quot; message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups. Defaults to: `null`.
    - Enum - one of 
  - advertisedIpRanges ([RouterAdvertisedIpRange]): User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the \&quot;bgp\&quot; message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges. Defaults to: `null`.
  - advertisedRoutePriority (integer()): The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win. Defaults to: `null`.
  - interfaceName (String.t): Name of the interface the BGP peer is associated with. Defaults to: `null`.
  - ipAddress (String.t): IP address of the interface inside Google Cloud Platform. Only IPv4 is supported. Defaults to: `null`.
  - managementType (String.t): [Output Only] The resource that configures and manages this BGP peer.  - MANAGED_BY_USER is the default value and can be managed by you or other users  - MANAGED_BY_ATTACHMENT is a BGP peer that is configured and managed by Cloud Interconnect, specifically by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of BGP peer when the PARTNER InterconnectAttachment is created, updated, or deleted. Defaults to: `null`.
    - Enum - one of [MANAGED_BY_ATTACHMENT, MANAGED_BY_USER]
  - name (String.t): Name of this BGP peer. The name must be 1-63 characters long and comply with RFC1035. Defaults to: `null`.
  - peerAsn (integer()): Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value. Defaults to: `null`.
  - peerIpAddress (String.t): IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiseMode => any(),
          :advertisedGroups => list(any()),
          :advertisedIpRanges => list(GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.t()),
          :advertisedRoutePriority => any(),
          :interfaceName => any(),
          :ipAddress => any(),
          :managementType => any(),
          :name => any(),
          :peerAsn => any(),
          :peerIpAddress => any()
        }

  field(:advertiseMode)
  field(:advertisedGroups, type: :list)
  field(:advertisedIpRanges, as: GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange, type: :list)
  field(:advertisedRoutePriority)
  field(:interfaceName)
  field(:ipAddress)
  field(:managementType)
  field(:name)
  field(:peerAsn)
  field(:peerIpAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeer do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterBgpPeer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
