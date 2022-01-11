cCallback = {
    TriggerServerCallback = function(self, name, cb, ...)
        TriggerServerEvent("mo-callback:TriggerServerCallback", name, ...)
        self[name] = cb
    end
}
RegisterNetEvent("mo-callback:RecieveServerCallback")
AddEventHandler("mo-callback:RecieveServerCallback", function(name, ...)
    cCallback[name](...)
end)
