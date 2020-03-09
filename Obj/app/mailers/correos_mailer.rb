class CorreosMailer < ApplicationMailer
	def correo_nuevo(tareas)
		@tareas = tareas

		User.all.each do |user|
			mail(to: user.email, subject:"Hay nueva tarea disponible")
		end
	end
end
