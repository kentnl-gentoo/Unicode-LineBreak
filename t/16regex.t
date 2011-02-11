use strict;
use Test::More;
require "t/lb.pl";

BEGIN { plan tests => 6 }

# Regex matching most of URL-like strings.
my $URIre = qr{
    \b
	(?:url:)?
	(?:[a-z][-0-9a-z+.]+://|news:|mailto:)
	[\x21-\x7E]+
    }iox;

# Breaking URIs according to some CMoS rules.
sub breakURI {
    # 17.11 1.1: [/] ÷ [^/]
    # 17.11 2:   [-] ×
    # 6.17 2:   [.] ×
    # 17.11 1.2: ÷ [-~.,_?#%]
    # 17.11 1.3: ÷ [=&]
    # 17.11 1.3: [=&] ÷
    # Default:  ALL × ALL
    my @c = split m{
	(?<=^url:) |
	    (?<=[/]) (?=[^/]) |
	    (?<=[^-.]) (?=[-~.,_?\#%=&]) |
	    (?<=[=&]) (?=.)
	}iox, $_[1];
    # Won't break punctuations at end of matches.
    while (2 <= scalar @c and $c[$#c] =~ /^[\".:;,>]+$/) {
	my $c = pop @c;
	$c[$#c] .= $c;
    }
    @c;
}

# [REGEX, SUB] pair
dotest('uri', 'uri.break', ColumnsMax => 1,
       Prep => [$URIre, \&breakURI]);
dotest('uri', 'uri.nonbreak', ColumnsMax => 1,
       Prep => [$URIre, sub { ($_[1]) }]);
# [STRING, SUB] pair
dotest('uri', 'uri.nonbreak', ColumnsMax => 1,
       Prep => ["$URIre", sub { ($_[1]) }]);
# multiple patterns
dotest('uri', 'uri.break', ColumnsMax => 1,
       Prep => [$URIre, \&breakURI],
       Prep => [qr{ftp://[\x21-\x7e]+}, sub { ($_[1]) } ]);
dotest('uri', 'uri.break.http', ColumnsMax => 1,
       Prep => [qr{ftp://[\x21-\x7e]+}, sub { ($_[1]) } ],
       Prep => [$URIre, \&breakURI]);
dotest('uri', 'uri.nonbreak', ColumnsMax => 1,
       Prep => [qr{ftp://[\x21-\x7e]+}, sub { ($_[1]) } ],
       Prep => [qr{http://[\x21-\x7e]+}, sub { ($_[1]) } ],
       Prep => [$URIre, \&breakURI]);

1;
