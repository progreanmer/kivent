from zone cimport MemoryZone

cdef class MemComponent:
    cdef void* pointer
    cdef unsigned int _id


cdef class BlockIndex:
    cdef list block_objects


cdef class PoolIndex:
    cdef list _block_indices


cdef class ZoneIndex:
    cdef dict _pool_indices
    cdef MemoryZone memory_zone


cdef class IndexedMemoryZone:
    cdef MemoryZone memory_zone
    cdef ZoneIndex zone_index

    cdef void* get_pointer(self, unsigned int index)