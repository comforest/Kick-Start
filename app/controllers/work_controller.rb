class WorkController < ApplicationController
    def index
        @db = Working.find(params[:id])
        
        @classlist = []
        
        Working.all.each do |i|
            i.team.each do |j|
                if(j == 1)
                    @classlist.insert(-1,i.working_id)
                end
            end
        end
    end
    
    def addmeeting
        m = Meeting.new
        m.working_id = params[:id]
        m.meeting_id = Meeting.all.size+1
        m.location = params[:txt]
        m.day = DateTime.new(params[:date].split('.')[0].to_i,params[:date].split('.')[1].to_i,params[:date].split('.')[2].to_i,params[:time].split(':')[0].to_i,params[:time].split(':')[1].to_i,0)
        m.save
        redirect_to '/work/index/'+params[:id]
            
    end
    
    def addhomework
        
    
        if params[:homework_id] == '-1'
            h = Homework.new
            h.working_id = params[:id]
            h.meeting_id = params[:meeting_id]
            h.member_id = params[:member_id]
            h.content = [{:txt => params[:txt]}]
            
        else 
            h = Homework.where(:homework_id => params[:homework_id]).take
            h.content.insert(-1,{:txt => params[:txt]})
        end
        
        h.save
        redirect_to '/work/index/'+params[:id]
            
    end
    
    
    def schedule
        @name = [{'name'=>'호연','on' => true},
                {'name'=>'현우','on' => false},
                {'name'=>'상우','on' => false}]
    end
    
    def test
    end
end
