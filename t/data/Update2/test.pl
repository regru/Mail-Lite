#!/usr/bin/perl -w
#��� sex.ru - �� ��� �����, upanishadi.ru - ���������� ����, trax.ru - ���������� ����, air_23.ru - ���������� ��� ������, don2000-1.ru - ����� �� ����������, sex170004536743.ru - ����� NOT DELEGATED �� DELEGATED
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
  'don2000-1.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya1 I Liss
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
person: Iliya1 I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'trax.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya1 I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: ����
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'upanishadi.ru' => 
qq[type: corporate
state: NOT DELEGATED
person: Iliya1 I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: ����],

  'sex170004536743.ru' => 
qq[type: corporate
state: DELEGATED
person: Iliya1 I Liss
person-r: ���� ���� �������������
passport: 4502096324, ����� ��� "�����������" �. ������ 01.04.2002 
birth-date: 05.03.1978
p-addr: 109208, ������, ��. ��������� ������� �.4, ��.3, ���� ���� �������������
phone: +7 9153038519
fax-no: 
e-mail: oreola\@mail.ru],

  'air_23.ru' => 
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