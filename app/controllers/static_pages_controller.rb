# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    # flash[:error] = "Demo error"
    render component: "HomePage", tag: "main", class: "content-pane"
  end
end
