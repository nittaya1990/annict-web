# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphql-fragment_cache` gem.
# Please instead update this file by running `bin/tapioca gem graphql-fragment_cache`.


# source://graphql-fragment_cache//lib/graphql/fragment_cache/ext/context_fragments.rb#3
module GraphQL
  class << self
    # source://graphql/1.12.14/lib/graphql.rb#172
    def const_missing(const_name); end

    # source://graphql/1.12.14/lib/graphql.rb#24
    def default_parser; end

    # source://graphql/1.12.14/lib/graphql.rb#28
    def default_parser=(_arg0); end

    # source://graphql/1.12.14/lib/graphql.rb#34
    def parse(graphql_string, tracer: T.unsafe(nil)); end

    # source://graphql/1.12.14/lib/graphql.rb#41
    def parse_file(filename); end

    # source://graphql/1.12.14/lib/graphql.rb#46
    def parse_with_racc(string, filename: T.unsafe(nil), tracer: T.unsafe(nil)); end

    # source://graphql/1.12.14/lib/graphql.rb#51
    def scan(graphql_string); end

    # source://graphql/1.12.14/lib/graphql.rb#55
    def scan_with_ragel(graphql_string); end
  end
end

# Plugin definition
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/ext/context_fragments.rb#4
module GraphQL::FragmentCache
  class << self
    # Returns the value of attribute cache_store.
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#24
    def cache_store; end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#43
    def cache_store=(store); end

    # @yield [_self]
    # @yieldparam _self [GraphQL::FragmentCache] the object that the method was called on
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#39
    def configure; end

    # Returns the value of attribute default_options.
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#26
    def default_options; end

    # Sets the attribute default_options
    #
    # @param value the value to set the attribute default_options to.
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#26
    def default_options=(_arg0); end

    # @return [Boolean]
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#59
    def graphql_ruby_after_2_0_13?; end

    # @return [Boolean]
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#55
    def graphql_ruby_before_2_0?; end

    # Returns the value of attribute namespace.
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#25
    def namespace; end

    # Sets the attribute namespace
    #
    # @param value the value to set the attribute namespace to.
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#25
    def namespace=(_arg0); end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#28
    def use(schema_defn, options = T.unsafe(nil)); end

    private

    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#65
    def check_graphql_version(predicate); end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache.rb#69
    def verify_interpreter_and_analysis!(schema_defn); end
  end
end

# Extends key builder to use .expand_cache_key in Rails
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#120
class GraphQL::FragmentCache::CacheKeyBuilder
  # @return [CacheKeyBuilder] a new instance of CacheKeyBuilder
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#131
  def initialize(query:, path:, object: T.unsafe(nil), **options); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#139
  def build; end

  # Returns the value of attribute object.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#129
  def object; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/rails/cache_key_builder.rb#7
  def object_key(obj); end

  # Returns the value of attribute path.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#129
  def path; end

  # Returns the value of attribute query.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#129
  def query; end

  # Returns the value of attribute schema.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#129
  def schema; end

  private

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#149
  def implicit_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#198
  def object_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#173
  def path_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#157
  def query_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#153
  def schema_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#161
  def selections_cache_key; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#192
  def traverse_argument(argument); end

  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/cache_key_builder.rb#124
    def call(**options); end
  end
end

# Saves resolved fragment values to cache store
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/cacher.rb#8
module GraphQL::FragmentCache::Cacher
  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/cacher.rb#10
    def call(query); end

    private

    # source://graphql-fragment_cache//lib/graphql/fragment_cache/cacher.rb#22
    def batched_persist(query); end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache/cacher.rb#29
    def persist(query); end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache/cacher.rb#35
    def select_valid_fragments(query); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/connections/patch.rb#5
module GraphQL::FragmentCache::Connections; end

# Patches GraphQL::Pagination::Connections to support raw values
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/connections/patch.rb#7
module GraphQL::FragmentCache::Connections::Patch
  private

  # @return [Boolean]
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/connections/patch.rb#20
  def raw_value?(value); end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/ext/context_fragments.rb#5
module GraphQL::FragmentCache::Ext; end

# Wraps resolver with cache method
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#8
class GraphQL::FragmentCache::FieldExtension < ::GraphQL::Schema::FieldExtension
  # @return [FieldExtension] a new instance of FieldExtension
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#32
  def initialize(options:, **_rest); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#42
  def resolve(object:, arguments:, **_options); end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#40
GraphQL::FragmentCache::FieldExtension::NOT_RESOLVED = T.let(T.unsafe(nil), Object)

