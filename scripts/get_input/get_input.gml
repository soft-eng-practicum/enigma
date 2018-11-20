<<<<<<< HEAD
/// @Desc get_input() for player movement
=======
/// @description get_input() for player movement
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
input_left		=	max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
input_right		=	max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
input_up		=	max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
input_down		=	max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
input_walk		=	keyboard_check(vk_control);
input_run		=	keyboard_check(vk_shift);

action_key = keyboard_check_pressed(vk_space);

// Gamepad Input
if (gamepad_is_connected(0)) 
{
	input_right = gamepad_button_check(0, gp_padr);
	input_left = gamepad_button_check(0, gp_padl);
	
	input_down = gamepad_button_check(0, gp_padd);
	input_up = gamepad_button_check(0, gp_padu);
	
	xaxis = max(gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axisrh), input_right - input_left, 0);
	yaxis = max(gamepad_axis_value(0, gp_axislv), gamepad_axis_value(0, gp_axisrv), input_down - input_up, 0);
}