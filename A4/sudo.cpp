object pca

#includes

init camera

rectify map matrix (dist K, map org, map correct)

objectlocalizer()

const bool object localiser::ORBorBRISK(const cv::Mat ... map config)
	
	ORBorBRISK create
	loop for transforms{
		detect and compute
	
		switch(matcher){
			brute force or FLANN
			vector matching
			
			loop for descriptors(rows.. ++){
				dist = matches..
				if (dist < min) min = dist
				if (dist > max) mac = dist
			
				-- Out of threshold max ranges
			}
			loop through matches {
				check threshold range opti
			}
			send back good matches
		
			draw links to each point
		
			connected all vectors
		
			contours, bounding, corners, bounding rect etc...
		
			return vector arrange dist
		}
		ADS 
		Port...
	
		Pick up request... 
		PLC
		state high state low on axis ports to transform degrees of freedom
	
		Rotate and transform according to vectors
		check vector threshold if under lim then finish
	}
	cleanup...
	destroy all win
	break	
etc