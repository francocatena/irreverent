class User < ActiveRecord::Base
  before_destroy do
    if name == 'Chuck Norris'
      errors.add :base, 'Chuck is undestroyable'
      false
    end
  end
end
