class DummiesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  autocomplete
end
