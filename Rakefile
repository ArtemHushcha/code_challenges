require 'rake'

desc 'generates a new post'
task :new_post, [:title] do |t, args|
  date = Time.now

  if args[:title].nil?
    puts "Please enter a title:"
    title = STDIN.gets.chomp
  else
    title = args[:title]
  end
  formatted_title = title.downcase.split(" ").join("-")

  File.open("_posts/#{post_title}", "w") do |f|
    f.write(contents)
  end
  puts "New post: #{title} generated"
end