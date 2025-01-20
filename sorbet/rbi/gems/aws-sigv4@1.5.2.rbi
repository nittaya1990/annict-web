# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `aws-sigv4` gem.
# Please instead update this file by running `bin/tapioca gem aws-sigv4`.


# source://aws-sigv4//lib/aws-sigv4/credentials.rb#3
module Aws
  class << self
    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#133
    def config; end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#136
    def config=(config); end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#195
    def eager_autoload!(*args); end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#188
    def empty_connection_pools!; end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#145
    def partition(partition_name); end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#150
    def partitions; end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#126
    def shared_config; end

    # source://aws-sdk-core/3.169.0/lib/aws-sdk-core.rb#165
    def use_bundled_cert!; end
  end
end

# source://aws-sigv4//lib/aws-sigv4/credentials.rb#4
module Aws::Sigv4; end

# Users that wish to configure static credentials can use the
# `:access_key_id` and `:secret_access_key` constructor options.
#
# @api private
#
# source://aws-sigv4//lib/aws-sigv4/credentials.rb#8
class Aws::Sigv4::Credentials
  # @api private
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  # @return [Credentials] a new instance of Credentials
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#13
  def initialize(options = T.unsafe(nil)); end

  # @api private
  # @return [String]
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#25
  def access_key_id; end

  # @api private
  # @return [String]
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#28
  def secret_access_key; end

  # @api private
  # @return [String, nil]
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#31
  def session_token; end

  # @api private
  # @return [Boolean] Returns `true` if the access key id and secret
  #   access key are both set.
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#35
  def set?; end
end

# source://aws-sigv4//lib/aws-sigv4/errors.rb#5
module Aws::Sigv4::Errors; end

# source://aws-sigv4//lib/aws-sigv4/errors.rb#7
class Aws::Sigv4::Errors::MissingCredentialsError < ::ArgumentError
  # @return [MissingCredentialsError] a new instance of MissingCredentialsError
  #
  # source://aws-sigv4//lib/aws-sigv4/errors.rb#8
  def initialize(msg = T.unsafe(nil)); end
end

# source://aws-sigv4//lib/aws-sigv4/errors.rb#18
class Aws::Sigv4::Errors::MissingRegionError < ::ArgumentError
  # @return [MissingRegionError] a new instance of MissingRegionError
  #
  # source://aws-sigv4//lib/aws-sigv4/errors.rb#19
  def initialize(*args); end
end

# source://aws-sigv4//lib/aws-sigv4/signature.rb#5
class Aws::Sigv4::Signature
  # @api private
  # @return [Signature] a new instance of Signature
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#8
  def initialize(options); end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#27
  def canonical_request; end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#27
  def canonical_request=(_arg0); end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#33
  def content_sha256; end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#33
  def content_sha256=(_arg0); end

  # @return [Hash] Internal data for debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#36
  def extra; end

  # @return [Hash] Internal data for debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#36
  def extra=(_arg0); end

  # @return [Hash<String,String>] A hash of headers that should
  #   be applied to the HTTP request. Header keys are lower
  #   cased strings and may include the following:
  #
  #   * 'host'
  #   * 'x-amz-date'
  #   * 'x-amz-security-token'
  #   * 'x-amz-content-sha256'
  #   * 'authorization'
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#24
  def headers; end

  # @return [Hash<String,String>] A hash of headers that should
  #   be applied to the HTTP request. Header keys are lower
  #   cased strings and may include the following:
  #
  #   * 'host'
  #   * 'x-amz-date'
  #   * 'x-amz-security-token'
  #   * 'x-amz-content-sha256'
  #   * 'authorization'
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#24
  def headers=(_arg0); end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#30
  def string_to_sign; end

  # @return [String] For debugging purposes.
  #
  # source://aws-sigv4//lib/aws-sigv4/signature.rb#30
  def string_to_sign=(_arg0); end
end

