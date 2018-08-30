class UserMailer < ApplicationMailer

  def welcome_email(user)
       @user = user
     mail(from: "thpcatshopping@gmail.com", to: @user, subject: "Petit message de bienvenue")
  end

  def user_order(user, amount)
    @user = user
    @amount = amount
     mail(from: "thpcatshopping@gmail.com", to: @user, subject: "Votre commande")
   end


end
