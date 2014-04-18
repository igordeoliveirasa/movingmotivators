rake db:drop

rails g scaffold Motivator name:string

rails g scaffold Game name:string
rails g scaffold GameLevel name:string level:integer game:references

rails g scaffold UserGame user:references game:references

rails g scaffold UserResult user_game:references game_level:references motivator:references x:integer y:integer

rake db:drop
rake db:migrate
rake db:setup
