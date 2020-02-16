local world = {
	hero = nil,
	skull = nil,
	panels = {},
	row = 0,
	length = 0,
	speed = 0,
	panel_moving = false,
	column_left = 0,
	column_right = 0,
	time = 0,
	score = 0,
	gamestate = 0
}

function world.despawn_hero()
	go.delete(world.hero) --replace with sending a message to play death animation and self-destruct
	world.hero = nil
end

function world.spawn_hero(pos)
	if world.hero ~= nil then world.despawn_hero() end
	world.hero = factory.create("#hero_factory", pos)
end

function world.despawn_panels()
	go.delete(world.panels, true)
	world.panels = {}
end

function world.spawn_panel()
	local panel_props = {row = world.row, length = world.length, speed = world.speed}
	local new_panel = factory.create("#panel_factory", nil, nil, panel_props)
	table.insert(world.panels, new_panel)
	world.panel_moving = true
end



return world