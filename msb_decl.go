// +build 386 amd64

package bits

//go:noescape

// MSB64 returns the index of the Most Significant Bit of an unsigned 64-bit integer.
func MSB64(x uint64) uint64

//go:noescape

// MSB32 returns the index of the Most Significant Bit of an unsigned 32-bit integer.
func MSB32(x uint32) uint32

//go:noescape

// MSB16 returns the index of the Most Significant Bit of an unsigned 16-bit integer.
func MSB16(x uint16) uint16
