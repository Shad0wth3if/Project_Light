using UnityEngine;
using System.Collections;

public class Unit : MonoBehaviour {

    public GameObject character;

    GameObject flag;
    NavMeshAgent agent;

    // Use this for initialization
    void Start () {
        character = this.gameObject;
        agent = GetComponent<NavMeshAgent>();
    }
	
	// Update is called once per frame
	void Update () {

	}

    void OnTriggerEnter (Collider other)
    {
        if(other.gameObject == flag)
        {
            Destroy(flag);
        }
        if(other.gameObject.tag.Equals("Resource"))
        {
            agent.SetDestination(transform.position);
        }
    }

    public void UnitDestination (GameObject recievedFlag)
    {
        flag = recievedFlag;
        agent.SetDestination(recievedFlag.transform.position);
    }
}
