module AdminsBackofficeHelper
    def traduzindo_para_humanos(object = nil, method = nil)
        if object && method
        object.model.human_attribute_name(:method)
        else
            "informe os parâmetros corretamente!"
        end
    end
end
