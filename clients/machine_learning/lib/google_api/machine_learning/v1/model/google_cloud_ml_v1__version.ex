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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Version do
  @moduledoc """
  Represents a version of the model.  Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions. You can get information about all of the versions of a given model by calling [projects.models.versions.list](/ml-engine/reference/rest/v1/projects.models.versions/list).

  ## Attributes

  - autoScaling (GoogleCloudMlV1AutoScaling): Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model&#39;s ability to scale or you will start seeing increases in latency and 429 response codes. Defaults to: `null`.
  - createTime (DateTime.t): Output only. The time the version was created. Defaults to: `null`.
  - deploymentUri (String.t): Required. The Cloud Storage location of the trained model used to create the version. See the [guide to model deployment](/ml-engine/docs/tensorflow/deploying-models) for more information.  When passing Version to [projects.models.versions.create](/ml-engine/reference/rest/v1/projects.models.versions/create) the model service uses the specified location as the source of the model. Once deployed, the model version is hosted by the prediction service, so this location is useful only as a historical record. The total number of model files can&#39;t exceed 1000. Defaults to: `null`.
  - description (String.t): Optional. The description specified for the version when it was created. Defaults to: `null`.
  - errorMessage (String.t): Output only. The details of a failure or a cancellation. Defaults to: `null`.
  - etag (binary()): &#x60;etag&#x60; is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the &#x60;etag&#x60; in the read-modify-write cycle to perform model updates in order to avoid race conditions: An &#x60;etag&#x60; is returned in the response to &#x60;GetVersion&#x60;, and systems are expected to put that etag in the request to &#x60;UpdateVersion&#x60; to ensure that their change will be applied to the model as intended. Defaults to: `null`.
  - framework (String.t): Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are &#x60;TENSORFLOW&#x60;, &#x60;SCIKIT_LEARN&#x60;, &#x60;XGBOOST&#x60;. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose &#x60;SCIKIT_LEARN&#x60; or &#x60;XGBOOST&#x60;, you must also set the runtime version of the model to 1.4 or greater.  Do **not** specify a framework if you&#39;re deploying a [custom prediction routine](/ml-engine/docs/tensorflow/custom-prediction-routines). Defaults to: `null`.
    - Enum - one of [FRAMEWORK_UNSPECIFIED, TENSORFLOW, SCIKIT_LEARN, XGBOOST]
  - isDefault (boolean()): Output only. If true, this version will be used to handle prediction requests that do not specify a version.  You can change the default version by calling [projects.methods.versions.setDefault](/ml-engine/reference/rest/v1/projects.models.versions/setDefault). Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on &lt;a href&#x3D;\&quot;/ml-engine/docs/tensorflow/resource-labels\&quot;&gt;using labels&lt;/a&gt;. Defaults to: `null`.
  - lastUseTime (DateTime.t): Output only. The time the version was last used for prediction. Defaults to: `null`.
  - machineType (String.t): Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. &lt;dl&gt;   &lt;dt&gt;mls1-c1-m2&lt;/dt&gt;   &lt;dd&gt;   The &lt;b&gt;default&lt;/b&gt; machine type, with 1 core and 2 GB RAM. The deprecated   name for this machine type is \&quot;mls1-highmem-1\&quot;.   &lt;/dd&gt;   &lt;dt&gt;mls1-c4-m2&lt;/dt&gt;   &lt;dd&gt;   In &lt;b&gt;Beta&lt;/b&gt;. This machine type has 4 cores and 2 GB RAM. The   deprecated name for this machine type is \&quot;mls1-highcpu-4\&quot;.   &lt;/dd&gt; &lt;/dl&gt; Defaults to: `null`.
  - manualScaling (GoogleCloudMlV1ManualScaling): Manually select the number of nodes to use for serving the model. You should generally use &#x60;auto_scaling&#x60; with an appropriate &#x60;min_nodes&#x60; instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes. Defaults to: `null`.
  - name (String.t): Required.The name specified for the version when it was created.  The version name must be unique within the model it is created in. Defaults to: `null`.
  - packageUris ([String.t]): Optional. Cloud Storage paths (&#x60;gs://…&#x60;) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code).  For a custom prediction routine, one of these packages must contain your Predictor class (see [&#x60;predictionClass&#x60;](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list).  If you specify this field, you must also set [&#x60;runtimeVersion&#x60;](#Version.FIELDS.runtime_version) to 1.4 or greater. Defaults to: `null`.
  - predictionClass (String.t): Optional. The fully qualified name (&lt;var&gt;module_name&lt;/var&gt;.&lt;var&gt;class_name&lt;/var&gt;) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [&#x60;packageUris&#x60; field](#Version.FIELDS.package_uris).  Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [&#x60;runtimeVersion&#x60;](#Version.FIELDS.runtime_version) to 1.4 or greater.  The following code sample provides the Predictor interface:  &#x60;&#x60;&#x60;py class Predictor(object): \&quot;\&quot;\&quot;Interface for constructing custom predictors.\&quot;\&quot;\&quot;  def predict(self, instances, **kwargs):     \&quot;\&quot;\&quot;Performs custom prediction.      Instances are the decoded values from the request. They have already     been deserialized from JSON.      Args:         instances: A list of prediction input instances.         **kwargs: A dictionary of keyword args provided as additional             fields on the predict request body.      Returns:         A list of outputs containing the prediction results. This list must         be JSON serializable.     \&quot;\&quot;\&quot;     raise NotImplementedError()  @classmethod def from_path(cls, model_dir):     \&quot;\&quot;\&quot;Creates an instance of Predictor using the given path.      Loading of the predictor should be done in this method.      Args:         model_dir: The local directory that contains the exported model             file along with any additional files uploaded when creating the             version resource.      Returns:         An instance implementing this Predictor class.     \&quot;\&quot;\&quot;     raise NotImplementedError() &#x60;&#x60;&#x60;  Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines). Defaults to: `null`.
  - pythonVersion (String.t): Optional. The version of Python used in prediction. If not set, the default version is &#39;2.7&#39;. Python &#39;3.5&#39; is available when &#x60;runtime_version&#x60; is set to &#39;1.4&#39; and above. Python &#39;2.7&#39; works with all supported runtime versions. Defaults to: `null`.
  - runtimeVersion (String.t): Optional. The AI Platform runtime version to use for this deployment. If not set, AI Platform uses the default stable version, 1.0. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning). Defaults to: `null`.
  - serviceAccount (String.t): Optional. Specifies the service account for resource access control. Defaults to: `null`.
  - state (String.t): Output only. The state of a version. Defaults to: `null`.
    - Enum - one of [UNKNOWN, READY, CREATING, FAILED, DELETING, UPDATING]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoScaling => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling.t(),
          :createTime => DateTime.t(),
          :deploymentUri => any(),
          :description => any(),
          :errorMessage => any(),
          :etag => any(),
          :framework => any(),
          :isDefault => any(),
          :labels => map(),
          :lastUseTime => DateTime.t(),
          :machineType => any(),
          :manualScaling => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1ManualScaling.t(),
          :name => any(),
          :packageUris => list(any()),
          :predictionClass => any(),
          :pythonVersion => any(),
          :runtimeVersion => any(),
          :serviceAccount => any(),
          :state => any()
        }

  field(:autoScaling, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling)
  field(:createTime, as: DateTime)
  field(:deploymentUri)
  field(:description)
  field(:errorMessage)
  field(:etag)
  field(:framework)
  field(:isDefault)
  field(:labels, type: :map)
  field(:lastUseTime, as: DateTime)
  field(:machineType)
  field(:manualScaling, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1ManualScaling)
  field(:name)
  field(:packageUris, type: :list)
  field(:predictionClass)
  field(:pythonVersion)
  field(:runtimeVersion)
  field(:serviceAccount)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Version do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
