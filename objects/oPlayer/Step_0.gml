/// @description Insert description here
// You can write your code in this editor

//get inputs

var _right_key = keyboard_check( ord("D") );
var _left_key = keyboard_check( ord("A") );
var _up_key = keyboard_check( ord("W") );
var _down_key = keyboard_check( ord("S") );

//player movement
	//get the direction
	
	var _horiz_key = _right_key - _left_key;
	var _vert_key = _down_key - _up_key;
	move_dir = point_direction(0, 0, _horiz_key, _vert_key);
	
	//get the x and y speed
	
	var _spd = 0;
	var _input_level = point_distance(0, 0, _horiz_key, _vert_key);
	_input_level = clamp( _input_level, 0, 1 )
	_spd = move_spd * _input_level;
	
	xspd = lengthdir_x(_spd, move_dir);
	yspd = lengthdir_y(_spd, move_dir);
	
	//move the player
	x += xspd;
	y += yspd;
	
