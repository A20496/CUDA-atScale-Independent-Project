/* ---------- Makefile ---------- */
# Save as Makefile in the same directory
# Usage: make

all:
	/usr/local/cuda/bin/nvcc invert.cu -o invert `pkg-config --cflags --libs opencv4`

clean:
	rm -f invert
