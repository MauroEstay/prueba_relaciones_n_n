module UsertasksHelper
  def existe_tarea_usuario?(task)
     e = task.usertasks.where(user_id: current_user.id)
     if e.count > 0
       true
     else
       false
     end
 end
end
