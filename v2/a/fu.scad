// Parameters
depth = 1; // Depth of the 3D model
scale_factor = 0.13; // Scaling factor for the image

// Function to import and extrude SVG
module extrudeSVG(svgFile, depth, scale_factor) {
    scale(scale_factor) {
        linear_extrude(height = depth, center = true, convexity = 10)
        import(svgFile, center = true);
    }
}

// Main code
svgFile = "./fu.svg"; // Replace with the path to your SVG file
extrudeSVG(svgFile, depth, scale_factor);
