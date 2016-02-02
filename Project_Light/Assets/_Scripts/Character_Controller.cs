using UnityEngine;
using System.Collections;

public class Character_Controller : MonoBehaviour {

    public Transform camLoc;
    public GameObject target;
    public GameObject character;
    public float moveSpeed;

    Unit unit;
    GameObject targetInstance;

    // Use this for initialization
    void Start () {
        unit = character.GetComponent<Unit>();
	}
	
	// Update is called once per frame
	void Update () {

        if(Input.GetButtonDown("Fire1"))
        {
            RaycastHit hitInfo;
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out hitInfo))
            {
                Destroy(targetInstance);
                targetInstance = Instantiate(target, hitInfo.point, Quaternion.identity) as GameObject;
                unit.UnitDestination(targetInstance);
            }
        }
	}

    void LateUpdate()
    {
        camLoc.position = Vector3.Lerp(transform.position, character.transform.position, moveSpeed);
    }
}
