extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	# الحصول على مدخلات الحركة
	var direction_x := Input.get_axis("left", "right")
	if direction_x == 1:
		get_node("AnimatedSprite2D").flip_h = true
	elif direction_x == -1:
		get_node("AnimatedSprite2D").flip_h = false
	
	
	var direction_y := Input.get_axis("up", "down")
	if direction_y == 1:
		get_node("AnimatedSprite2D").flip_h = true
	elif direction_y == -1:
		get_node("AnimatedSprite2D").flip_h = false
	
	var input_vector = Vector2(direction_x, direction_y).normalized()
	
	# تحديث السرعة بناءً على المتجهات
	velocity.x = input_vector.x * SPEED
	velocity.y = input_vector.y * SPEED
	
	# تشغيل الأنميشن
	if input_vector.y < 0:
		# إذا كان يتحرك للأعلى
		$AnimatedSprite2D.play("up") # استخدام أنميشن "up"
	elif input_vector.y > 0:
		# إذا كان يتحرك للأسفل
		$AnimatedSprite2D.play("down") # (إذا كان لديك أنميشن للأسفل)
	elif input_vector.x != 0:
		# إذا كان يتحرك أفقياً (يمين/يسار)
		$AnimatedSprite2D.play("w") # (أو "w" كما كان في الكود الأصلي)
		# يمكنك إضافة flip_h إذا كان الأنميشن نفسه لليمين واليسار
		# $AnimatedSprite2D.flip_h = input_vector.x < 0
	else:
		# عند التوقف
		$AnimatedSprite2D.stop()
		# أو $AnimatedSprite2D.play("idle")
		
	# تنفيذ الحركة
	move_and_slide()
