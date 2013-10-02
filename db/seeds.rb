# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lorem = "Lorem ipsum Irure amet minim deserunt magna sed sed aliqua culpa nulla sunt minim exercitation voluptate mollit dolor anim aliquip elit ut esse ullamco ut occaecat et anim cillum et in officia est commodo pariatur aliquip Ut pariatur quis commodo Ut do magna labore aute nulla ut mollit in laboris sunt reprehenderit consequat in enim incididunt aute aliquip qui nisi in quis fugiat ad Duis laborum Excepteur sed nisi aute est in sit enim irure labore sit id do aliquip est eiusmod officia consectetur in anim dolore pariatur proident enim minim magna velit dolore non occaecat ut in nostrud adipisicing amet ea esse fugiat adipisicing non ad Ut officia nisi qui dolor voluptate cupidatat dolore ut nisi dolore minim aute sunt commodo tempor elit nisi dolor dolore consectetur tempor id Duis nulla dolor pariatur nulla dolor sit ad in adipisicing dolore quis velit anim cillum anim sint voluptate esse occaecat enim sint eiusmod dolor adipisicing adipisicing fugiat elit amet sit nostrud pariatur fugiat anim in culpa consequat sint adipisicing culpa aliquip exercitation ut qui velit ullamco eu dolor cillum sint ad ad ad culpa dolor ex tempor mollit tempor eiusmod ut voluptate ullamco amet in incididunt incididunt ad do minim sit tempor irure in consequat esse aute sint sint incididunt officia enim minim eu amet cupidatat eiusmod ut."

users = User.create([{ name: 'miles', email: 'miles@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'marcela', email: 'marcela@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'matias', email: 'matias@example.com', password: 'secret', password_confirmation: 'secret'},
                    { name: 'marcus', email: 'marcus@example.com', password: 'secret', password_confirmation: 'secret'}])
posts = Post.create([{ title: 'first post', content: lorem, user_id: 1},
                    { title: 'second post', content: lorem, user_id: 2},
                    { title: 'third post', content: lorem, user_id: 3},
                    { title: 'fourth post', content: lorem, user_id: 4},
                    { title: 'fifth post', content: lorem, user_id: 1},
                    { title: 'sixth post', content: lorem, user_id: 2},
                    { title: 'seventh post', content: lorem, user_id: 3},
                    { title: 'eighth post', content: lorem, user_id: 4},
                    { title: 'ninth post', content: lorem, user_id: 1},
                    { title: 'tenth post', content: lorem, user_id: 2}])
