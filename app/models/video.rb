class Video < ApplicationRecord

    belongs_to :dojo, optional: true

    def extractVideoId(videoUrl)
        yotubeIdRegex = /(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/ ]{11})/
        matchId = yotubeIdRegex.match(videoUrl)[1]
        if matchId != nil
            logger.debug "Youtube video id: #{matchId}"
            return matchId
        else
            logger.debug "Error! Youtube id not Found"
            return nil
        end
    end
end
