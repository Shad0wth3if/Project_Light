using UnityEngine;
using System.Collections;

[CreateAssetMenu( fileName = "WaveDefinition", menuName = "Horde Wave/Single Wave")]
public class WaveDefinition : ScriptableObject {
    public bool isReallyFuckingHard = true;
    public int opponants = 1;
}
