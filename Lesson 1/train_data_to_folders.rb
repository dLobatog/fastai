#!/usr/bin/ruby
require 'fileutils'

# Ensure you are running this from the data/redux directory
`mkdir train/cats`
`mkdir train/dogs`
`mv train/dog\.* train/dogs`
`mv train/cat\.* train/cats`
# Make 10% of your training data validation data
`mkdir -p valid/dogs`
`mkdir valid/cats`
dogs = Dir['train/dogs/*']
cats = Dir['train/cats/*']
valid_dogs = dogs.sample(dogs.length/10)
valid_cats = cats.sample(cats.length/10)
FileUtils.cp(valid_dogs, 'valid/dogs')
FileUtils.cp(valid_cats, 'valid/cats')


