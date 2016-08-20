movies = Hash.new
valid = true

while valid

puts "What would you like to do?"
puts "('add' to add a movie, 'update' to update a movie, 'display' to display movies, 'delete' to delete a movie and 'done' to exit.)"

choice = gets.chomp

case choice

when "add"

    puts "Please insert the title of the movie."
    title = gets.chomp.to_sym

    puts "What is your rating of #{title}? (from 0 to 4)."
    rating = gets.chomp.to_i

    if movies[title] == nil
        movies[title] = rating
        puts "Movie and rating have been added!"
    else
        puts "Error: This movie has already been added!"
    end

when "update"

    puts "Please insert the title of the movie you wish to update."
    title = gets.chomp.to_sym

    if movies[title] == nil
        puts "This movie has not yet been added to the list. Please add before updating."
    else
        puts "Please insert the new rating for #{title}."
        rating = gets.chomp.to_i
        movies[title] = rating
    end

when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }

when "delete"

    puts "Please insert the title of the movie rating you wish to delete."
    title = gets.chomp.to_sym

    if movies[title] != nil
        movies.delete(title)
        puts "#{title} has been removed from the list."
    else
        puts "Error: this movie is not in the list."
    end

when "done"

    valid = false
    puts "You will now exit."

else
    puts "Error: please match one of the commands listed."
end
end
