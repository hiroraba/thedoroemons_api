require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './model.rb'

class Job < ActiveRecord::Base
end

class App < Sinatra::Base

  before do
    content_type :json
  end

  get '/jobs' do
    @jobs = Job.all
    @jobs_array = {"jobs" => @jobs}
    @jobs_array.to_json
  end

  get '/jobs/current' do
    @jobs = Job.where("is_finished = ?", false).first

    if !@jobs then
      return {}.to_json
    end

    result = @jobs.to_json
    @jobs.is_finished = true
    @jobs.save
    result
  end

  post '/jobs/new', provides: :json do
    params = JSON.parse(request.body.read)
    Job.create(:job_id => params["job_id"], :user_id => params["user_id"], :message_id => params["message_id"])
  end
end
