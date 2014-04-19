rake db:drop

rails g scaffold Feedback user:references description:text

rails g scaffold Motivator name:string

rails g scaffold Game name:string
rails g scaffold GameLevel name:string level:integer game:references

rails g scaffold UserGame user:references game:references
rails g scaffold UserGameLevel user_game:references game_level:references
rails g scaffold UserGameLevelResult user_game_level:references motivator:references x:integer y:integer

rake db:drop
rake db:migrate
rake db:setup
