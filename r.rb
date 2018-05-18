str = "Hello world and hello world again!"
str = str.downcase
str = str.gsub!(/[0-9\W]/, "")

hash = {}
hash.default = 0

str.each_char { |char|
	hash[char] += 1}

res = hash.sort_by{ |key,value| value}.reverse

print "Your string has this letters : #{res} "