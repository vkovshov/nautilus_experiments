# Warning, this file is autogenerated by cbindgen. Don't modify this manually. */

from cpython.object cimport PyObject
from libc.stdint cimport uintptr_t

cdef extern from "core.h":

    cdef struct String:
        pass

    cdef struct Symbol_t:
        String *value;

    # Returns a Nautilus identifier from a valid Python object pointer.
    #
    # # Safety
    # - Assumes `ptr` is borrowed from a valid Python UTF-8 `str`.
    Symbol_t symbol_new(PyObject *ptr);

    Symbol_t symbol_copy(const Symbol_t *symbol);

    # Frees the memory for the given `symbol` by dropping.
    void symbol_free(Symbol_t symbol);
