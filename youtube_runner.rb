require 'yt'

module Tasks
    class YoutubeRunner
        API_KEY = 'YOUR_API_KEY'

        def initialize
            Yt.configure do |config|
                config.api_key = API_KEY
            end
        end

        def runTask
            multi_channels()
        end

      	def multi_channels()
      	    ids = ['CHANNE_ID', 'CHANNE_ID', 'CHANNE_ID']
            ids.each do |channel_id|
          	    channel = Yt::Channel.new  id: channel_id
          	    channel.videos.each do |video|
              		  p video.id
                    p video.title
                    p video.thumbnail_url
                    p video.tags
                    p video.view_count
                    p video.like_count
                    p video.dislike_count
                end
            end
        end
    end
end

youtubeRunner = Tasks::YoutubeRunner.new
youtubeRunner.runTask
