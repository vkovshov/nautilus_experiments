# Warning, this file is autogenerated by cbindgen. Don't modify this manually. */

from cpython.object cimport PyObject
from libc.stdint cimport uintptr_t

cdef extern from "core.h":

    cdef struct Rc_String:
        pass

    cdef struct Symbol_t:
        Rc_String *value;

    cdef struct InstrumentId_t:
        Symbol_t symbol;

    # Represents a single quote tick in a financial market.
    cdef struct QuoteTick_t:
        InstrumentId_t instrument_id;

    QuoteTick_t quote_tick_new(InstrumentId_t instrument_id);

    InstrumentId_t instrument_id_new_from_pystr(PyObject *ptr);

    InstrumentId_t instrument_id_new(const Symbol_t *symbol);

    Symbol_t symbol_new(PyObject *ptr);

    QuoteTick_t quote_tick_clone(const QuoteTick_t *tick);

    InstrumentId_t instrument_id_clone(const InstrumentId_t *instrument_id);

    # Frees the memory for the given `symbol` by dropping.
    void quote_tick_free(QuoteTick_t tick);

    # Frees the memory for the given `symbol` by dropping.
    void instrument_id_free(InstrumentId_t instrument_id);

    # Frees the memory for the given `symbol` by dropping.
    void symbol_free(Symbol_t symbol);

    void instrument_id_debug(const InstrumentId_t *instrument_id);

    void quote_tick_debug(const QuoteTick_t *tick);

    void symbol_debug(const Symbol_t *symbol);

    void symbol_vec_text(void *data, uintptr_t len);
