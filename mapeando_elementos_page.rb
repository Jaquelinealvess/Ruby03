class MapeandoElementoPage < SitePrism::Page
    set_url '/users/new'
#o element é a mesma coisa que o find, só que busca por simbolo
    element :nome, '#user_name'
      def preencher
        nome.set 'Jaqueline'
    end
end