-------------------------------Vip----------------------------------------------------------------------------------------
minetest.register_privilege("vip", {
  description = "This player is VIP",
  give_to_singleplayer = false,
})

local function chat_listener(name, message)
  local privs = minetest.get_player_privs(name)
  if privs.vip then
    local new_message = minetest.colorize("white", message)
    minetest.log("action", "Message ".. message .. " remplacé par "..new_message.." pour "..name)
minetest.chat_send_all(minetest.colorize("#f39700","[VIP] ").. minetest.colorize("white","<".. name .."> ") .. new_message)

    return true
  end
end
------------------------------Pro-----------------------------------------------------------------------------------------
minetest.register_on_chat_message(chat_listener)

minetest.register_privilege("Pro", {
  description = "This player is Pro",
  give_to_singleplayer = false,
})

local function chat_listener(name, message)
  local privs = minetest.get_player_privs(name)
  if privs.Pro then
    local new_message = minetest.colorize("white", message)
    minetest.log("action", "Message ".. message .. " remplacé par "..new_message.." pour "..name)
minetest.chat_send_all(minetest.colorize("#009af3","[Pro] ").. minetest.colorize("white","<".. name .."> ") .. new_message)

    return true
  end
end

minetest.register_on_chat_message(chat_listener)
-----------------------------Contributor------------------------------------------------------------------------------------------
minetest.register_privilege("Contributor", {
  description = "This player is Contributor",
  give_to_singleplayer = false,
})

local function chat_listener(name, message)
  local privs = minetest.get_player_privs(name)
  if privs.Contributor then
    local new_message = minetest.colorize("white", message)
    minetest.log("action", "Message ".. message .. " remplacé par "..new_message.." pour "..name)
minetest.chat_send_all(minetest.colorize("#8000f3","[Contributor] ").. minetest.colorize("white","<".. name .."> ") .. new_message)

    return true
  end
end

minetest.register_on_chat_message(chat_listener)
------------------------------Developper----------------------------------------------------------------------------------------
minetest.register_privilege("Developper", {
  description = "This player is Developper",
  give_to_singleplayer = false,
})

local function chat_listener(name, message)
  local privs = minetest.get_player_privs(name)
  if privs.Developper then
    local new_message = minetest.colorize("white", message)
    minetest.log("action", "Message ".. message .. " remplacé par "..new_message.." pour "..name)
minetest.chat_send_all(minetest.colorize("#09a518","[Developper] ").. minetest.colorize("white","<".. name .."> ") .. new_message)

    return true
  end
end

minetest.register_on_chat_message(chat_listener)
---------------------------Admin-------------------------------------------------------------------------------------------
local function chat_listener(name, message)
  local privs = minetest.get_player_privs(name)
  if privs.server then
    local new_message = minetest.colorize("white", message)
    minetest.log("action", "Message ".. message .. " remplacé par "..new_message.." pour "..name)
minetest.chat_send_all(minetest.colorize("#812525","[Admin] ").. minetest.colorize("white","<".. name .."> ") .. new_message)

    return true
  end
end

minetest.register_on_chat_message(chat_listener)

