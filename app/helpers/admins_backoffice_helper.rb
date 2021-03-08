module AdminsBackofficeHelper
    def traduzindo_para_humanos(object = nil, method = nil)
        (object && method) ? object.model.human_attribute_name(method) : "informe os parâmetros corretamente!"
    end
end