# source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#9
module GraphQL::FragmentCache::FieldExtension::Patch
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#10
  def initialize(*args, **kwargs, &block); end

  private

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/field_extension.rb#23
  def build_extension(options); end
end

# Represents a single fragment to cache
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#10
class GraphQL::FragmentCache::Fragment
  # @return [Fragment] a new instance of Fragment
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#41
  def initialize(context, **options); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#55
  def cache_key; end

  # Returns the value of attribute context.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#39
  def context; end

  # Returns the value of attribute options.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#39
  def options; end

  # Returns the value of attribute path.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#39
  def path; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#48
  def read; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#63
  def value; end

  # @return [Boolean]
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#59
  def with_final_value?; end

  private

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#87
  def final_value; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#83
  def interpreter_context; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#69
  def read_from_context; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#77
  def value_from_cache; end

  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#14
    def read_multi(fragments); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/fragment.rb#11
GraphQL::FragmentCache::Fragment::NIL_IN_CACHE = T.let(T.unsafe(nil), Object)

# Memory adapter for storing cached fragments
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#8
class GraphQL::FragmentCache::MemoryStore
  # @raise [ArgumentError]
  # @return [MemoryStore] a new instance of MemoryStore
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#19
  def initialize(expires_in: T.unsafe(nil), **other); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#55
  def clear; end

  # Returns the value of attribute default_expires_in.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#17
  def default_expires_in; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#50
  def delete(key); end

  # @return [Boolean]
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#30
  def exist?(key); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#26
  def keys; end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#34
  def read(key); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#45
  def write(key, value, expires_in: T.unsafe(nil), **options); end

  private

  # Returns the value of attribute storage.
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#61
  def storage; end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#11
class GraphQL::FragmentCache::MemoryStore::Entry < ::Struct
  # @return [Boolean]
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/memory_store.rb#12
  def expired?; end
end

# Adds #cache_fragment method and kwarg option
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/object.rb#9
module GraphQL::FragmentCache::Object
  include ::GraphQL::FragmentCache::ObjectHelpers

  class << self
    # @private
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/object.rb#10
    def included(base); end
  end
end

# Adds #cache_fragment method
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/object_helpers.rb#11
module GraphQL::FragmentCache::ObjectHelpers
  extend ::Forwardable

  # @raise [ArgumentError]
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/object_helpers.rb#26
  def cache_fragment(object_to_cache = T.unsafe(nil), **options, &block); end

  class << self
    # @private
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/object_helpers.rb#14
    def included(base); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/object_helpers.rb#24
GraphQL::FragmentCache::ObjectHelpers::NO_OBJECT = T.let(T.unsafe(nil), Object)

# source://graphql-fragment_cache//lib/graphql/fragment_cache/railtie.rb#9
class GraphQL::FragmentCache::Railtie < ::Rails::Railtie; end

# Provides Rails-specific configuration,
# accessible through `Rails.application.config.graphql_fragment_cache`
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/railtie.rb#10
module GraphQL::FragmentCache::Railtie::Config
  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/railtie.rb#12
    def store=(store); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/lazy_cache_resolver.rb#5
module GraphQL::FragmentCache::Schema; end

# Adds hook for saving cached values after query is resolved
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/instrumentation.rb#9
module GraphQL::FragmentCache::Schema::Instrumentation
  private

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/instrumentation.rb#15
  def after_query(query); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/instrumentation.rb#12
  def before_query(query); end

  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/instrumentation.rb#15
    def after_query(query); end

    # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/instrumentation.rb#12
    def before_query(query); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/lazy_cache_resolver.rb#7
class GraphQL::FragmentCache::Schema::LazyCacheResolver
  # @return [LazyCacheResolver] a new instance of LazyCacheResolver
  #
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/lazy_cache_resolver.rb#8
  def initialize(fragment, query_ctx, object_to_cache, &block); end

  # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/lazy_cache_resolver.rb#21
  def resolve; end
end

# Patches GraphQL::Schema to support fragment cache
#
# source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/patch.rb#9
module GraphQL::FragmentCache::Schema::Patch
  # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/patch.rb#10
  def schema_cache_key; end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/tracer.rb#7
class GraphQL::FragmentCache::Schema::Tracer
  class << self
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/tracer.rb#11
    def trace(key, data); end

    private

    # @return [Boolean]
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/tracer.rb#21
    def connection_field?(key, data); end

    # @raise [StandardError]
    #
    # source://graphql-fragment_cache//lib/graphql/fragment_cache/schema/tracer.rb#25
    def verify_connections!(context); end
  end
end

# source://graphql-fragment_cache//lib/graphql/fragment_cache/version.rb#5
GraphQL::FragmentCache::VERSION = T.let(T.unsafe(nil), String)