using UnityEngine;
using System.Collections;

public class SpawnResources : MonoBehaviour
{
    public GameObject food;
    public GameObject tree;
    public float eggSpawnRate;
    public float treeSpawnRate;
    float timer;
    MeshRenderer parent;
    Vector3 minBounds;
    Vector3 maxBounds;
    Vector3 spawnLocation;
    // Use this for initialization
    void Start ()
    {
        parent = GetComponentInParent<MeshRenderer>();

        //minBounds = new Vector2(parent.bounds.center.x - parent.bounds.extents.x,
        //                        parent.bounds.center.y - parent.bounds.extents.y);

        //maxBounds = new Vector2(parent.bounds.center.x + parent.bounds.extents.x,
        //                        parent.bounds.center.y + parent.bounds.extents.y);
        Debug.Log(minBounds + " = " + parent.bounds.center + " - " + parent.bounds.extents);

        minBounds = parent.bounds.center - parent.bounds.extents;
        maxBounds = parent.bounds.center + parent.bounds.extents;

        Debug.Log(minBounds + " = " + parent.bounds.center + " - " + parent.bounds.extents);
        Debug.Log(maxBounds + " = " + parent.bounds.center + " + " + parent.bounds.extents);

        spawnLocation = new Vector3();
    }
	
	// Update is called once per frame
	void Update ()
    {
        timer += Time.deltaTime;
        if (eggSpawnRate < timer)
        {
            spawnLocation.x = Random.Range(minBounds.x, maxBounds.x);
            //set this too half height of prefab
            spawnLocation.y = .5f;
            spawnLocation.z = Random.Range(minBounds.z, maxBounds.z);
            Instantiate(food, spawnLocation, Quaternion.identity);
            timer = 0;
        }

        if (treeSpawnRate < timer)
        {
            spawnLocation.x = Random.Range(minBounds.x, maxBounds.x);
            spawnLocation.y = .5f;
            spawnLocation.z = Random.Range(minBounds.z, maxBounds.z);
            Instantiate(tree, spawnLocation, Quaternion.identity);
            timer = 0;
        }
    }
}
