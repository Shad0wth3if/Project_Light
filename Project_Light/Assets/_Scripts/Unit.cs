using UnityEngine;
using System.Collections;

public class Unit : MonoBehaviour
{

    public GameObject[] UpgradeButtons;

    GameObject flag;
    NavMeshAgent agent;
    bool isResource;
    ResourceGathering resourceGathering;
    Camera mainCamera;

    int[] item;

    // Use this for initialization
    void Start () {
        resourceGathering = Camera.main.GetComponent<ResourceGathering>();
        agent = GetComponent<NavMeshAgent>();
        //agent = GetComponent<NavMeshAgent>();
    }
	
	// Update is called once per frame
	void Update () {

	}

    void OnTriggerEnter (Collider other)
    {
        if (other.gameObject.tag.Equals("Food") && isResource == true)
        {
            agent.SetDestination(transform.position);
            //Add player collect animation
            //resourceGathering.GatherFood();
            for (int i = 0; i < UpgradeButtons.Length; i++)
                Instantiate(UpgradeButtons[i]);
        }
        else if (other.gameObject.tag.Equals("Tree") && isResource)
        {
            agent.SetDestination(transform.position);
            //Add player collect animation
            resourceGathering.GatherWood();
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

















