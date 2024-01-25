#define WPRES_type 4
#define WPRES_outerr 6
#define WPRES_timeout 7
#define WPRES_ru_nswap 8
#define WPRES_error_msg 9
#define WPRES_error_code 10
#define WPRES_ru_nsignals 11
#define WPRES_command 12
#define WPRES_ru_majflt 14
#define WPRES_start 15
#define WPRES_outstd 16
#define WPRES_ru_stime 18
#define WPRES_exited_ok 19
#define WPRES_ru_inblock 20
#define WPRES_job_id 21
#define WPRES_ru_minflt 24
#define WPRES_ru_oublock 25
#define WPRES_wait_status 26
#define WPRES_runtime 27
#define WPRES_stop 29
#define WPRES_ru_utime 33

/* C code produced by gperf version 3.0.4 */
/* Command-line: gperf -H wp_phash wproc-strings  */
/* Computed positions: -k'4-5' */

#if !((' ' == 32) && ('!' == 33) && ('"' == 34) && ('#' == 35) \
	  && ('%' == 37) && ('&' == 38) && ('\'' == 39) && ('(' == 40) \
	  && (')' == 41) && ('*' == 42) && ('+' == 43) && (',' == 44) \
	  && ('-' == 45) && ('.' == 46) && ('/' == 47) && ('0' == 48) \
	  && ('1' == 49) && ('2' == 50) && ('3' == 51) && ('4' == 52) \
	  && ('5' == 53) && ('6' == 54) && ('7' == 55) && ('8' == 56) \
	  && ('9' == 57) && (':' == 58) && (';' == 59) && ('<' == 60) \
	  && ('=' == 61) && ('>' == 62) && ('?' == 63) && ('A' == 65) \
	  && ('B' == 66) && ('C' == 67) && ('D' == 68) && ('E' == 69) \
	  && ('F' == 70) && ('G' == 71) && ('H' == 72) && ('I' == 73) \
	  && ('J' == 74) && ('K' == 75) && ('L' == 76) && ('M' == 77) \
	  && ('N' == 78) && ('O' == 79) && ('P' == 80) && ('Q' == 81) \
	  && ('R' == 82) && ('S' == 83) && ('T' == 84) && ('U' == 85) \
	  && ('V' == 86) && ('W' == 87) && ('X' == 88) && ('Y' == 89) \
	  && ('Z' == 90) && ('[' == 91) && ('\\' == 92) && (']' == 93) \
	  && ('^' == 94) && ('_' == 95) && ('a' == 97) && ('b' == 98) \
	  && ('c' == 99) && ('d' == 100) && ('e' == 101) && ('f' == 102) \
	  && ('g' == 103) && ('h' == 104) && ('i' == 105) && ('j' == 106) \
	  && ('k' == 107) && ('l' == 108) && ('m' == 109) && ('n' == 110) \
	  && ('o' == 111) && ('p' == 112) && ('q' == 113) && ('r' == 114) \
	  && ('s' == 115) && ('t' == 116) && ('u' == 117) && ('v' == 118) \
	  && ('w' == 119) && ('x' == 120) && ('y' == 121) && ('z' == 122) \
	  && ('{' == 123) && ('|' == 124) && ('}' == 125) && ('~' == 126))
/* The character set is not based on ISO-646.  */
error "gperf generated tables don't work with this execution character set. Please report a bug to <bug-gnu-gperf@gnu.org>."
#endif

static inline unsigned int
wp_phash(register const char *str, register unsigned int len)
{
	/* the last 136 entries have been cut, as we don't need them */
	static unsigned char asso_values[256] =
    {
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34,  5, 34,  0, 34, 34,
		34,  0, 34, 34, 34, 10, 34, 34, 34,  5,
		0,  0, 25, 34,  0,  0, 10, 15, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34, 34, 34, 34, 34,
		34, 34, 34, 34, 34, 34,
    };
	register int hval = len;

	switch (hval) {
	default:
        hval += asso_values[(unsigned char)str[4]];
		/*FALLTHROUGH*/
	case 4:
		hval += asso_values[(unsigned char)str[3]];
		break;
	}
	return hval;
}
