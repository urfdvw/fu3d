// Parameters
depth = 5; // Depth of the 3D model
scale_factor = 0.5; // Scaling factor for the image
large_num = 10000; // a large number

// Function to import and extrude SVG
module extrudeSVG(svgFile, depth, scale_factor) {
    scale(scale_factor) {
        linear_extrude(height = depth, center = true, convexity = 10)
        import(svgFile, center = true);
    }
}

// Main code
svgFile = "./fu.svg"; // Replace with the path to your SVG file
difference(){
    extrudeSVG(svgFile, depth, scale_factor);
    translate([large_num * 0.5, 0, -large_num * 0.5])
        cube(large_num);
    translate([0, large_num * 0.5, -large_num * 0.5])
        cube(large_num);
} // not tested
