BEGIN {
    test( 1, OFMT,	123.4567890123456789)
    test( 2, "%d",	123.4567890123456789)
    test( 3, "%e",	123.4567890123456789)
    test( 4, "%f",	123.4567890123456789)
    test( 5, "%g",	123.4567890123456789)
    test( 6, "%25.16e",	123.4567890123456789)
    test( 7, "%25.16f",	123.4567890123456789)
    test( 8, "%25.16g",	123.4567890123456789)
    test( 9, "%25d",	123.4567890123456789)
    test(10, "%.25d",	123.4567890123456789)
    test(11, "%25d",	2^31 - 1)
    test(12, "%25d",	2^31)
    test(13, "%25d",	2^52 + (2^52 - 1))
    test(14, "%25.0f",	2^52 + (2^52 - 1))
}

function test(n,fmt,value,    save_fmt)
{
    save_fmt = OFMT
    OFMT = fmt
    printf("[%2d] OFMT = \"%s\"\t", n, OFMT)
    print value
    OFMT = save_fmt
}
