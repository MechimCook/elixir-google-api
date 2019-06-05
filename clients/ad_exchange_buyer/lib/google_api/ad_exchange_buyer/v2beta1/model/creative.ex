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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  @moduledoc """
  A creative and its classification data.

  ## Attributes

  - accountId (String.t): The account that this creative belongs to. Can be used to filter the response of the creatives.list method. Defaults to: `null`.
  - adChoicesDestinationUrl (String.t): The link to AdChoices destination page. Defaults to: `null`.
  - adTechnologyProviders (AdTechnologyProviders): Output only. The detected ad technology providers. Defaults to: `null`.
  - advertiserName (String.t): The name of the company being advertised in the creative. Defaults to: `null`.
  - agencyId (String.t): The agency ID for this creative. Defaults to: `null`.
  - apiUpdateTime (DateTime.t): Output only. The last update timestamp of the creative via API. Defaults to: `null`.
  - attributes ([String.t]): All attributes for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method. Defaults to: `null`.
    - Enum - one of 
  - clickThroughUrls ([String.t]): The set of destination URLs for the creative. Defaults to: `null`.
  - corrections ([Correction]): Output only. Shows any corrections that were applied to this creative. Defaults to: `null`.
  - creativeId (String.t): The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method. Defaults to: `null`.
  - dealsStatus (String.t): Output only. The top-level deals status of this creative. If disapproved, an entry for &#39;auctionType&#x3D;DIRECT_DEALS&#39; (or &#39;ALL&#39;) in serving_restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, NOT_CHECKED, CONDITIONALLY_APPROVED, APPROVED, DISAPPROVED]
  - declaredClickThroughUrls ([String.t]): The set of declared destination URLs for the creative. Defaults to: `null`.
  - detectedAdvertiserIds ([String.t]): Output only. Detected advertiser IDs, if any. Defaults to: `null`.
  - detectedDomains ([String.t]): Output only. The detected domains for this creative. Defaults to: `null`.
  - detectedLanguages ([String.t]): Output only. The detected languages for this creative. The order is arbitrary. The codes are 2 or 5 characters and are documented at https://developers.google.com/adwords/api/docs/appendix/languagecodes. Defaults to: `null`.
  - detectedProductCategories ([integer()]): Output only. Detected product categories, if any. See the ad-product-categories.txt file in the technical documentation for a list of IDs. Defaults to: `null`.
  - detectedSensitiveCategories ([integer()]): Output only. Detected sensitive categories, if any. See the ad-sensitive-categories.txt file in the technical documentation for a list of IDs. You should use these IDs along with the excluded-sensitive-category field in the bid request to filter your bids. Defaults to: `null`.
  - html (HtmlContent): An HTML creative. Defaults to: `null`.
  - impressionTrackingUrls ([String.t]): The set of URLs to be called to record an impression. Defaults to: `null`.
  - native (NativeContent): A native creative. Defaults to: `null`.
  - openAuctionStatus (String.t): Output only. The top-level open auction status of this creative. If disapproved, an entry for &#39;auctionType &#x3D; OPEN_AUCTION&#39; (or &#39;ALL&#39;) in serving_restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, NOT_CHECKED, CONDITIONALLY_APPROVED, APPROVED, DISAPPROVED]
  - restrictedCategories ([String.t]): All restricted categories for the ads that may be shown from this creative. Defaults to: `null`.
    - Enum - one of 
  - servingRestrictions ([ServingRestriction]): Output only. The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS vs HTTP request, or the type of auction). Defaults to: `null`.
  - vendorIds ([integer()]): All vendor IDs for the ads that may be shown from this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for possible values. Defaults to: `null`.
  - version (integer()): Output only. The version of this creative. Defaults to: `null`.
  - video (VideoContent): A video creative. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :adChoicesDestinationUrl => any(),
          :adTechnologyProviders =>
            GoogleApi.AdExchangeBuyer.V2beta1.Model.AdTechnologyProviders.t(),
          :advertiserName => any(),
          :agencyId => any(),
          :apiUpdateTime => DateTime.t(),
          :attributes => list(any()),
          :clickThroughUrls => list(any()),
          :corrections => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction.t()),
          :creativeId => any(),
          :dealsStatus => any(),
          :declaredClickThroughUrls => list(any()),
          :detectedAdvertiserIds => list(any()),
          :detectedDomains => list(any()),
          :detectedLanguages => list(any()),
          :detectedProductCategories => list(any()),
          :detectedSensitiveCategories => list(any()),
          :html => GoogleApi.AdExchangeBuyer.V2beta1.Model.HtmlContent.t(),
          :impressionTrackingUrls => list(any()),
          :native => GoogleApi.AdExchangeBuyer.V2beta1.Model.NativeContent.t(),
          :openAuctionStatus => any(),
          :restrictedCategories => list(any()),
          :servingRestrictions =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction.t()),
          :vendorIds => list(any()),
          :version => any(),
          :video => GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent.t()
        }

  field(:accountId)
  field(:adChoicesDestinationUrl)
  field(:adTechnologyProviders, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.AdTechnologyProviders)
  field(:advertiserName)
  field(:agencyId)
  field(:apiUpdateTime, as: DateTime)
  field(:attributes, type: :list)
  field(:clickThroughUrls, type: :list)
  field(:corrections, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction, type: :list)
  field(:creativeId)
  field(:dealsStatus)
  field(:declaredClickThroughUrls, type: :list)
  field(:detectedAdvertiserIds, type: :list)
  field(:detectedDomains, type: :list)
  field(:detectedLanguages, type: :list)
  field(:detectedProductCategories, type: :list)
  field(:detectedSensitiveCategories, type: :list)
  field(:html, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.HtmlContent)
  field(:impressionTrackingUrls, type: :list)
  field(:native, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.NativeContent)
  field(:openAuctionStatus)
  field(:restrictedCategories, type: :list)

  field(
    :servingRestrictions,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction,
    type: :list
  )

  field(:vendorIds, type: :list)
  field(:version)
  field(:video, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
