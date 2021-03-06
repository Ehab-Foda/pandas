# -*- coding: utf-8 -*-

from cpython.datetime cimport datetime

from numpy cimport int64_t
cdef int64_t NPY_NAT

cdef bint _nat_scalar_rules[6]


cdef class _NaT(datetime):
    cdef readonly:
        int64_t value
        object freq

cdef _NaT c_NaT


cdef bint checknull_with_nat(object val)
cpdef bint is_null_datetimelike(object val)
