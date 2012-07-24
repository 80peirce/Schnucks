class HittersController < ApplicationController
  def list
    @hitters = Hitter.all
  end
end
