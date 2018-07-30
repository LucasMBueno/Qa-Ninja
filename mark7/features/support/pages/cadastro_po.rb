class CadastroPage

    include Capybara::DSL

    def alerta
      find('.alert-login')
    end
  
    def registrar(nome, email, senha)
      find('#register_name').set nome
      find('#register_email').set email
      find('#register_password').set senha
      click_on 'Cadastrar'
    end

    def cadastrar
        find('a[href$=register]').click
    end

    def header_cell(col) #:nodoc:
      
    end
  end
  