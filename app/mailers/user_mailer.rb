class UserMailer < ApplicationMailer

    default from: 'notifications@example.com'

    def hello     
        mail(to: 'clau@mail.com', subject: 'Se ha publicado una nueva reseña')
        
      end
    

end
