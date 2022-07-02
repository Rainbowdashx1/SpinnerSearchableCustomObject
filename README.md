# SpinnerSearchableCustomObject V1.1.3
Xamarin android spinner searchable

[![Version](https://img.shields.io/nuget/v/SpinnerSearchableCustomObject?style=plastic)](https://www.nuget.org/packages/SpinnerSearchableCustomObject/)
[![License](https://img.shields.io/github/license/Rainbowdashx1/SpinnerSearchableCustomObject?style=plastic)](https://github.com/Rainbowdashx1/SpinnerSearchableCustomObject/blob/master/LICENSE.md)

<img src="https://raw.github.com/Rainbowdashx1/SpinnerSearchableCustomObject/master/SpinnerSearchableCustomObjectImg.jpg" width="700" height="400">

# Uso
Hay solo un objeto con el que podemos trabajar 
* `SpinnerCustomObject.SpinnerCustomObj` (Compatible API >= 23)

Código de ejemplo: 

```xml
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    app:layout_behavior="@string/appbar_scrolling_view_behavior"
    tools:showIn="@layout/activity_main">

    <SpinnerCustomObject.SpinnerCustomObj
        android:id="@+id/spiner1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerInParent="true"/>
    
</RelativeLayout>
```
### Instancia de spinner
`SpinnerCustomObj` una vez declarado en xml(vista) se puede instanciar como cualquier otro componente android 
Ejemplo: 
```csharp
public class Activity1 : AppCompatActivity
{
    SpinnerCustomObject.SpinnerCustomObj SCOX;
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        SetContentView(Resource.Layout.activity_main);
        SCOX = FindViewById<SpinnerCustomObject.SpinnerCustomObj>(Resource.Id.spiner1);
    }
}
```
### Agregar datos a spinner
Puede usar el método `SetData` para agregar un `List` del objeto que necesite mostrar en el spinner, como se muestra en el código a continuación:

Primero creare un objeto 
```csharp
using SpinnerCustomObject.AttributeCustom;

namespace Test
{
    public class Testobj
    {
        [Texto] // Muy importante  el atributo "Texto"
        public string Dato1 { get; set; } // Esta propiedad se usara mostrar en el spinner
        public string Dato2 { get; set; }
        public string Dato3 { get; set; }
        public string Dato4 { get; set; }
        public string Dato5 { get; set; }
    }
}
```
```csharp
public class Activity1 : AppCompatActivity
{
    SpinnerCustomObject.SpinnerCustomObj SCOX;
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        SetContentView(Resource.Layout.activity_main);

        List<Testobj> tt = new List<Testobj>();

        tt.Add(new Testobj { Dato1 = "A", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "B", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "C", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "D", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "E", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });

        SCOX = FindViewById<SpinnerCustomObject.SpinnerCustomObj>(Resource.Id.spiner1);

        SCOX.SetData(this.SupportFragmentManager, tt);
    }
}
```
### Personalización del panel spinner

* `TextColorSpinner` Da color al texto mostrado en el spinner(por defecto negro)
* `BackGroundColorSpinner` cambia el color de fondo del panel spinner(por defecto blanco).

### Evento y funciones spinner

Puede acceder al dato seleccionado en el spinner desde el evento `GetDataEvent` que se ejecutara cuando se seleccione un item dentro del panel spinner o puede acceder al contenido en cualquier momento con la función `GetDataClick` que retornara el dato tipo `object` al cual se debe realizar una conversión a su objeto inicial

# SpinnerSearchableCustomObject V1.1.2

# Uso
Hay tres objetos con los que podemos trabajar 
* `SpinnerCustomObject.SpinnerCustomObjX` (compatible con proyectos androidx) 
* `SpinnerCustomObject.SpinnerCustomObjV4` (compatible con proyectos Android.Support.V4) 
* `SpinnerCustomObject.SpinnerCustomObjV7` (compatible con proyectos Android.app) 

Código de ejemplo (compatible con proyectos androidx) : 

```xml
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    app:layout_behavior="@string/appbar_scrolling_view_behavior"
    tools:showIn="@layout/activity_main">

    <SpinnerCustomObject.SpinnerCustomObjX
        android:id="@+id/spiner1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerInParent="true"/>
    
</RelativeLayout>
```
### Instancia de spinner
`SpinnerCustomObj` una vez declarado en xml(vista) se puede instanciar como cualquier otro componente android 
Ejemplo: 
```csharp
public class Activity1 : AppCompatActivity
{
    SpinnerCustomObject.SpinnerCustomObjX SCOX;
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        SetContentView(Resource.Layout.activity_main);
        SCOX = FindViewById<SpinnerCustomObject.SpinnerCustomObjX>(Resource.Id.spiner1);
    }
}
```
### Agregar datos a spinner
Puede usar el método `SetData` para agregar un `List` del objeto que necesite mostrar en el spinner, como se muestra en el código a continuación:

Primero creare un objeto 
```csharp
using SpinnerCustomObject.AttributeCustom;

namespace Test
{
    public class Testobj
    {
        [Texto] // Muy importante  el atributo "Texto"
        public string Dato1 { get; set; } // Esta propiedad se usara mostrar en el spinner
        public string Dato2 { get; set; }
        public string Dato3 { get; set; }
        public string Dato4 { get; set; }
        public string Dato5 { get; set; }
    }
}
```
```csharp
public class Activity1 : AppCompatActivity
{
    SpinnerCustomObject.SpinnerCustomObjX SCOX;
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        SetContentView(Resource.Layout.activity_main);

        List<Testobj> tt = new List<Testobj>();

        tt.Add(new Testobj { Dato1 = "A", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "B", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "C", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "D", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });
        tt.Add(new Testobj { Dato1 = "E", Dato2 = "DATA2", Dato3 = "DATA3", Dato4 = "DATA4", Dato5 = "DATA5" });

        SCOX = FindViewById<SpinnerCustomObject.SpinnerCustomObjX>(Resource.Id.spiner1);

        SCOX.SetData(this.SupportFragmentManager, tt);
    }
}
```

### Personalización del panel spinner

* `TextColorSpinner` Da color al texto mostrado en el spinner(por defecto negro)
* `BackGroundColorSpinner` cambia el color de fondo del panel spinner(por defecto blanco).

### Evento y funciones spinner

Puede acceder al dato seleccionado en el spinner desde el evento `GetDataEvent` que se ejecutara cuando se seleccione un item dentro del panel spinner o puede acceder al contenido en cualquier momento con la función `GetDataClick` que retornara el dato tipo `object` al cual se debe realizar una conversión a su objeto inicial

# SpinnerSearchableCustomObject V1.0.0
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




