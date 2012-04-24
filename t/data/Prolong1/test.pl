#!/usr/bin/perl -w
#������  oretest1.ru, oretest2.ru, oretest3.ru - ���� � �������� � ���������, oretest101.ru, oretest102.ru, oretest103.ru - ���� ������, �� ��������� �� ��������, oretest201.ru, oretest202.ru, oretest203.ru - �� ������������,  trax007.ru, air.ru - �� ���� ������, trax_007.ru - �� �������� �����

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

my $Type = 'PROLONG';

my $query_text = SRS::Comm::FIDSU::fidsu_flex_action(
    'PROLONG', {drtp => 1}, &ExampleStructure( $Type )
);

print 'ok!'.$query_text.'~';

exit;

sub ExampleStructure{
 my $Type = shift || 'PROLONG';
 my $Examples = {
 'PROLONG' => {
  'oretest1.ru' => 
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

 'oretest2.ru' => 
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

 'oretest3.ru' => 
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

  'oretest101.ru' => 
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

  'oretest102.ru' => 
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

  'oretest103.ru' => 
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

  'oretest201.ru' => 
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

  'oretest202.ru' => 
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

  'oretest203.ru' => 
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
e-mail: oreola\@mail.ru],

  'trax_007.ru' => 
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