#!/usr/bin/perl
# SPDX-License-Identifier: GPL-3.0-only
# SPDX-FileCopyrightText: 2020 Alberto Pianon <pianon@array.eu>

sub trim {
    my($in) = @_;
    $in =~ s/\n/ /g; # remove newlines
    $in =~ s/\r/ /g; # remove carriage returns
    $in =~ s/^\s+|\s+$//g; # trim whitespace
    $in =~ s/ +/ /g; # remove multiple whitespace
    return $in;
}
sub author_comment {
    my($in) = @_;
    my $author, $comment;
    $in = trim($in);
    if ($in =~ /^\(([^\)]+)\)(.*)/) { # found "(Author) Comment"
        $author = trim($1);
        $comment = trim($2);
    }
    else {
        $author = "unknown";
        $comment = $in;
    }
    return $author, $comment;
}
sub format_comment {
    my($author, $comment, $date) = @_;
    return sprintf(' `<office:annotation><dc:creator>%s</dc:creator><dc:date>%s</dc:date><text:p text:style-name="P2"><text:span text:style-name="T1">%s</text:span></text:p></office:annotation>`{=opendocument} ', $author, $datestr, $comment);
}
sub get_formatted_localdate {
    ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
    return sprintf('%04d-%02d-%02dT%02d:%02d:%02d.000000000', $year + 1900, $mon + 1, $mday, $hour, $min, $sec);
}

BEGIN { $/ = undef; $\ = undef; }
LINE: while (defined($_ = readline ARGV)) {
    sub BEGIN {
        $datestr = get_formatted_localdate();
    }
    s/<\!--((.|\s)*?)-->/format_comment author_comment($1), $datestr;/seg;
}
continue {
    die "-p destination: $!\n" unless print $_;
}
