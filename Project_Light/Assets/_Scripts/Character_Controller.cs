using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections;

public class Character_Controller : MonoBehaviour {

    public Transform camLoc;
    public GameObject targetMove;
    public GameObject targetSelect;
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
            if (EventSystem.current.IsPointerOverGameObject())
            {
                return;
            }
            RaycastHit hitInfo;
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out hitInfo))
            {
                if(hitInfo.collider.tag == "Ground")
                {
                    Destroy(targetInstance);
                    targetInstance = Instantiate(targetMove, hitInfo.point, Quaternion.identity) as GameObject;
                    unit.UnitDestination(targetInstance, false);
                }
                if(hitInfo.collider.tag == "Food")
                {
                    Destroy(targetInstance);
                    targetInstance = Instantiate(targetSelect, hitInfo.point, Quaternion.identity) as GameObject;
                    unit.UnitDestination(targetInstance, true);
                }
                if (hitInfo.collider.tag == "Tree")
                {
                    Destroy(targetInstance);
                    targetInstance = Instantiate(targetSelect, hitInfo.point, Quaternion.identity) as GameObject;
                    unit.UnitDestination(targetInstance, true);
                }
            }
        }
	}

    void LateUpdate()
    {
        camLoc.position = Vector3.Lerp(transform.position, character.transform.position, moveSpeed);
    }
}
