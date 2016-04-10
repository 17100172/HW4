# Add a declarative step here for populating the DB with movies.

Given (/the following movies exist/) do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
  # flunk "Unimplemented"
end

# When (/^I go to the edit page for "(.*)"$/) do |mov|
#   visit path_to(page_name(mov))
# end

Then (/^the director of "(.*)" should be "(.*)"$/) do |mov, dir|
  @movie = Movie.find_by_title(mov)
  assert(dir == @movie.director, "Error")
end
