# Warning, this file is autogenerated by cbindgen. Don't modify this manually. */

from cpython.object cimport PyObject
from libc.stdint cimport uintptr_t

cdef extern from "../includes/core.h":

    cdef struct String:
        pass

    cdef struct Symbol_t:
        String *value;

    cdef struct InstrumentId_t:
        Symbol_t symbol;
        Symbol_t venue;

    # Represents a single quote tick in a financial market.
    cdef struct QuoteTick_t:
        InstrumentId_t instrument_id;

    void quote_tick_free(QuoteTick_t tick);

    QuoteTick_t quote_tick_from_raw(InstrumentId_t instrument_id);

    # Returns a Nautilus identifier from a valid Python object pointer.
    #
    # # Safety
    # - Assumes `ptr` is borrowed from a valid Python UTF-8 `str`.
    Symbol_t symbol_new(PyObject *ptr);

    # Frees the memory for the given `symbol` by dropping.
    void symbol_free(Symbol_t symbol);

    # Returns a Nautilus identifier from valid Python object pointers.
    #
    # # Safety
    # - Assumes `symbol_ptr` is borrowed from a valid Python UTF-8 `str`.
    # - Assumes `venue_ptr` is borrowed from a valid Python UTF-8 `str`.
    InstrumentId_t instrument_id_new(PyObject *symbol_ptr, PyObject *venue_ptr);

    # Frees the memory for the given `instrument_id` by dropping.
    void instrument_id_free(InstrumentId_t instrument_id);
