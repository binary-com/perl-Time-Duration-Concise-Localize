# NAME

Time::Duration::Concise::Localize - localize concise time duration string representation.

# DESCRIPTION

Time::Duration::Concise provides localize concise time duration string representation.

# SYNOPSIS

    use Time::Duration::Concise::Localize;

    my $duration = Time::Duration::Concise::Localize->new(

        # concise time interval
        'interval' => '1.5h',

        # Locale for translation
        'locale' => 'en'
    );

    $duration->as_string;

# FIELDS

## interval (REQUIRED)

concise interval string

## locale

Get and set the locale for translation

# METHODS

## as\_string

Localized duration string

## new

Object constructor

# AUTHOR

Binary.com, `<perl at binary.com>`

# BUGS

Please report any bugs or feature requests to `bug-time-duration-concise-localize at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Time-Duration-Concise-Localize](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Time-Duration-Concise-Localize).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Time::Duration::Concise::Localize

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=Time-Duration-Concise-Localize](http://rt.cpan.org/NoAuth/Bugs.html?Dist=Time-Duration-Concise-Localize)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/Time-Duration-Concise-Localize](http://annocpan.org/dist/Time-Duration-Concise-Localize)

- CPAN Ratings

    [http://cpanratings.perl.org/d/Time-Duration-Concise-Localize](http://cpanratings.perl.org/d/Time-Duration-Concise-Localize)

- Search CPAN

    [http://search.cpan.org/dist/Time-Duration-Concise-Localize/](http://search.cpan.org/dist/Time-Duration-Concise-Localize/)
