using UnityEngine;
using System.Collections;

public class UI_Events : MonoBehaviour {

    public void RestartLevel()
    {
        Application.LoadLevel(0);
    }

}
