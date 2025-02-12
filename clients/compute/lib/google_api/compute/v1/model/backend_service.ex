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

defmodule GoogleApi.Compute.V1.Model.BackendService do
  @moduledoc """
  A BackendService resource. This resource defines a group of backend virtual machines and their serving capacity. (&#x3D;&#x3D; resource_for v1.backendService &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.backendService &#x3D;&#x3D;)

  ## Attributes

  - affinityCookieTtlSec (integer()): Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value for TTL is one day.  When the load balancing scheme is INTERNAL, this field is not used. Defaults to: `null`.
  - backends ([Backend]): The list of backends that serve this BackendService. Defaults to: `null`.
  - cdnPolicy (BackendServiceCdnPolicy): Cloud CDN configuration for this BackendService. Defaults to: `null`.
  - connectionDraining (ConnectionDraining):  Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - customRequestHeaders ([String.t]): Headers that the HTTP/S load balancer should add to proxied requests. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - enableCDN (boolean()): If true, enable Cloud CDN for this BackendService.  When the load balancing scheme is INTERNAL, this field is not used. Defaults to: `null`.
  - fingerprint (binary()): Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a BackendService. An up-to-date fingerprint must be provided in order to update the BackendService, otherwise the request will fail with error 412 conditionNotMet.  To see the latest fingerprint, make a get() request to retrieve a BackendService. Defaults to: `null`.
  - healthChecks ([String.t]): The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for health checking this BackendService. Currently at most one health check can be specified, and a health check is required for Compute Engine backend services. A health check must not be specified for App Engine backend and Cloud Function backend.  For internal load balancing, a URL to a HealthCheck resource must be specified instead. Defaults to: `null`.
  - iap (BackendServiceIap):  Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of resource. Always compute#backendService for backend services. Defaults to: `null`.
  - loadBalancingScheme (String.t): Indicates whether the backend service will be used with internal or external load balancing. A backend service created for one type of load balancing cannot be used with the other. Possible values are INTERNAL and EXTERNAL. Defaults to: `null`.
    - Enum - one of [EXTERNAL, INTERNAL, INTERNAL_SELF_MANAGED, INVALID_LOAD_BALANCING_SCHEME]
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - port (integer()): Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80.  This cannot be used for internal load balancing. Defaults to: `null`.
  - portName (String.t): Name of backend port. The same name should appear in the instance groups referenced by this service. Required when the load balancing scheme is EXTERNAL.  When the load balancing scheme is INTERNAL, this field is not used. Defaults to: `null`.
  - protocol (String.t): The protocol this BackendService uses to communicate with backends.  Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.  For internal load balancing, the possible values are TCP and UDP, and the default is TCP. Defaults to: `null`.
    - Enum - one of [HTTP, HTTP2, HTTPS, SSL, TCP, UDP]
  - region (String.t): [Output Only] URL of the region where the regional backend service resides. This field is not applicable to global backend services. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. Defaults to: `null`.
  - securityPolicy (String.t): [Output Only] The resource URL for the security policy associated with this backend service. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - sessionAffinity (String.t): Type of session affinity to use. The default is NONE.  When the load balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or GENERATED_COOKIE.  When the load balancing scheme is INTERNAL, can be NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO.  When the protocol is UDP, this field is not used. Defaults to: `null`.
    - Enum - one of [CLIENT_IP, CLIENT_IP_PORT_PROTO, CLIENT_IP_PROTO, GENERATED_COOKIE, NONE]
  - timeoutSec (integer()): How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affinityCookieTtlSec => any(),
          :backends => list(GoogleApi.Compute.V1.Model.Backend.t()),
          :cdnPolicy => GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy.t(),
          :connectionDraining => GoogleApi.Compute.V1.Model.ConnectionDraining.t(),
          :creationTimestamp => any(),
          :customRequestHeaders => list(any()),
          :description => any(),
          :enableCDN => any(),
          :fingerprint => any(),
          :healthChecks => list(any()),
          :iap => GoogleApi.Compute.V1.Model.BackendServiceIap.t(),
          :id => any(),
          :kind => any(),
          :loadBalancingScheme => any(),
          :name => any(),
          :port => any(),
          :portName => any(),
          :protocol => any(),
          :region => any(),
          :securityPolicy => any(),
          :selfLink => any(),
          :sessionAffinity => any(),
          :timeoutSec => any()
        }

  field(:affinityCookieTtlSec)
  field(:backends, as: GoogleApi.Compute.V1.Model.Backend, type: :list)
  field(:cdnPolicy, as: GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy)
  field(:connectionDraining, as: GoogleApi.Compute.V1.Model.ConnectionDraining)
  field(:creationTimestamp)
  field(:customRequestHeaders, type: :list)
  field(:description)
  field(:enableCDN)
  field(:fingerprint)
  field(:healthChecks, type: :list)
  field(:iap, as: GoogleApi.Compute.V1.Model.BackendServiceIap)
  field(:id)
  field(:kind)
  field(:loadBalancingScheme)
  field(:name)
  field(:port)
  field(:portName)
  field(:protocol)
  field(:region)
  field(:securityPolicy)
  field(:selfLink)
  field(:sessionAffinity)
  field(:timeoutSec)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
