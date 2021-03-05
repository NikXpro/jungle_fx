description "ESX Vehicle Shop"
author "NikX"

shared_script "config.lua"

client_script {
    "client/utils.lua",
    "client/main.lua" 
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    "server/utils.lua",
    "server/main.lua"
}

dependency "es_extended"

ui_page "html/ui.html"

files {
    "html/ui.html",
    "html/ui.css",
    "html/ui.js",
    "html/img/*.png",
    "html/img/*.jpg"
}
