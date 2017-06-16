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
            recent_popular_list()
        end

      	def multi_channels()
      	    ids = ['CHANNE_ID', 'CHANNE_ID', 'CHANNE_ID']
            ids.each do |channel_id|
          	    channel = Yt::Channel.new  id: channel_id
          	    channel.videos.each do |video|
					output_video(video)
                end
            end
        end
        
        def recent_popular_list()
			videos = Yt::Collections::Videos.new
			videos.where(chart: 'mostPopular', region_code: 'JP').each do |video|
				output_video(video)
			end
		end
        
        private 
            def output_video(video)
                p video.id
				p video.channel_id
				p video.title
				p video.category_id
				p video.thumbnail_url
				p video.view_count
				p video.like_count
				p video.dislike_count
				p video.tags
				p video.published_at
				if video.content_detail then
					p video.duration
				end

				if video.video_category then
					p video.category_title
				end
            end
    end
end

youtubeRunner = Tasks::YoutubeRunner.new
youtubeRunner.runTask
