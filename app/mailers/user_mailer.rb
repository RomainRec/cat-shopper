class UserMailer < ApplicationMailer

  def welcome_email(user)
       @user = user
     mail(from: "thpcatshopping@gmail.com", to: @user, subject: "Petit message de bienvenue")
  end

  def user_order(email, cart)
    @email = email
    @cart = cart
    mail(from: "thpcatshopping@gmail.com", to: email, subject: "Votre commande")
   end

   def admin_order(amount)
    @amount = amount
     mail(from: "thpcatshopping@gmail.com", to: "admin_thpcatshopping@gmail.com", subject: "Nouvelle commande passée")
  end
end

