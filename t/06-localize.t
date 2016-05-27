use strict;
use warnings;
use Test::More;

my $min_tpc = 1.27;
eval "use Time::Seconds $min_tpc";
plan skip_all => "Time::Seconds $min_tpc required for testing" if $@;

use Encode;
use Time::Duration::Concise::Localize;

## test other languages
my @m = (
    { locale => 'zh_tw', in => '1d1.5h', out => decode_utf8('1 天 1 小時 30 分鐘') },
    { locale => 'zh_cn', in => '1d1.5h', out => decode_utf8('1 天 1 小时 30 分钟') },
    { locale => 'it', in => '1d1.5h', out => decode_utf8('1 giorno 1 ora 30 minuti') },
    { locale => 'vi', in => '1d1.5h', out => decode_utf8('1 ngày 1 giờ 30 phút') },
);
foreach my $m (@m) {
    my $duration = Time::Duration::Concise::Localize->new(
        interval => $m->{in},
        locale => $m->{locale}
    );
    is $duration->as_string, $m->{out}, $m->{locale};
}

done_testing();
