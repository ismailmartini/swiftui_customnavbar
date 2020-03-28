# swiftui_customnavbar
SWIFTUI ile Özel navigasyon bar oluşturma 
Navigasyon butonunu gizleyip kendi navigasyon view'ımızı yaparak özelleştirebildiğimiz proje
## Ekran Görüntüleri

![ana ekran](https://github.com/ismailmartini/swiftui_customnavbar/blob/master/CustomNavigationBarAndModal/main.png)

**geri butonu ve özel başlık ekleme**
```
                   NavigationLink(destination:DestinationView
                   (isCustomViewShow:true,isNavBackShow: true,customNavTitle: "my title <3")){
                        Text("göster").foregroundColor(Color.white).font(.headline)
                    }.padding()
                    //isCustomViewShow:true ise CustomNavigationView gözükecektir
                    //isNavBackShow: true   ise geri butonu aktif olacak navigation bar gözükecek
                    //customNavTitle: "my title <3"gözükecek nagivasyon bar title 
 
```
![geri butonu ve navgiasyon bar](https://github.com/ismailmartini/swiftui_customnavbar/blob/master/CustomNavigationBarAndModal/backbutton.png)

**geri butonu kapatarak özel başlık ekleme**
```
                   NavigationLink(destination:DestinationView
                   (isCustomViewShow:true,isNavBackShow: true,customNavTitle: "my title <3")){
                        Text("göster").foregroundColor(Color.white).font(.headline)
                    }.padding()
                    //isCustomViewShow:true ise CustomNavigationView gözükecektir
                    //isNavBackShow: false   ise geri butonu aktif olmayacak navigation bar gözükecek
                    //customNavTitle: "my title <3" gözükecek nagivasyon bar title 
  
```

![geri butonsuz ve navgiasyon bar](https://github.com/ismailmartini/swiftui_customnavbar/blob/master/CustomNavigationBarAndModal/nobackbutton.png)
