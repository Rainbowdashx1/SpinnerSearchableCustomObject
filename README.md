# SpinnerSearchableCustomObject
Xamarin android spinner searchable

[![Version](https://img.shields.io/nuget/v/SpinnerSearchableCustomObject?style=plastic)](https://www.nuget.org/packages/SpinnerSearchableCustomObject/)
[![License](https://img.shields.io/github/license/Rainbowdashx1/SpinnerSearchableCustomObject?style=plastic)](https://github.com/Rainbowdashx1/SpinnerSearchableCustomObject/blob/master/LICENSE.md)

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
`SpinnerCustomObj` una vez declarado en xml(vista) se puede instansear como cualquier otro componente android 
Ejemplo : 
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
Puede usar el metodo `SetData` para agregar un `List` del objeto que necesite mostrar en el spinner, como se muestra en el codigo acontinuacion :

Primero creare un objeto 
```csharp
using SpinnerCustomObject.AttributeCustom;

namespace Test
{
    public class Testobj
    {
        [Texto] // Muy imporante el atributo "Texto"
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

### Perzonalizacion del panel spinner

* `TextColorSpinner` Da color al texto mostrado en el spinner(por defecto negro)
* `BackGroundColorSpinner` cambia el color de fondo del panel spinner(por defecto blanco).

### Evento y funciones spinner

Puede acceder al dato seleccionado en el spinner desde el evento `GetDataEvent` que se ejecutara cuando se seleccione un item dentro del panel spinner o puede acceder al contenido en cualquier momento con la función `GetDataClick` que retornara el dato tipo `object` al cual se debe realizar una conversión a su objeto inicial

![](https://github.com/Rainbowdashx1/SpinnerSearchableCustomObject/blob/master/SpinnerCustomObject/Resources/GiftSpinner.gif)
