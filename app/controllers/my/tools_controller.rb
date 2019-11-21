class My::ToolsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @tools = current_user.tools
    render "tools/index"
  end
end
