relative = /require_relative '(.+)'/
match = relative.match(ARGV[0])
print "#{match[1]}.rb" if match
