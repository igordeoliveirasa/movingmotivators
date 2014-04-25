rake db:drop

rails g scaffold Feedback user:references description:text --force

rails g scaffold Motivator name:string description:text --force
rails g scaffold LevelPermission name:string description:text --force


rails g scaffold Game name:string description:text --force
rails g scaffold GameLevel name:string level:integer game:references description:text --force
rails g scaffold GameLevelPermission game_level:references level_permission:references --force

rails g scaffold UserGame user:references game:references completed:boolean --force
rails g scaffold UserGameLevel user_game:references game_level:references --force
rails g scaffold UserGameLevelResult user_game_level:references motivator:references x:integer y:integer --force

rake db:drop
rake db:migrate
rake db:setup
