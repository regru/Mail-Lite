#!/usr/bin/perl -w
#��� don22200.ru, upanishadixxx.ru, - ����, ������������ ���� � ����1, �� ��� �� ��������������� ���( upanishadixxx.ru - �� � �� ���������), trax007.ru, air.ru, sex.ru - �� ���� ������, sex170004536_74323.ru - ���������� �����
#��� ������ ��������, �����, ����� �������� � ������� ����������� � ���, ������������� �������� �������� ��� ����, ��� ������������ ��������� ������� �������� ���� �������
#������� � ������� ��� ��� - �������������� ���� 20080724154506.677675_TESTREGRU2-REG-RIPN_TC-RIPN_0.ANS_0
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

my $Type = 'DELETE';

my $query_text = SRS::Comm::FIDSU::fidsu_flex_action(
    'DELETE', {drtp => 1}, &ExampleStructure( $Type )
);

print 'ok!'.$query_text.'~';

exit;

sub ExampleStructure{
 my $Type = shift || 'DELETE';
 my $Examples = {
 'DELETE' => {
  'don22200.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'sex.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'trax007.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'upanishadixxx.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'sex170004536_74323.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'air.ru' =>
qq[type: corporate
state: NOT DELEGATED
person: Iliya I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru]
  }
 };
 
 return $Examples->{$Type};
}