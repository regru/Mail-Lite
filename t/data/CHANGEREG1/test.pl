#!/usr/bin/perl -w

#��� don22200.ru, trax007.ru, air.ru, upanishadixxx.ru - ���� ������, (don22200.ru, upanishadixxx1.ru: TESTREGRU1-REG-RIPN->TESTREGRU2-REG-RIPN, trax007.ru:TESTREGRU1-REG-RIPN->TESTREGRU1-REG-RIPN, air.ru:TESTREGRU1-REG-RIPN->TESTREGRU3-REG-RIPN)  sex.ru - �� ��� �����, upanishadixxx1.ru - �������������� �����, sex170004536_74323.ru - ���������� �����
use strict;
use lib qw( . /www/srs/modules );
use Test::More;
use Data::Dumper;
use Getopt::Long;
use Time::Seconds;
use Getopt::Long;

use WebMySQLDBI();
use SRS::Utils qw( lstjoin dumper_sorted );
use SRS::Const;

use SRS::Comm::FIDSU;

# ---------------- CMDLINE -----------------

my $Type = 'UPDATE';

my $query_text = SRS::Comm::FIDSU::fidsu_flex_action(
    'UPDATE', {drtp => 1}, &ExampleStructure( $Type )
);

print 'ok!'.$query_text.'~';

exit;

sub ExampleStructure{
 my $Type = shift || 'UPDATE';
 my $Examples = {
 'UPDATE' => {
  'don22200.ru' => 
qq[reg-ch: TESTREGRU2-REG-RIPN 
],

  'sex.ru' => 
qq[reg-ch: TESTREGRU2-REG-RIPN 
],

  'trax007.ru' => 
qq[reg-ch: TESTREGRU1-REG-RIPN 
],

  'upanishadixxx.ru' => 
qq[reg-ch: TESTREGRU2-REG-RIPN 
],

  'upanishadixxx1.ru' => 
qq[reg-ch: TESTREGRU2-REG-RIPN 
],

  'sex170004536_74323.ru' => 
qq[reg-ch: TESTREGRU2-REG-RIPN 
],

  'air.ru' =>
qq[reg-ch: TESTREGRU3-REG-RIPN 
]
  }
 };
 
 return $Examples->{$Type};
}