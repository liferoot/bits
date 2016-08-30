// +build 386 amd64

package bits

//go:noescape

// Swap64 returns x with reverse bytes order.
func Swap64(x uint64) uint64

//go:noescape

// Swap32 returns x with reverse bytes order.
func Swap32(x uint32) uint32
