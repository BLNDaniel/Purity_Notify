local notifyId = 0

function Notify(text, type, duration)
    notifyId = notifyId + 1
    local notify = {
        id = notifyId,
        text = text,
        type = type,
        duration = duration
    }
    SendNUIMessage({
        action = "notify",
        notify = notify
    })
end

RegisterNetEvent('purity_notify:show')
AddEventHandler('purity_notify:show', function(text, type, duration)
    Notify(text, type, duration)
end)

exports('ShowNotification', function(text, type, duration)
    Notify(text, type, duration)
end)

RegisterCommand('testnotify', function()
    TriggerEvent('purity_notify:show', 'This is a test notification', 'info', 5000)
    TriggerEvent('purity_notify:show', 'This is a test notification', 'error', 5000)
    TriggerEvent('purity_notify:show', 'This is a test notification', 'success', 5000)
end)
