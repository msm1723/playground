import media
import fresh_tomatoes

toy_story = media.Movie("Toy Story", "Toy Story story", "https://upload.wikimedia.org/wikipedia/ru/a/a6/Toy_Story_1995_Poster.jpg", "https://www.youtube.com/")

avatar = media.Movie("Avatar", "Avatar story", "https://upload.wikimedia.org/wikipedia/en/b/b0/Avatar-Teaser-Poster.jpg", "https://www.youtube.com/")

#print(toy_story.storyline)
#print(avatar.storyline)
#avatar.show_trailer()

movies = [toy_story, avatar]
#fresh_tomatoes.open_movies_page(movies)
print (media.Movie.VALID_RATINGS)
print (media.Movie.__doc__)
print (media.Movie.__name__)
print (media.Movie.__module__)

