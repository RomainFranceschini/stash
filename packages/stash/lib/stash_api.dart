/// Standard caching API for Dart. Defines a common mechanism to create,
/// access, update, and remove information from caches.
library stash_api;

import 'package:stash/src/api/cache/cache.dart';
import 'package:stash/src/api/cache/tiered_cache.dart';

export 'src/api/cache/cache.dart';
export 'src/api/cache/cache_entry.dart';
export 'src/api/cache/cache_info.dart';
export 'src/api/cache/cache_manager.dart';
export 'src/api/cache/cache_stats.dart';
export 'src/api/cache/default_cache.dart';
export 'src/api/cache/event/created_event.dart';
export 'src/api/cache/event/event.dart';
export 'src/api/cache/event/evicted_event.dart';
export 'src/api/cache/event/expired_event.dart';
export 'src/api/cache/event/removed_event.dart';
export 'src/api/cache/event/updated_event.dart';
export 'src/api/cache/eviction/eviction_policy.dart';
export 'src/api/cache/eviction/fifo_policy.dart';
export 'src/api/cache/eviction/filo_policy.dart';
export 'src/api/cache/eviction/lfu_policy.dart';
export 'src/api/cache/eviction/lru_policy.dart';
export 'src/api/cache/eviction/mfu_policy.dart';
export 'src/api/cache/eviction/mru_policy.dart';
export 'src/api/cache/expiry/accessed_policy.dart';
export 'src/api/cache/expiry/created_policy.dart';
export 'src/api/cache/expiry/eternal_policy.dart';
export 'src/api/cache/expiry/expiry_policy.dart';
export 'src/api/cache/expiry/modified_policy.dart';
export 'src/api/cache/expiry/touched_policy.dart';
export 'src/api/cache/manager/default_manager.dart';
export 'src/api/cache/sampler/full_sampler.dart';
export 'src/api/cache/sampler/sampler.dart';
export 'src/api/cache/tiered_cache.dart';
export 'src/api/codec/bytes_reader.dart';
export 'src/api/codec/bytes_util.dart';
export 'src/api/codec/bytes_writer.dart';
export 'src/api/codec/store_codec.dart';
export 'src/api/entry.dart';
export 'src/api/event.dart';
export 'src/api/info.dart';
export 'src/api/manager.dart';
export 'src/api/store.dart';
export 'src/api/vault/default_vault.dart';
export 'src/api/vault/event/created_event.dart';
export 'src/api/vault/event/event.dart';
export 'src/api/vault/event/removed_event.dart';
export 'src/api/vault/event/updated_event.dart';
export 'src/api/vault/manager/default_manager.dart';
export 'src/api/vault/vault.dart';
export 'src/api/vault/vault_entry.dart';
export 'src/api/vault/vault_info.dart';
export 'src/api/vault/vault_manager.dart';
export 'src/api/vault/vault_stats.dart';

/// Creates a new [TieredCache] with a primary and secondary [Cache] instances
///
/// * [primary]: The primary cache
/// * [secondary]: The secondary cache
/// * [name]: The name of the cache
///
/// Returns a [Cache] backed by a [TieredCache]
Cache<T> newTieredCache<T>(Cache<T> primary, Cache<T> secondary,
    {String? name}) {
  return Cache<T>.newTieredCache(primary, secondary, name: name);
}
