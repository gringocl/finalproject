# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ name: 'miles', email: 'miles@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'marcela', email: 'marcela@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'matias', email: 'matias@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'marcus', email: 'marcus@example.com', password: 'secret', password_confirmation: 'secret'}])
posts = Post.create([{ title: 'first post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'second post', content: 'BACON Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'third post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'fourth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'fifth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'sixth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'seventh post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'eighth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'ninth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'},
                    { title: 'tenth post', content: 'Lorem ipsum Magna cillum irure laborum ad irure nisi sed Excepteur dolore consequat nisi esse laboris consequat id ut dolor in labore est irure culpa esse ut in ex proident Ut.'}])
