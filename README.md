# youtube_channel_fetcher

This is the script to get all videos of youtube channels by Youtube API.
This script uses ruby on rails and [`Fullscreen/yt`](https://github.com/Fullscreen/yt).

## Gemfile
```
gem 'yt', '~> 0.28.0'
```

## Run command
```
rails runner lib/tasks/youtube_runner.rb
```

if use Docker, 

```
$ docker-compose run web rails runner lib/tasks/youtube_runner.rb
```
