class WorkController < ApplicationController
    def index
        @name = [{'name'=>'호연','on' => true},
                {'name'=>'현우','on' => false},
                {'name'=>'상우','on' => false}]
    end
    
    def schedule
        @name = [{'name'=>'호연','on' => true},
                {'name'=>'현우','on' => false},
                {'name'=>'상우','on' => false}]
    end
end
