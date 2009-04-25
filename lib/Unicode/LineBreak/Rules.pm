#-*- perl -*-

=encoding utf8

This file is automatically generated.  DON'T EDIT THIS FILE MANUALLY.

=cut

package Unicode::LineBreak;

our %lb_IDX = (
    'OP' => 0,
    'CL' => 1,
    'QU' => 2,
    'GL' => 3,
    'NS' => 4,
    'EX' => 5,
    'SY' => 6,
    'IS' => 7,
    'PR' => 8,
    'PO' => 9,
    'NU' => 10,
    'AL' => 11,
    'ID' => 12,
    'IN' => 13,
    'HY' => 14,
    'BA' => 15,
    'BB' => 16,
    'B2' => 17,
    'CB' => 18,
    'ZW' => 19,
    'WJ' => 20,
    'BK' => 21,
    'CR' => 22,
    'LF' => 23,
    'NL' => 24,
    'SP' => 25,
    'NSid' => 26,
    'CM' => 27,
    'H2' => 28,
    'H3' => 29,
    'JL' => 30,
    'JV' => 31,
    'JT' => 32,
    'SG' => 33,
    'AI' => 34,
    'SAcm' => 35,
    'SAal' => 36,
    'XX' => 37,
);

use constant M => 'MANDATORY';
use constant D => 'DIRECT';
use constant I => 'INDIRECT';
use constant P => 'PROHIBITED';

our $RULES_MAP = [
    #OpClQuGlNsExSyIsPrPoNuAlIdInHyBaBbB2CbZwWj
    [P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,P,], # OP
    [D,P,I,P,P,P,P,P,I,I,D,D,D,D,I,I,D,D,D,P,P,], # CL
    [P,P,I,P,I,P,P,P,I,I,I,I,I,I,I,I,I,I,I,P,P,], # QU
    [I,P,I,P,I,P,P,P,I,I,I,I,I,I,I,I,I,I,I,P,P,], # GL
    [D,P,I,P,I,P,P,P,D,D,D,D,D,D,I,I,D,D,D,P,P,], # NS
    [D,P,I,P,I,P,P,P,D,D,D,D,D,D,I,I,D,D,D,P,P,], # EX
    [D,P,I,P,I,P,P,P,D,D,I,D,D,D,I,I,D,D,D,P,P,], # SY
    [D,P,I,P,I,P,P,P,D,D,I,I,D,D,I,I,D,D,D,P,P,], # IS
    [I,P,I,P,I,P,P,P,D,D,I,I,I,D,I,I,D,D,D,P,P,], # PR
    [I,P,I,P,I,P,P,P,D,D,I,I,D,D,I,I,D,D,D,P,P,], # PO
    [D,P,I,P,I,P,P,P,I,I,I,I,D,I,I,I,D,D,D,P,P,], # NU
    [D,P,I,P,I,P,P,P,D,D,I,I,D,I,I,I,D,D,D,P,P,], # AL
    [D,P,I,P,I,P,P,P,D,I,D,D,D,I,I,I,D,D,D,P,P,], # ID
    [D,P,I,P,I,P,P,P,D,D,D,D,D,I,I,I,D,D,D,P,P,], # IN
    [D,P,I,P,I,P,P,P,D,D,I,D,D,D,I,I,D,D,D,P,P,], # HY
    [D,P,I,P,I,P,P,P,D,D,D,D,D,D,I,I,D,D,D,P,P,], # BA
    [I,P,I,P,I,P,P,P,I,I,I,I,I,I,I,I,I,I,D,P,P,], # BB
    [D,P,I,P,I,P,P,P,D,D,D,D,D,D,I,I,D,P,D,P,P,], # B2
    [D,P,I,P,D,P,P,P,D,D,D,D,D,D,D,D,D,D,D,P,P,], # CB
    [D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,P,D,], # ZW
    [I,P,I,P,I,P,P,P,I,I,I,I,I,I,I,I,I,I,I,P,P,], # WJ
];

1;
