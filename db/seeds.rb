User.destroy_all
u1 = User.create :name => 'Some guy', :email => 'guy@email.com', :password => 'chicken'
u2 = User.create :name => 'Jane Doe', :email => 'jane@email.com', :password => 'chicken'
u3 = User.create :name => 'Pat Put', :email => 'patput@email.com', :password => 'chicken'
puts "#{ User.count } users"

Activity.destroy_all
a1 = Activity.create :category => 'physical', :activity => 'walking', :age => 'all', :mobility => 'full', :friends => 'optional', :equipment => 'no', :location => 'no', :time_todo => Time.at(0), :info => 'Lorem Ipsum'
a2 = Activity.create :category => 'physical', :activity => 'playing tennis', :age => 'all', :mobility => 'full', :friends => '1', :equipment => 'racket', :location => 'tennis court', :time_todo => Time.at(0), :info => 'Lorem Ipsum'
a3 = Activity.create :category => 'physical', :activity => 'swimming', :age => 'all', :mobility => 'full', :friends => 'optional', :equipment => 'swimsuit', :location => 'swimming pool', :time_todo => Time.at(0), :info => 'Lorem Ipsum'
a4 = Activity.create :category => 'physical', :activity => 'hiking', :age => 'all', :mobility => 'full', :friends => 'optional', :equipment => 'no', :location => 'hiking trail', :time_todo => Time.at(0), :info => 'Lorem Ipsum'
puts "#{ Activity.count } activities"

Commitment.destroy_all
p1 = Commitment.create :user_id => 1, :activity_id => 1, :commit_time => DateTime, :completion => false, :journal => 'lorem ipsum'
p2 = Commitment.create :user_id => 2, :activity_id => 1, :commit_time => DateTime, :completion => false, :journal => 'lorem ipsum'
p3 = Commitment.create :user_id => 3, :activity_id => 1, :commit_time => DateTime, :completion => false, :journal => 'lorem ipsum'
puts "#{ Commitment.count } commitments"

Like.destroy_all
l1 = Like.create :activity_id => 4, :user_id => 1, :like => false
l1 = Like.create :activity_id => 3, :user_id => 1, :like => false
l1 = Like.create :activity_id => 2, :user_id => 1, :like => false
puts "#{ Like.count } likes"