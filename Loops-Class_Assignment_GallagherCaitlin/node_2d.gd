extends Node2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.AQUA, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BEIGE)    
	draw_circle(Vector2(500, 500), 100, Color.BLUE_VIOLET, true)
	
	var v = get_viewport_rect()  
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.BISQUE)

	for i in range(10):
		print(i)    

	for i in range(10, -1, -1):
		print(i)
		#numbers going down
	
	var basket = ["apple", "banana", "carrot"]
	
	for f in basket:
		print(f)
		
	for i in range(basket.size()):
		print(basket[i])
	
		draw_circle(Vector2(200, 200), 100, Color.WHITE)
	#draw_circle=draw shape #vector2 is position #100=size #color is for colour of shape

	#lines going sideways
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines

	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.RED)
	
	#lines going down
	var num_h_lines = 4
	var gap = 50
	var border = 100
	for i in range(num_h_lines):
		draw_line(Vector2(100, border + gap * i), Vector2(v.size.x - border, border + gap * i), Color.RED)

	#lines going from corner to corner
	var num_b_lines = 5
	var space = 500
	var top = 200
	for i in range(num_b_lines):
		draw_line(Vector2(v.size.x, border + gap * i), Vector2(0, v.size.y - border - gap * i), Color.AQUA)
	
	var center = Vector2(400, 300)
	var angle = 0
	var radius = 10
	var angle_increment = 10
	var radius_increment = 5
	
	for i in range(100):
		var x = center.x + radius * cos(deg_to_rad(angle))
		var y = center.y + radius * sin(deg_to_rad(angle))
		draw_circle(Vector2(x, y), 2, Color.WHITE)
		angle += angle_increment
		radius += radius_increment
	
#for i in range(3):
#	var row = ""
#for j in range(3):
#	row += "({} , {}) ".format(i, j)
#	print(row)
