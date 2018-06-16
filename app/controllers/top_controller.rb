class TopController < ApplicationController
  def index
    @question = Question.new
    feed_contents = current_user.group.feed_contents.includes(:content)
    @feed_contents = feed_contents.map(&:content) #{ |object| object.method } の代わりに (&:method) と表現
  end
end
