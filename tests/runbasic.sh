#!/bin/sh
#
# Run this test from the 'tests' directory
#
whence m4 >/dev/null
if [ $? -gt 0 ]; then
	echo "Need to add m4 directory to your PATH. Location after build is in the 'src' directory of m4 directory tree" >&2 
	exit 16
fi

EXPECTED_OUTPUT="Now is the time for all good persons.

Testing 100 definition."
output=`m4 basic.m4`
if [ "${output}" = "${EXPECTED_OUTPUT}" ]; then
	echo "Success"
	exit 0
else
	echo "m4 output is not correct." >&2
	echo "Expected:" >&2
	echo "${EXPECTED_OUTPUT}" >&2
	echo "Actual:" >&2
	echo "${output}" >&2
	exit 16
fi
