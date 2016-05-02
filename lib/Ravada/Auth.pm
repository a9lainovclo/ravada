use warnings;
use strict;

package Ravada::Auth;

our $LDAP;

use Ravada::Auth::SQL;

eval { 
    require Ravada::Auth::LDAP; 
    $LDAP = 1 
};

sub init {
    my ($config, $db_con) = @_;
    if ($config->{ldap}) {
        Ravada::Auth::LDAP::init($config);
    } else {
        $LDAP = 0;
    }
    Ravada::Auth::SQL::init($config, $db_con);
}

sub login {
    return Ravada::Auth::LDAP::login(@_)    if $LDAP;
    return Ravada::Auth::SQL::login(@_);
}

1;