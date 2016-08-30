// +build 386 amd64

package bits

//go:noescape

// LSB64 returns the index of the Least Significant Bit of an unsigned 64-bit integer.
func LSB64(x uint64) uint64

//go:noescape

// LSB32 returns the index of the Least Significant Bit of an unsigned 32-bit integer.
func LSB32(x uint32) uint32

//go:noescape

// LSB16 returns the index of the Least Significant Bit of an unsigned 16-bit integer.
func LSB16(x uint16) uint16
