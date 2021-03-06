class NewUserEmailMailer < ApplicationMailer

  def mail_to_indicated(indicator, indicated, movie, plataforma)
    @indicator = indicator
    @indicated = indicated
    @movie = movie
    @plataforma = plataforma
    @base_url = "https://teniverdanpose.herokuapp.com/"
    indicator = "#{@indicator.nome} <#{@indicator.email}>"
    mail(from: indicator, reply_to:indicator , to: @indicated.email,
         subject: ('Seu amigo ' + @indicator.nome + ' te indicou um filme' ))
  end
end
