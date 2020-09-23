def my_collect(languages)
  if block_given?
    i = 0

    collection = []
    while i < languages.length
      collection << yield(languages[i])
      i += 1
    end
    collection
  else
    puts "There is no block given."
  end
end
my_collect(["ruby", "javascript", "python", "objective-c"]) do |language|
  language.upcase
end
