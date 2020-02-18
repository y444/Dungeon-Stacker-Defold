local world = {
	STARTING_ROW = 1,
	STARTING_COLUMN = 3,
	STARTING_LENGTH = 3,
	STARTING_SPEED = 0.5,
	STARTING_TIME = 15,
	STARTING_SCORE = 0,
	SPEEDUP_FACTOR = 0.85,
	HERO_START_POS = vmath.vector3(72, 16, 8),
	SKULL_START_POS = vmath.vector3(72, 8, 8),
	CHEST_START_POS = vmath.vector3(72, 288, 0),
	GAME = { START = 1, PLAY = 2, WIN = 3, LOSE = 4, END = 5 },
	state = {
		row = 0,
		column = 0,
		length = 0,
		speed = 0,
		time = 0,
		score = 0,
		game = 0,
	},
	entities = {
		hero = nil,
		skull = nil,
		panels = {},
		rewards = {},
		torches = "/torches#torches",
		industry = "/industry#industry"
	},
	UI = {
		hud = "/HUD#hud" 
	},
	factories = {
		hero_factory = "/industry#hero_factory",
		skull_factory = "/industry#skull_factory",
		panel_factory = "/industry#panel_factory",
		block_factory = "/industry#block_factory",
		coin_factory = "/industry#coin_factory",
		small_chest_factory = "/industry#small_chest_factory",
		chest_factory = "/industry#chest_factory",
		border_factory = "/industry#border_factory"
	}
}
return world