class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    @number = 1234567
    @price = 1234567
    mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
      # format.html { render text: Liquid::Template.parse(template_html).render('user' => @user, 'url' => @url).html_safe  }
      format.text { render text: Liquid::Template.parse(template_text).render('user' => @user, 'url' => @url, 'number' => @number, 'price' => @price) }
    end
  end

  private

  def template_text
    <<-EOS
      {{ user.dear_name }}、example.comへようこそ。\n
      {{ user.name }}様、example.comへようこそ。\n
      number {{ number }}
      number {{ price }}
      number {{ number | number_to_currency: unit: '' }}
      number {{ price | number_to_currency: locale: :ja }}
      ===============================================\n
\n
      example.comへのサインアップが成功しました。ユーザー名は「{{ user.login }}」です。\n
\n
      このサイトにログインするには、{{ url }}をクリックしてください。\n
\n
      本サイトにユーザー登録いただきありがとうございます。\n
    EOS
  end

  def template_html
    <<-EOS
    <!DOCTYPE html>
    <html>
      <head>
        <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
      </head>
      <body>
        <h1>{{ user.dear_name }}、example.comへようこそ。</h1>
        <h1>{{ user.name }}様、example.comへようこそ。</h1>
          <p>
          example.comへのサインアップが成功しました。
          your username is: {{ user.login }}.<br>
        </p>
        <p>
          このサイトにログインするには、{{ url }}をクリックしてください。
        </p>
        <p>ご入会ありがとうございます。どうぞお楽しみくださいませ。</p>
      </body>
    </html>
    EOS
  end
end
