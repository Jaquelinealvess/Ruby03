class PaginaIframe < SitePrism::Page

    element :nome,'#first_name'
    element :sobrenome,'#last_name'
    element :senha,'#password'
    element :email,'#email'

end

class PaginaPadrao < SitePrism::Page
    set_url '/mudancadefoco/iframe'
    iframe :preencher_campo, PaginaIframe, '#id_do_iframe'

end

