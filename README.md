# GPU Image Color Inversion using CuPy in Google Colab

## Project Overview

This project demonstrates the use of GPU acceleration to perform a simple image processing task: color inversion. The implementation uses CuPy, a CUDA-compatible array library for Python that provides GPU support for NumPy-like operations. The goal is to process the image entirely on the GPU and to illustrate how per-pixel operations such as inversion can be parallelized for performance and scalability.

The project is executed entirely within a Google Colab environment, which provides access to NVIDIA GPUs without requiring a local CUDA setup.

## Project Goals

The goals of this project are as follows:

- To use CuPy to offload pixel-level image processing operations to the GPU.
- To understand and demonstrate the use of GPU-accelerated computing within a high-level Python framework.
- To validate the use of CuPy as a tool for educational and applied GPU computing.

## Implementation Details

The image inversion process is defined as follows: for each pixel value in the RGB image, the new value is computed as `255 - original_value`. This is a simple mathematical transformation that can be applied independently to each pixel, making it a perfect candidate for parallel processing on the GPU.

The notebook performs the following steps:

1. Upload an image file from the local system.
2. Load the image using OpenCV and convert it to RGB format.
3. Transfer the image array to GPU memory using CuPy.
4. Perform color inversion in parallel on the GPU.
5. Transfer the processed image back to CPU memory.
6. Display the original and inverted images side-by-side using Matplotlib.
7. Save the result as a new image file and offer it for download.

## Repository Contents

- `gpu_project.ipynb`: The Colab notebook containing the implementation.
- `README.md`: This file, describing the project and instructions.
- `description.txt`: A short summary document suitable for assignment submission.
- `inverted_output.jpg`: Example output from the GPU-accelerated inversion.
- Input image (to be uploaded during runtime): Any `.jpg` or `.png` image file.

## How to Run the Project

1. Open the Colab notebook from the following link:  
   [Colab Notebook](https://colab.research.google.com/drive/1U489gEOqzB9Nbx9O4QnL9XM7yFDckrjQ?usp=sharing)

2. Upload an image file when prompted. Supported formats include `.jpg` and `.png`.

3. The notebook will display the original image, the GPU-inverted image, and allow you to download the final output.

## Requirements

No local installation is required when running in Colab. However, if running on a local system, the following dependencies must be installed:

- Python 3.7+
- CuPy (preferably version compatible with CUDA 12.x)
- OpenCV (`opencv-python-headless`)
- Matplotlib

Install using pip:

pip install cupy-cuda12x opencv-python-headless matplotlib

A CUDA-capable GPU and compatible drivers are required to run CuPy locally.

## Why CuPy?

CuPy is a Python library that offers a NumPy-compatible interface for GPU arrays. It is designed to make GPU computing more accessible by allowing users to reuse familiar NumPy syntax and patterns, while internally executing operations on CUDA-enabled GPUs.

Using CuPy avoids the need to write low-level CUDA kernel code while still enabling parallelism and GPU acceleration. This makes it a suitable library for prototyping, education, and applications where simplicity and performance are both needed.

## Demonstration Video

A 5–10 minute demonstration video explaining the notebook implementation, output, and lessons learned can be included here.

https://drive.google.com/drive/folders/1njGvbUFvBuFz6arwUyh8n1pLn-37beqC?usp=sharing

## GitHub Repository

The complete source code and documentation are available in the GitHub repository:

[CUDA-atScale-Independent-Project](https://github.com/A20496/CUDA-atScale-Independent-Project)

## License

This project uses Creative Commons or public-domain image samples and is intended solely for educational purposes.



