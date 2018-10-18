class ProdutosPage < SitePrism::Page
    # element :form, '.wrapper'
    # element :prod500, '#product-19'
    # element :prod150, '#product-20'
    element :btn_adm, 'a[href*="adm"]'
    element :btn_perfil, 'a[href*="perfil"]'
    element :btn_loja, 'div .nav-top a[href*="loja"]'
    element :btn_sair, 'a[href*="logout"]'
    element :btn_nvendas, 'li a[href*="produtos"]'
    element :btn_ccliente, 'a[href*="clientes"]'
    element :btn_faq, 'a[href*="perguntas"]'
    element :btn_vh500, 'a[href*="500gb"]'
    element :btn_vh150, 'a[href*="150gb"]'
    element :btn_sm500, 'a[data-target*="500gb"]'
    element :btn_sm150, 'a[data-target*="150gb"]'
    element :btn_fechar, '.close'
    element :popup_sucesso, '.swal2-modal swal2-show'
    element :btn_ok, '.swal2-confirm'    
end