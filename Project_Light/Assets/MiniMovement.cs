using UnityEngine;
using System.Collections;

public class MiniMovement : MonoBehaviour {

    float timer;
    float rad;
    Transform parentT;
	// Use this for initialization
	void Start ()
    {
        Vector3 spawnAdjustment = new Vector3(1.5f, 0, 0);
        this.gameObject.transform.position = this.gameObject.transform.parent.transform.position + spawnAdjustment;
        parentT = this.transform.parent.transform;
        rad = 1;
    }
	
	// Update is called once per frame
	void Update ()
    {
        //sin = Mathf.Sin(20 * Time.deltaTime);
        //Vector3 sinwave = new Vector3(0,sin,0);
        //Vector3 spawnAdjustment = new Vector3(1.5f, 0, 0);
        //this.gameObject.transform.position = this.gameObject.transform.position = this.gameObject.transform.parent.transform.position + sinwave + spawnAdjustment;
        timer += Time.deltaTime;
        this.transform.position = new Vector3(parentT.position.x + Mathf.Sin(timer * rad), //x value in circle
                                              parentT.position.y,  //y value in circle
                                              parentT.position.z + Mathf.Cos(timer) * rad); //z value in circle
        
    }
}
