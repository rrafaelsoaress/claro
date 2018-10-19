class VendasPage < SitePrism::Page
    element :campo_msisdn, '#msisdn'
    element :campo_email, '#email'
    element :campo_cpf, '#personal_code'
    element :btn_avancar, '#sale-continue'
    element :btn_confirmar, '#btn-confirm-sale'
    element :btn_cancelar, '#sale-cancel'

    def cadastro_completo
        campo_msisdn.set '11990234118'
        btn_avancar.click
        sleep 1
        campo_cpf.click
        campo_email.set 'teste@getnada.com'
        campo_cpf.click
        campo_cpf.set '37265171705'
        btn_confirmar.click
    end

    def cadastro_sem_email
        campo_msisdn.set '11990234118'
        btn_avancar.click
        sleep 1
        campo_email.set ''
        campo_cpf.click
        campo_cpf.set '37265171705'
        sleep 5
        btn_confirmar.click
    end

    def cadastro_sem_cpf
        campo_msisdn.set '11990234118'
        btn_avancar.click
        sleep 1
        campo_email.click
        campo_email.set 'teste@getnada.com'
        campo_cpf.set ''
        btn_confirmar.click
    end
end