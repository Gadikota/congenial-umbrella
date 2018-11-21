module Concerns::MohanModule
  def show
    flash.now[:error] = "This is error"
    flash.now[:success] = "This is success"
  end
end