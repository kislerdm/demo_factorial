package processor_test

import (
	"demo-factorial/processor"
	"testing"
)

func TestFactorial(t *testing.T) {
	tests := []struct {
		in, want int
	}{
		{
			in:   0,
			want: 1,
		},
		{
			in:   1,
			want: 1,
		},
		{
			in:   2,
			want: 2,
		},
		{
			in:   3,
			want: 6,
		},
		{
			in:   5,
			want: 120,
		},
	}
	for _, test := range tests {
		got := processor.Factorial(test.in)
		if got != test.want {
			t.Fatalf("\nin: %d\nwant: %d\ngot: %d", test.in, test.want, got)
		}
	}
}
