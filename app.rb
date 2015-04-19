require 'sinatra'
require 'sinatra/reloader' if development? #  reload after file modification
require 'json'

# our fake database
DB = []

class Appointment

  attr_accessor :person_name
  attr_accessor :date

  def initialize person_name, date
    @person_name = person_name
    @date = date
    # >>> TODO (a)
    # Save the object in the database
  end

  # define the response of the to_json method
  def to_json(*a)
    { :person_name => @person_name, :date => @date }.to_json(*a)
  end

  # class methods
  def self.all
    return DB
  end
  def self.get id
    # >>> TODO (d)
    # return a precise item in the database 
  end
  # >>> TODO (f)
  # create a class method that delete an appointment at a precise place in our database

  # >>> TODO (b)
  # create a class method that count the number of appointments called total
end

# fake data
Appointment.new("John Doe", "aujourd'hui")
Appointment.new("Jean Michel Dupont", "hier")
Appointment.new("Marie Martine", "le 03/04/15")
Appointment.new("Jean Smith", "le 01/11/14")

# routes 
get '/' do
  @appointments = Appointment.all
  erb :index # load index.erb from views folder
end

post '/' do 
  person_name = params[:person_name].to_s
  date = params[:date].to_s
  # >>> TODO (c)
  # Create a new object from the data received 
  # Redirect to the root path ("/")
end

# API
get '/api/appointments' do
  Appointment.all.to_json
end

get '/api/appointments/:id' do
  # >>> TODO (d)
  # retrieve the id of requested appointment from params, transform it to integer by precaution
  # check if the appointment exist
  # retrieve it and don't forget to transform it to json format
  # else give status not found
end

post '/api/appointments/' do
  params = JSON.parse(request.body.read)
  person_name = params["person_name"].to_s
  date = params["date"].to_s
  # >>> TODO (e)
  # check if the data are not nil
  # save it and give status created if present
  # else give status bad request 
end

delete '/api/appointments/:id' do
  # >>> TODO (f)
  # retrieve the id 
  # if the appointment exit, delete it
  # else give status not found
end