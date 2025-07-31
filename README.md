# CUDA-atScale-Independent-Project
/* ---------- README.md ---------- */
# GPU Image Color Inversion

This project inverts the colors of an input image using a CUDA kernel. It uses OpenCV for image I/O and CUDA for parallel pixel-wise processing.

## 🛠 Requirements
- CUDA Toolkit (e.g. 11.x)
- OpenCV 4.x (with development headers)
- nvcc compiler

## 📦 Setup
```bash
sudo apt install libopencv-dev
make
```

## 🚀 Run
```bash
./invert input/sample.jpg output/inverted_sample.jpg
```

## 🧪 Example
Original:
![original](input/sample.jpg)

Inverted:
![inverted](output/inverted_sample.jpg)
