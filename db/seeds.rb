# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

article_attributes = [
{
  title: 'how to set up an app from scratch',
  body: 'we will talk about it in the next chapter when we can create and save the article in a database.'
},
{
  title: 'more will come',
  body: ' next next. i told we next'

}
]

Article.create!(article_attributes)
puts 'FINISHED!'
