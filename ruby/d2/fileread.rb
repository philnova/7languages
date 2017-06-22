def grep(filename, phrase)
	File.foreach(filename).with_index do |line, line_num|
		puts "#{line_num}: #{line}" if line.include? phrase
	end
end

grep("test.txt", "which")
