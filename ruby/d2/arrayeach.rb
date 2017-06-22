# Problem Prompt: for an array of 16 integers, print slices of four integers
arr = (1..16).to_a

# first, do this with each
i = 0
arr.each do |x|
	if i % 4 == 0
		puts "#{arr[i]},#{arr[i+1]},#{arr[i+2]},#{arr[i+3]}"
	end
	i += 1
end

# next, do this with each_slice
arr.each_slice(4) {|s| puts s.join(',')}