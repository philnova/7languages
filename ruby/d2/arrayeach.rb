arr = (1..16).to_a

i = 0
arr.each do |x|
	if i % 4 == 0
		puts "#{arr[i]},#{arr[i+1]},#{arr[i+2]},#{arr[i+3]}"
	end
	i += 1
end

arr.each_slice(4) {|s| puts s.join(',')}