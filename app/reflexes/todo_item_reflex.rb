# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex
  
  def mark_complete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update_attributes(completed: true, completed_at: Time.now)
  end

  def mark_incomplete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update_attributes(completed: false, completed_at: nil)
  end

end
