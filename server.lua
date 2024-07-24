RegisterServerEvent('purity_notify:server')
AddEventHandler('purity_notify:server', function(target, text, type, duration)
    TriggerClientEvent('purity_notify:show', target, text, type, duration)
end)
