#!/usr/bin/perl

# [[[ PREPROCESSOR ]]]
# <<< EXECUTE_ERROR: 'ERROR ENVAVRV03, TYPE-CHECKING MISMATCH' >>>
# <<< EXECUTE_ERROR: 'number_arrayref element value expected but non-number value found at index 3' >>>
# <<< EXECUTE_ERROR: 'in variable $input_1 from subroutine check_number_arrayref()' >>>

# [[[ HEADER ]]]
use RPerl;
use strict;
use warnings;
our $VERSION = 0.000_001;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator

# [[[ INCLUDES ]]]
use RPerl::Test::TypeCheckingTrace::AllTypes;

# [[[ OPERATIONS ]]]
check_number_arrayref( [ -999_999, 3, 4, 'howdy' ] );
