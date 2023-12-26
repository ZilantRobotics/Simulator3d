using UnityEngine;

public class FlyThroughCamera : MonoBehaviour
{
	[SerializeField]
    private float acceleration = 50;
    [SerializeField]
    private float accSprintMultiplier = 4;
    [SerializeField]
    private float lookSensitivity = 3;
    [SerializeField]
    private float dampingCoefficient = 5; 

	Vector3 velocity; 

	private void Update()
	{
	    UpdateInput();

		velocity = Vector3.Lerp(velocity, Vector3.zero, dampingCoefficient * Time.deltaTime);
		transform.position += velocity * Time.deltaTime;
	}

	private void UpdateInput()
	{
		velocity += GetAccelerationVector() * Time.deltaTime;

		if (Input.GetMouseButton(1))
		{
			Vector2 mouseDelta = lookSensitivity * new Vector2(Input.GetAxis("Mouse X"), -Input.GetAxis("Mouse Y"));
			transform.Rotate(Vector3.up, mouseDelta.x, Space.World);
			transform.Rotate(Vector3.right, mouseDelta.y, Space.Self);
		}
	}

	private Vector3 GetAccelerationVector()
	{
		Vector3 moveInput = default;

		void AddMovement(KeyCode key, Vector3 dir)
		{
			if (Input.GetKey(key))
				moveInput += dir;
		}

		AddMovement(KeyCode.W, Vector3.forward);
		AddMovement(KeyCode.S, Vector3.back);
		AddMovement(KeyCode.D, Vector3.right);
		AddMovement(KeyCode.A, Vector3.left);
		AddMovement(KeyCode.E, Vector3.up);
		AddMovement(KeyCode.Q, Vector3.down);
		Vector3 direction = transform.TransformVector(moveInput.normalized);

		if (Input.GetKey(KeyCode.LeftShift))
			return direction * (acceleration * accSprintMultiplier); 
		return direction * acceleration; 
	}
}