# Utility class for creating AWS signature version 4 signature. This class
# provides two methods for generating signatures:
#
# * {#sign_request} - Computes a signature of the given request, returning
#   the hash of headers that should be applied to the request.
#
# * {#presign_url} - Computes a presigned request with an expiration.
#   By default, the body of this request is not signed and the request
#   expires in 15 minutes.
#
# ## Configuration
#
# To use the signer, you need to specify the service, region, and credentials.
# The service name is normally the endpoint prefix to an AWS service. For
# example:
#
#     ec2.us-west-1.amazonaws.com => ec2
#
# The region is normally the second portion of the endpoint, following
# the service name.
#
#     ec2.us-west-1.amazonaws.com => us-west-1
#
# It is important to have the correct service and region name, or the
# signature will be invalid.
#
# ## Credentials
#
# The signer requires credentials. You can configure the signer
# with static credentials:
#
#     signer = Aws::Sigv4::Signer.new(
#       service: 's3',
#       region: 'us-east-1',
#       # static credentials
#       access_key_id: 'akid',
#       secret_access_key: 'secret'
#     )
#
# You can also provide refreshing credentials via the `:credentials_provider`.
# If you are using the AWS SDK for Ruby, you can use any of the credential
# classes:
#
#     signer = Aws::Sigv4::Signer.new(
#       service: 's3',
#       region: 'us-east-1',
#       credentials_provider: Aws::InstanceProfileCredentials.new
#     )
#
# Other AWS SDK for Ruby classes that can be provided via `:credentials_provider`:
#
# * `Aws::Credentials`
# * `Aws::SharedCredentials`
# * `Aws::InstanceProfileCredentials`
# * `Aws::AssumeRoleCredentials`
# * `Aws::ECSCredentials`
#
# A credential provider is any object that responds to `#credentials`
# returning another object that responds to `#access_key_id`, `#secret_access_key`,
# and `#session_token`.
#
# source://aws-sigv4//lib/aws-sigv4/signer.rb#75
class Aws::Sigv4::Signer
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @overload initialize
  # @overload initialize
  # @overload initialize
  # @param options [Hash] a customizable set of options
  # @return [Signer] a new instance of Signer
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#141
  def initialize(options = T.unsafe(nil)); end

  # @return [Boolean] When `true` the `x-amz-content-sha256` header will be signed and
  #   returned in the signature headers.
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#185
  def apply_checksum_header; end

  # @return [#credentials] Returns an object that responds to
  #   `#credentials`, returning an object that responds to the following
  #   methods:
  #
  #   * `#access_key_id` => String
  #   * `#secret_access_key` => String
  #   * `#session_token` => String, nil
  #   * `#set?` => Boolean
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#177
  def credentials_provider; end

  # Signs a URL with query authentication. Using query parameters
  # to authenticate requests is useful when you want to express a
  # request entirely in a URL. This method is also referred as
  # presigning a URL.
  #
  # See [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) for more information.
  #
  # To generate a presigned URL, you must provide a HTTP URI and
  # the http method.
  #
  #     url = signer.presign_url(
  #       http_method: 'GET',
  #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
  #       expires_in: 60
  #     )
  #
  # By default, signatures are valid for 15 minutes. You can specify
  # the number of seconds for the URL to expire in.
  #
  #     url = signer.presign_url(
  #       http_method: 'GET',
  #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
  #       expires_in: 3600 # one hour
  #     )
  #
  # You can provide a hash of headers that you plan to send with the
  # request. Every 'X-Amz-*' header you plan to send with the request
  # **must** be provided, or the signature is invalid. Other headers
  # are optional, but should be provided for security reasons.
  #
  #     url = signer.presign_url(
  #       http_method: 'PUT',
  #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
  #       headers: {
  #         'X-Amz-Meta-Custom' => 'metadata'
  #       }
  #     )
  #
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  # @return [HTTPS::URI, HTTP::URI]
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#402
  def presign_url(options); end

  # @return [String]
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#166
  def region; end

  # @return [String]
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#163
  def service; end

  # Signs a event and returns signature headers and prior signature
  # used for next event signing.
  #
  # Headers of a sigv4 signed event message only contains 2 headers
  #   * ':chunk-signature'
  #     * computed signature of the event, binary string, 'bytes' type
  #   * ':date'
  #     * millisecond since epoch, 'timestamp' type
  #
  # Payload of the sigv4 signed event message contains eventstream encoded message
  # which is serialized based on input and protocol
  #
  # To sign events
  #
  #     headers_0, signature_0 = signer.sign_event(
  #       prior_signature, # hex-encoded string
  #       payload_0, # binary string (eventstream encoded event 0)
  #       encoder, # Aws::EventStreamEncoder
  #     )
  #
  #     headers_1, signature_1 = signer.sign_event(
  #       signature_0,
  #       payload_1, # binary string (eventstream encoded event 1)
  #       encoder
  #     )
  #
  # The initial prior_signature should be using the signature computed at initial request
  #
  # Note:
  #
  #   Since ':chunk-signature' header value has bytes type, the signature value provided
  #   needs to be a binary string instead of a hex-encoded string (like original signature
  #   V4 algorithm). Thus, when returning signature value used for next event siging, the
  #   signature value (a binary string) used at ':chunk-signature' needs to converted to
  #   hex-encoded string using #unpack
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#315
  def sign_event(prior_signature, payload, encoder); end

  # Computes a version 4 signature signature. Returns the resultant
  # signature as a hash of headers to apply to your HTTP request. The given
  # request is not modified.
  #
  #     signature = signer.sign_request(
  #       http_method: 'PUT',
  #       url: 'https://domain.com',
  #       headers: {
  #         'Abc' => 'xyz',
  #       },
  #       body: 'body' # String or IO object
  #     )
  #
  #     # Apply the following hash of headers to your HTTP request
  #     signature.headers['host']
  #     signature.headers['x-amz-date']
  #     signature.headers['x-amz-security-token']
  #     signature.headers['x-amz-content-sha256']
  #     signature.headers['authorization']
  #
  # In addition to computing the signature headers, the canonicalized
  # request, string to sign and content sha256 checksum are also available.
  # These values are useful for debugging signature errors returned by AWS.
  #
  #     signature.canonical_request #=> "..."
  #     signature.string_to_sign #=> "..."
  #     signature.content_sha256 #=> "..."
  #
  # @option request
  # @option request
  # @option request
  # @option request
  # @param request [Hash]
  # @return [Signature] Return an instance of {Signature} that has
  #   a `#headers` method. The headers must be applied to your request.
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#234
  def sign_request(request); end

  # @return [Set<String>] Returns a set of header names that should not be signed.
  #   All header names have been downcased.
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#181
  def unsigned_headers; end

  private

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#591
  def canonical_header_value(value); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#579
  def canonical_headers(headers); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#448
  def canonical_request(http_method, url, headers, content_sha256); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#500
  def credential(credentials, date); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#491
  def credential_scope(date); end

  # Returns true if credentials are set (not nil or empty)
  # Credentials may not implement the Credentials interface
  # and may just be credential like Client response objects
  # (eg those returned by sts#assume_role)
  #
  # @return [Boolean]
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#716
  def credentials_set?(credentials); end

  # the credentials used by CRT must be a
  # CRT StaticCredentialsProvider object
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#727
  def crt_fetch_credentials; end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#795
  def crt_presign_url(options); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#736
  def crt_sign_request(request); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#676
  def downcase_headers(headers); end

  # Comparing to original signature v4 algorithm,
  # returned signature is a binary string instread of
  # hex-encoded string. (Since ':chunk-signature' requires
  # 'bytes' type)
  #
  # Note:
  #   converting signature from binary string to hex-encoded
  #   string is handled at #sign_event instead. (Will be used
  #   as next prior signature for event signing)
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#521
  def event_signature(secret_access_key, date, string_to_sign); end

  # Compared to original #string_to_sign at signature v4 algorithm
  # there is no canonical_request concept for an eventstream event,
  # instead, an event contains headers and payload two parts, and
  # they will be used for computing digest in #event_string_to_sign
  #
  # Note:
  #   While headers need to be encoded under eventstream format,
  #   payload used is already eventstream encoded (event without signature),
  #   thus no extra encoding is needed.
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#477
  def event_string_to_sign(datetime, headers, payload, prior_signature, encoder); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#648
  def extract_credentials_provider(options); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#683
  def extract_expires_in(options); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#658
  def extract_http_method(request); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#640
  def extract_region(options); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#631
  def extract_service(options); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#667
  def extract_url(request); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#702
  def fetch_credentials; end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#627
  def hexhmac(key, value); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#623
  def hmac(key, value); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#595
  def host(uri); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#540
  def normalized_querystring(querystring); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#530
  def path(url); end

  # @param value [File, Tempfile, IO#read, String]
  # @return [String<SHA256 Hexdigest>]
  #
  # source://aws-sigv4//lib/aws-sigv4/signer.rb#606
  def sha256_hexdigest(value); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#504
  def signature(secret_access_key, date, string_to_sign); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#569
  def signed_headers(headers); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#459
  def string_to_sign(datetime, canonical_request); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#693
  def uri_escape(string); end

  # source://aws-sigv4//lib/aws-sigv4/signer.rb#697
  def uri_escape_path(string); end

  class << self
    # @api private
    #
    # source://aws-sigv4//lib/aws-sigv4/signer.rb#853
    def uri_escape(string); end

    # @api private
    #
    # source://aws-sigv4//lib/aws-sigv4/signer.rb#848
    def uri_escape_path(path); end

    # @return [Boolean]
    #
    # source://aws-sigv4//lib/aws-sigv4/signer.rb#843
    def use_crt?; end
  end
end

# Users that wish to configure static credentials can use the
# `:access_key_id` and `:secret_access_key` constructor options.
#
# @api private
#
# source://aws-sigv4//lib/aws-sigv4/credentials.rb#46
class Aws::Sigv4::StaticCredentialsProvider
  # @api private
  # @option options
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  # @return [StaticCredentialsProvider] a new instance of StaticCredentialsProvider
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#52
  def initialize(options = T.unsafe(nil)); end

  # @api private
  # @return [Credentials]
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#59
  def credentials; end

  # @api private
  # @return [Boolean]
  #
  # source://aws-sigv4//lib/aws-sigv4/credentials.rb#62
  def set?; end
end

# source://aws-sigv4//lib/aws-sigv4.rb#10
Aws::Sigv4::VERSION = T.let(T.unsafe(nil), String)