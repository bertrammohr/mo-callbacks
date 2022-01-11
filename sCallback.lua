sCallback = {
    RegisterServerCallback = function(self, name, func)
        self[name] = func
    end
}
RegisterServerEvent("mo-callback:TriggerServerCallback")
AddEventHandler("mo-callback:TriggerServerCallback", function(name, ...)
    local source = source
    TriggerClientEvent("mo-callback:RecieveServerCallback", source, name, sCallback[name](...))
end)
