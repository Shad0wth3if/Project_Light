using UnityEngine;
using System.Collections;

public class Unit : MonoBehaviour {

    public GameObject character;

    GameObject flag;
    NavMeshAgent agent;
    bool isResource;
    ResourceGathering resourceGathering;
    Camera mainCamera;

    int[] item;

    // Use this for initialization
    void Start () {
        resourceGathering = mainCamera.GetComponent<ResourceGathering>();
        character = this.gameObject;
        agent = GetComponent<NavMeshAgent>();
    }
	
	// Update is called once per frame
	void Update () {

	}

    void OnTriggerEnter (Collider other)
    {
        if(other.gameObject.tag.Equals("Resource") && isResource == true)
        {
            agent.SetDestination(transform.position);
            //Add player collect animation
            resourceGathering.GatherEvent();

        }
        if (other.gameObject == flag)
        {
            Destroy(flag);
        }
    }

    public void UnitDestination(GameObject recievedFlag, bool type)
    {
        isResource = type;
        flag = recievedFlag;
        agent.SetDestination(recievedFlag.transform.position);
    }
}

















