filename = "test.txt"

# how to iterate through a file without using blocks
file = File.new(filename)
text = file.readlines
puts text
file.close

puts
puts

# how to iterate through a file with blocks
File.foreach(filename) {|line| puts line}

puts
puts

# what are the advantages of using blocks?
# - don't need to explicitly close file
# - makes it easy to go line by line, rather than slurping whole file into memory

# write a simple grep function that prints all line numbers in a file containing a given phrase
def grep(filename, phrase)
	File.foreach(filename).with_index do |line, line_num|
		puts "#{line_num}: #{line}" if line.include? phrase
	end
end

puts "grep for 'which'"
grep("test.txt", "which")

puts "grep for 'a'"
grep("test.txt", "a")
