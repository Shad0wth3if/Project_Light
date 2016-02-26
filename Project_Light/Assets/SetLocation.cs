using UnityEngine;
using System.Collections;

public class SetLocation : MonoBehaviour {

    Vector3 buttonPlacement;
    MeshRenderer renderer;
    public GameObject player;
    public GameObject attackUnitPrefab;
    public float mSMultiplier;
    NavMeshAgent playerAgent;
    bool isDestroyed;
	// Use this for initialization
	void Start ()
    {
        isDestroyed = false;
        player = GameObject.FindGameObjectWithTag("Player");
        playerAgent = player.GetComponent<NavMeshAgent>();
        renderer = GetComponent<MeshRenderer>();
        if (gameObject.tag == "AttackButton")
            buttonPlacement = new Vector3(-6, -5, 6);
        else if (gameObject.tag == "MovementButton" || gameObject.tag == "AttackUnit")
            buttonPlacement = new Vector3(-10, -5, 0);
        else if (gameObject.tag == "DefenseButton")
            buttonPlacement = new Vector3(-1, -5, 9);

        gameObject.transform.position = Camera.main.transform.position;
        gameObject.transform.position += buttonPlacement;
	}
	
	// Update is called once per frame
	void Update ()
    {
        RaycastHit outHit = new RaycastHit();
        Ray mRay = Camera.main.ScreenPointToRay(Input.mousePosition);

        if(Input.GetButtonDown("Fire1"))
        {
            if (Physics.Raycast(mRay, out outHit, 1000))
            {
                if (outHit.collider.tag == "MovementButton")
                {
                    playerAgent.speed += mSMultiplier;
                    isDestroyed = true;
                }
                else if (outHit.collider.tag == "AttackUnit")
                {
                   GameObject atu = Instantiate(attackUnitPrefab);
                   atu.transform.parent = player.transform;
                }
            }
        }

        if (isDestroyed)
            Destroy(gameObject);
	}
}
