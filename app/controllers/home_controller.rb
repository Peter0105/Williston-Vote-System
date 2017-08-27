class HomeController < ApplicationController
  	def list
  		if current_user.nil? 
  			redirect_to new_user_session_path
  		else
  			@votes = Vote.all
  		end	
  	end
  	def vote
  		if current_user.nil? 
  			redirect_to new_user_session_path
  		else
  			@votes = Vote.all
        @users = User.all
  		end
  	end
  	def chart
  		if current_user.nil? 
  			redirect_to new_user_session_path
  		else
  			@votes = Vote.all
  		end
  	end

    def update
        # 입력받을 데이터를 실제 DB에 저장하는 액션
        @user_votes = UserVote.new
        @users = User.all
        @user = current_user.id
        @vote = Vote.find(params[:vote_id])
        @user_votes.user_id = @user 
        @user_votes.vote_id = @vote.id
        @vote.count += 1
        @vote.save
        @user_votes.save
        redirect_to "/home/chart"
    end
end
