scoreboard objectives add wheel_anim dummy
scoreboard objectives add wheel_loop dummy
scoreboard objectives add wheel_loop_max dummy
scoreboard objectives add wheel_cooldown dummy
scoreboard objectives add wheel_counter dummy "THE WHEEL Spins"
scoreboard objectives add wheel_rng dummy
scoreboard objectives add wheel_xp dummy
scoreboard objectives add wheel_x dummy
scoreboard objectives add wheel_y dummy
scoreboard objectives add wheel_z dummy
scoreboard objectives add wheel_timeleftc dummy
scoreboard objectives add wheel_timeleft dummy

scoreboard objectives add thewheel trigger "WHEEL STATUS"

scoreboard players set $30 wheel_xp 30
scoreboard players set $1200 wheel_timeleftc 1200
scoreboard players set $30 wheel_timeleft 30

scoreboard objectives add wheel_r16 dummy
scoreboard objectives add wheel_r16_j minecraft.custom:minecraft.jump
scoreboard objectives add wheel_r16_w minecraft.custom:minecraft.walk_one_cm

scoreboard objectives add wheel_r26_d deathCount
scoreboard objectives add wheel_r26_k minecraft.custom:minecraft.player_kills

scoreboard objectives add wheel_r27_d deathCount
scoreboard objectives add wheel_r27_j minecraft.custom:minecraft.leave_game