module app_services
    class ParseTransaction
        require "faraday"
        def parse_txt
            response = Faraday.get('https://increase-transactions.herokuapp.com/file.txt') do |req|
                req.headers['Authorization'] = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
            end
        end

    end
    
end