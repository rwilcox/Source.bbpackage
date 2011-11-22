#!/usr/bin/env ruby

# toggle_snake_case_or_camelCase_or_PascalCase script from Textmate!
#
#
#
# Test Cases
#
# AFooBar -&gt; a_foo_bar -&gt; aFooBar -&gt; AFooBar
# URLString -&gt; url_string -&gt; urlString -&gt; UrlString
# TestURLString -&gt; test_url_string -&gt; testUrlString -&gt; TestUrlString
# test -&gt; Test -&gt; test
# test_URL_STRING -&gt; testUrlString -&gt; TestUrlString -&gt; test_url_string


# HotFlamingCats -&gt; hot_flaming_cats
def pascalcase_to_snakecase(word)
	word.gsub(/\B([A-Z])(?=[a-z0-9])|([a-z0-9])([A-Z])/, '\2_\+').downcase
end

# hot_flaming_cats -&gt; hotFlamingCats
def snakecase_to_camelcase(word)
  word.gsub(/_([^_]+)/) { $1.capitalize }
end

# hotFlamingCats -&gt; HotFlamingCats
def camelcase_to_pascalcase(word)
	word.gsub(/^\w{1}/) {|c| c.upcase}
end

word = $stdin.gets

#TextMate.exit_discard if word.nil?

is_pascal = word.match(/^[A-Z]{1}/) ? true : false
is_snake = word.match(/_/) ? true : false

if is_pascal then
	print pascalcase_to_snakecase(word)
elsif is_snake then
	print snakecase_to_camelcase(word)
else
	print camelcase_to_pascalcase(word)
end
