# SpinnerSearchableCustomObject
Xamarin android spinner searchable

# Uso
Hay dos objetos con los que podemos trabajar

```csharp
List<SpinnerObjectRandom> SOR = new List<SpinnerObjectRandom>();
SOR.Add(new SpinnerObjectRandom { Dato1 = "A", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "B", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "C", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "D", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "E", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });

SpinnerCustomV7 Spinn01; // Compatible con Android.Support.V7
Spinn01 = new SpinnerCustomV7(SOR);
```

```csharp
List<SpinnerObjectRandom> SOR = new List<SpinnerObjectRandom>();
SOR.Add(new SpinnerObjectRandom { Dato1 = "A", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "B", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "C", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "D", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
SOR.Add(new SpinnerObjectRandom { Dato1 = "E", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });

SpinnerCustomV4 Spinn01; // Compatible con Android.Support.V4
Spinn01 = new SpinnerCustomV7(SOR);
```
El objeto que toma como parámetro en el constructor puede ser cualquier tipo de objeto pero debe tener el attribute [Texto] en la propiedad que se quiere mostrar en el spinner

```csharp
using SpinnerCustomObject.AttributeCustom;
//Ejemplo objeto random
public class SpinnerObjectRandom
{
    [Texto]
    public string Dato1 { get; set; } // Esta propiedad se usara mostrar en el spinner
    public string Dato2 { get; set; }
    public string Dato3 { get; set; }
    public string Dato4 { get; set; }
    public string Dato5 { get; set; }
}
```
SpinnerSearchableCustomObject devuelve el objeto completo después del click, pero en necesario una conversión.

```csharp
Spinn01.EventClickSpinner += (s, e) =>
{
    var Result = (SpinnerObjectRandom)e.SpinnerModel;
    Text01.Text = Result.Dato1;
    Spinn01.Dismiss();
};
```
Es necesario para la implementación utilizar un widget que permita levantar SpinnerSearchableCustomObject

```csharp
TextView Text01 = FindViewById<TextView>(Resource.Id.TextView01);
Text01.Touch += Text01_Touch;

private void Text01_Touch(object sender, Android.Views.View.TouchEventArgs e)
{
    try
    {
        if (e.Event.Action == Android.Views.MotionEventActions.Down)
        {
            if (!Spinn01.IsVisible)
            {
                Spinn01.Show(FragmentManager, "TestSpinner");
            }
        }
    }
    catch (Exception ex) { }
}

```

![](https://github.com/Rainbowdashx1/SpinnerSearchableCustomObject/blob/master/SpinnerCustomObject/Resources/GiftSpinner.gif)
