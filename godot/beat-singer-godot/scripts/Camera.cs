using Godot;
using System;

public partial class Camera : Camera2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
        GD.Print("Olá, Mundo!");
    }

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _PhysicsProcess(double deltaDouble)
	{
		float speed = 300f; 
		float delta = (float)deltaDouble;
		GlobalPosition = new Vector2(GlobalPosition.X, GlobalPosition.Y - speed * delta);
	}
}
