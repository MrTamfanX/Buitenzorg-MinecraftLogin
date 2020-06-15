#!usr/bin/tamfan/perl
#Tools ini adalah tools untuk login minecraft, Dan saya harap anda jangan iseng.
#Author By : MrTamfanX && TUANB4DUT
#My Team : Buitenzorg-Syndicate.io - UYSFDS MrTamfanX - MrTamfanX Cyber Team - TKJ with Prakasa_Jr64
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
use Net::Minecraft::Login;
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"    ╔═╗╔═╗ ╦ ╔═╗ ╦ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔══╦══╗\n";
print color('bold red'),"    ║ ║║ ║ ║ ║ ║ ║ ║      ║    ║ ║    ║ ║    ║ ║      ║  ║  ║\n";
print color('bold red'),"    ║ ║║ ║ ║ ║ ║ ║ ║      ║      ║    ║ ║    ║ ║         ║\n";
print color('bold red'),"    ║ ║║ ║ ║ ║ ║ ║ ╠═══   ║      ╠══╦═╝ ╠════╣ ╠════     ║\n";
print color('bold white'),"    ║ ╚╝ ║ ║ ║ ║ ║ ║      ║      ║  ╚═╗ ║    ║ ║         ║\n";
print color('bold white'),"    ║    ║ ║ ║ ║ ║ ║      ║    ║ ║    ║ ║    ║ ║         ║\n";
print color('bold white'),"    ╩    ╩ ╩ ╩ ╚═╝ ╚════╝ ╚════╝ ╩    ╩ ╩    ╩ ╩         ╩\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold cyan'),"┃";
print color('bold yellow'),"This Tool Is A Tool For Playing Games When You Are Bored & Try";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas(),"";
chomp($akasuser=<STDIN>);
print nomerkas1(),"";
chomp($akaspass=<STDIN>);
my $ua = Net::Minecraft::Login->new();

my $result = $ua->login(
  user   => '$akasuser',
  password => '$akaspass',
);
 
my $instance = Net::Minecraft::Login->new(
  user_agent   => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.94 Chrome/37.0.2062.94 Safari/537.36',
  http_headers => HTTP::Headers,
  http_engine  => HTTP::Tiny->new(),
  login_server => 'https://my.minecraft.net/en-us/login/',
);
if( not $result->is_success ){
  print nomerkas2(),"$result\n";
} else {
  print nomerkas3(),"Login Failed, Try Again\n";
}
}
sub nomerkas
{
    my $n = shift // 'USER';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] USER YOUR MINECRAFT "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas1

{
    my $n = shift // 'PASS';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] PASSWORD YOUR MINECRAFT "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas2

{
    my $n = shift // '✓';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] RESULTS "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas3
{
    my $n = shift // 'X';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold red')
    ;
}
