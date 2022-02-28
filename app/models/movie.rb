#! REMINDER: 
  # instance methods (#) 
  # class methods (.)  >  uses self.

# require 'pry'
class Movie < ActiveRecord::Base
  #! CREATE
  def self.create_with_title(title)
    Movie.create(title: title)
  end

  #! READ
  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    # binding.pry
    Movie.count
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end
  # .where expects a string
  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end

  #! UPDATE
  # instance method (#)
  def update_with_attributes(attributes)
    self.update(attributes)
  end
  # class method (.)
  def self.update_all_titles(title)
    self.update(title: title)
  end

  #! DELETE
  def self.delete_by_id(id)
    Movie.destroy(id)
  end

  def self.delete_all_movies
    Movie.destroy_all
  end
end