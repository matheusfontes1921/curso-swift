//
//  ContentView.swift
//  Aula05Matheus
//
//  Created by Student18 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var nomeImagem: String = "data:image/png;base64,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"
    var musicas = [
        Music(id: 1, name:"Shape of you", subtitle: "Ed Sheeran", image: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTExAQExMWFhYWFg8QFhYWFhMPDxAPFhYXFxYWFhYZHikhGRsmHhYWIjIiJiosLy8wGCA1OjUuOSkuLywBCgoKDg0OGBAQGCweHh4uLi4uLi4uLi4uLi4uLiwuLCwuLi4uLi4uLi4uLi4sLi4uLiwuLi4uLi4uLi4sLi4uLP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAADAQADAQEAAAAAAAAAAAAAAQIDBAUGBwj/xAA2EAACAgECBAUCBQMEAgMAAAABAgADEQQSBSExUQYTIkFhgZEHMlJxoUJiwSMzsfAU0SRygv/EABsBAAMAAwEBAAAAAAAAAAAAAAABAgMEBQYH/8QAMhEAAgIBBAADBgQGAwAAAAAAAAECEQMEEiExBUFRE2FxgaHBIjOR8AYyUtHh8RQVI//aAAwDAQACEQMRAD8A7gSzIzKBnqmfJmGIARbpcACTzlSSTABwhCIQYi2yoR0MnbHiEICKAj2iKAMkVj2xEQIhtgAsS1EiaBhATAyIEgyciBSQ5JlSZTAYMRaEWIIYF4B4mIEQYRjSNN0jdHmIiCBIW+EeBCOh0hbhGGEeIARC4ARkxgREQQhZhmEBEwHugDFujBggDnFzj3QLQoA5ytpkhpoph0BIWVtlRXWKi77GVF/U7BF+5ktpdlKDk1XmSEgUnUv4x0CnB1SZ+FZx9wJzuHcb0uoOKNRW5/Tu2WH9kbBMxrNC6tG1LQZ4rc4Sr4M32Q2zW1SPbEzMydmm0LEWIyZJaVQFGEiWIAIxCBiEYBDMDCKwCGI8QjAUcUIxkhowYwgjAisHQxJMqJjFwIIsQzLEOwMyI8ShHBBZntkbJvJjsaYBZaJEsdmoStLLbDhK1Z2P9q8/v7SZSpBGLk6XZ03i/wARDRVKQA11mRWh6ADq7DsO3vPjnF+M3al/MvsZzzwCfSvwq9AJt4l4y+rvs1Dcs+lF/RUPyr9v5zOonn9RneWXHR9G8M8OhpMStXN9v7fIWZQ7/WW9JXGfcZH7SdvLM16OlZ9A/D/xhaLqtJqHL1WHy1Zzuaqxvy+o8ypPLB7z6hbXjl9J+bg2On36T7x4S44dXpa7m/3F/wBGz5sUD1fUYM6egzSdwbPJ/wAQ6GEazwVXw/sztGSTticyCxnWpnk9jLhmZFjIJPtGVss5BMeZwypjUwoNhyC0N0wJiDGVtHsORuhumfOG0xULaa5hM8NFCh7TXEMSBdA3RUTtZUczFkrzI9oUywIwJn5satE4slplgRmSTJzAKGY5kTKzHRW01SeS/FW1hpK0XPruAbHuqqWGfrieqBmPEdAl9flucAHeG/QcYz/MwajG5wcV5m3ocscGohkkrSZ8Fv0diYLoQDnGR1x1x3mKVkz6D4g0+nRVbduZN4Ubhs9J3YH79p5DzlZbGzsBPpRRlVBOSMnqJwJ49ro+g6fVe2hu20ca98kLnIHT7RI48orj+oFjn8w9h9DNdSgrOCCPcZ6lSORnC3+w98Z+cSGbMTOfQvwo4yVtOjI9Nu5we1gHX7DE8IKf9Pf2bafqMj/gz1P4XVFtdW36Etc/bH+Zk0zayxo1PEYRnpcil6X+nR9bYTNlPeW7SC09Kj5v0IDHUxjHeZuxkZPYR7WOjZsH3k4kgn3kmUkOjQGIGR94xmA6Ndw7yGb5MUl4qEg8z5ik7YRlUhq4misJwgJQHaU4otwRzNwlcu84igzRTFRDibGNWmAzA5ioW05QcQ3CcTJ7ysmLaTsXqcgsJG6YqTLLHvBKh7aNQfiaFQQQRkEEYPTnOMHPeaiwxNMKo8H4j8EkKXSzJLY2YyEJGcjnzzieO4zw+2lKlddq5fb3ZuW4n+J9t2AnJHP/AL/ief8AGmlNlaegFhYFVsbtvzynM1OjTTcez0fh3jWX2kMeTlevR8s4ihZdO+PzV7PrWxU85xa9ITnPLE9WeCpSUrvbCruZWIz62xy/b3jcafIqqRrGAYEqDksSAMd5orSzrk9F/wA2Mvy1a9fI8tcwUPWpyrFDk9crn/3PqX4c+G7NMjam3Aa5ECrz3JXncd3Yn0zh+GPw/COL9UQcHclI79QbD/ie7sszzm1o9I1LfJddHC8Y8XhOHsMMrv8Amf2X3M3Mz3mWxkGddI8s+yGMW6aZjlDvgyjlmTuhYrsMw3QMgiMaKNkzZjmUoiKxUUGIQx8wjA4ksGUafmUtY7yrMraJDSwZYrWWKx7GRuMbkjINKBlsohtHaOxWZkiOaDHaPI7RWFmQEeJe4dow3xDcmK7MzDM0B+I9p7Q3A3QVuektWMQVvYSgpkuiW16gwB6qrf8A2AYfzElaqcqqKTjOABGMwOZNDU+KsomZvHhotjdo+ELcTiBEvYfeQVMqxXyAERWMIZexvaDkUzLBjCSwhleWe8GwMisgoZyNnzH5XzFvFuo4m0yWrM5XlnvJ8o949xabMNhinJ8k9xCPcgtnEOIwo9oAicSvi9a2vRYPLI9SMxCpcuM5VjyyM9ITko02ZseKeS9ibr9/ujhayuy3Vijz7aUFK21+T6DbZnD7iQc4x0+Z3Gi0zopV7Dbz5MyqH29mx1PzOss1S3avTLUVYUebZay4ZV3rsVNw5EnOeU7sPMGNfibXqbOqcoQx45cfhVqla5fz577On8W61qdM2z/csK6evv5j8sj6Zl2Xtpa9FU3+ozPTpWYktz2ks2fp/M4Xipls1HC9O6hla2yxgeaMFAGCPv8AeTxfRomr4XVWGVWvewpuZkHljqATy6zWyzmpSkvJpG5gw4XgxwmrbU59eiaVvvij0WJwuOcQFFRYY8xsU1Kf6rG5Dl746zsS06Dfbfq3etK3TRkIquSFfUsvNsgf0jljvNrNNqPHbOfo8cckt0+IxVu/ovm/oc7hF1gL0XuHdVrs3YCllsHMYHXBBGZ2RM8nxGrUHX6VmdKDbXZXmom3eEcOU9Q9JOR9BPTjOPp/MnDK7Xoy9dhjFwyRa/GrddX06Ot47r71t0enoZUa9rssy+YAqLkcu2ZyeC8Va7zK7U2XUkLYo51nIyrof0kc50lj2vxAtWoY6fSn852oLLGGOf7E/adpwXRWVtfba4a25lZ9uRWigYVEzzwBMcNzyP0v5fuzZz4sENNGMtu7amv6rbv9K9fM28RPlK6FYq11qplDtsSoeqx1b2xy+8xp0uuqIVNRXqE5ZXUKVvC/2uh5/uZxW09Wqv1PnEeWif8AhBSwUlsrZYRz652D6Tfh/hPR0stlVeGU8m8wvzkVKU7j18RXi0+FY8l3V04ppt89uqrhfqdzv5/95R26pK0ax2CqoyzHkAJkZ1Hi+p30zitS5Wym1lHNmRG3MAPfpNrJag2lyjmabCs2WGOTpNpWb3ceZMXWaexdMfy2j1uhzyaxBzVD3nb12hgGU5BG4EcwRPNanxxQwauhLb7GBrFPlsoyeW18jp3nYeHNA9Gnooc5ZR6ufJSxzsB7DOJgxSuVJ2bmr0ezFvlD2crpK7tevu+PTMLjqG1eoSvUui1pUWRlW1FezccDtywfrOfoK7V3ebf5ucY9KIF/YLPOeGDqbbNXqBci1vqbSyBMtZsGBhj+UYxPUMY9Mty3NebK8Q/82sMWmkl0laaXm67s1DTqF4jamsbTWsGS8eZp2xhtwIDVf5H7zsQZ53xsy2Jp6FydQ1qGnB2mtuhsJ/SP8StRcY7l5GLw3FHLm9lNWpJ8/wBPnu+XmdnRqrbtY4rf/wCPp12OVwRdqj1TP9vvj3nYcU1y0Vmxsn+lVAy9lh6Ko75nH4Xol09SUKc7c7m97LTzZ/qZ1+tXfxHSKc4TT3XjHs+7GfpMb3xgr7ZahizZ6X5cE696j6++XmcjhfGWdlqvpOntZS6ox/3FH6T3HuJ23PB9+ROO+BOg44QddwsA+sNdY3YVbeZP1zO71NrBLSnNvLs2ju+04mSEnTXdGPU4oJ4pxW3err05ri+a8+fecTgPExqdONQV2DNwIJzgV9Tn6TXhWvTUVC+vdsYuqll2k7TjIHaeCvv1dfDDSKTSi7vNsf02W+Y3NK1Htz5k+093wesVabT1rjC01jl3xkn7mYcGac5bfRc/M2PENDDTwlOPO6bUadpJevvf0OXsPeEnzYTcp+hyOThAdI79KlgC2Vo49g4DAH6yRNUmSVM2NzXKZOl0yVjbWiVr2UYGZqpgBKUSUq6McpN8t2ce3QVtZXcy5evIQ5Ppz15dJOr4ctl+l1G4g0FyBjkwcYOZzAsYWQ4RZcNRki1T6TXyfaFOPwvh6UJ5decFmsOTks7HJJ/77TlbI9sp0R7SSi4rp/bo4ur0aWGtmHOthYhyfS+MZm6iPaYYj4CU5SSTfR1/C+HNXbrLnYE32DbjJK1KMKDOfiPBhtkwgoKkVmzyyy3y74X6KjrtVwDSWsXfT1liSS2NrEn3JHvOXoNBVSnl1LsXOcZJ5/WcjZDZEoRj0qHPPlnHbKTa9G7GYhy6R7YFZRht1QA4zjaM+4AB+8jdzlYhiC4Btvs42k0qVL5aDC73sxkn1McsZoZoyxbY4pJUipTcm5SdtmOTOFp+Fquos1TEtYwCLnpVWBzC9vfnOy2xbIpRUuzJjzTx3sdblT+BkJw+KcJS8LuZ0dfyW1NttQHqB3B7TsfLhshNRkqYYs0sUt8HTOs4RwVKC9m97rXwGtuO59o/pHYTsw0QSBSEIRgqiPLmnmlvyO2TfUtisjgMpGCp5qRLx8Y6Y/aUFlbI+EYtzpLyMsQm3lxQsnk426UjRhI/KMZVoe6AMXlnM0WuJidIFaBeUK5WwSbItGW+MPK2QNcAtDDxFpSrFiHArRBaUI8S1SFlXZKzUKZweN8Up0lJvuz12og/Pa/Yf5PtPlfGfHOq1BYeY1NfPbXUdmD7bm/M3z/xNPUayGLjtnX8P8Jzapb1Sj6vz+B9fusRDtd60PZnRG+xMpVzzXaw/tIYfxPzrZYSSSSSepJyT9ZppdS9bB63ZGHRlYow/Yiaf/ZSv+T6nZf8NwrjLz8P8n6CdYp4vwJ41a5l0mqYbjgV2nALH9D9yfY+89zYk6ODPHLG0ec1uhyaXJsyfJ+qOOxk5M2MW2ZzSukY7oBjNCsOQhY7RBJk5M25RcpVhZkcx85rkScDuYWCM8GVz+ZeIAQsLRjubtHNYRcDtEA/MZPzI8oH3i8od4eY0kWG+ZQskCod4/LHePgTSKNsQui2Dv8AzAUjvFwFIZugbpIqEfkiHAltK86HmiIUjvDyRC0H4ShbNU1CqCzHCqCzE9Ao5k/aQKhPL/iRrWq0exeXnOtTd9gBYj64xMWaahjcvQ2tHp/b5o4lxuf+/oeC8Z+I21l5cEipMpUvTCfqI7nqZ5uaMpHUGQBPMybk7Z9Hx4444KEFSRQTpnkDz78pvTo3Z1qAwzYwDy5Fdw+4I+8m79PbHP36dJ2Or4iuarE/3Aun3HHQ11omAfnbE1RR1SOQQRyIwQfcET7r4W45/wCXpariPWP9G35tUD1fUEH6z4Q7ZJPckz6N+E3F0BfRsDmwm1T7bwAMfYTb0ORRy0+mcfx3TrLpt1cw5+XmfQy0nfNDJnfPByVPkguZBeamTGJUR5pj84zTIknHaA93uI86AuM0yO0GI7CAbkZmw9o95huEW4RpDoreYo8jvCIkwGJasJmEj2zIZDXIgMdpIErbJfBJQUSgBIA+YExdiKwIxiQI8xCo0AjxM8ygYUTQ5wOPcIXU1qhxlW3rnpnGOf3nOMfUEdMgj5GZE4qUWmZceWeNqUXTR8347wSsBGewHy92UA5tg5YH5x3+J5AVowcqQigkLu52MpPIHHIED3nqfEvhrVKC5bKFmA5+rn13fSeT1NL1ogKbRlvUR+Y9v2GP5nCzRqV1R9A8PyKWL8zf9vcZW1KACT1z/HvOK0bEnH7ATRKGPt06/Amq+ejpcJckPUQFY9GyR84ODPV/hdSW11eP6Utc/ttx/meWvr2nbnOJ9Y/C7gvk0PqnGHu5ID1Wke//AOj/AABM+lxuWVV5HP8AFc8cWkm35ql8WevYScRu0nM9EfOpE7TIIMsmSespIFY8GSQZRjgmUmTzhgywJURO4xOe0D8iUf3hAZG0RysmKPkOSdvzEBM8zQGVRTRW2PEyDR5iaFRriSVkoTLyYmhDAhiSJYEV2JhiXiKMQJYYgojiUxAmzO/SBjz5jIYg/lz3nk/xB4bW9de2vaythcckZm7n36T2WZLKrDa6hh2YAjPeYsmJTjTN3SauWHLHJfR8b0Xhs+ZtsYJ6WYZIA3Dop+87BeBqxFSbncgkhfV6uxxPpWr4Vp7CC9NbEdxORpqa6xiutUH9oC/8TVWhiujsZfHZNXTtfCv7nz3w9+G9jOLNWQiA58tTusfHsT0UT6VaegAAAAAA5AAdAJmXks0z4dNHF0crV+IZ9VJPI+F0l0ECJnulBpsmi0JhERKLSTGOxYlTNjACAGgiZoCEGhULMN0Fjx8QsY9whDZFELccaLMQlTKZhCUDEoliIRVc3xOPntK8wyGjG42bQmKWGaCyJolxNMSYBpW6STRMYERaPdKHTCIiPMeYhEgSsR5izDkOQxJIl5iMAskiIAS8RbYBYisWyVmEB2Qa4eX8y8QjDczN05dcRhfmWYsRDsnbAqYyDAZjAnBhKjjthZw4SYwJlszlBobpAlgSbEG6WsRWUBAlgIYlZjiEzMiVmVDEAEDGBGJclslszIMBKhALAmAMeIAQAZMndBxICxAkbBoGZDMCTChbSwY2mZzFuMB7WWTFmSXizGh0ao2YwZkG5dI1aKhbTUxGRvgWgKioTPfCFhTOPLWEJmZmMxNV6QhICRRgsIRkFyYQgIBKEIRDHKhCQQwMUIRiAShCEQMbSBCEBoEgYQlLsa7D2g3QxQkvooR9v2gIoRoQ4CEJQMBE0ISQHCEIhH//2Q=="),
        Music(id: 2, name: "Hold On", subtitle: "Justin Bieber", image: "https://upload.wikimedia.org/wikipedia/pt/6/64/Hold_On_-_Justin_Bieber.png"),
        Music (id: 3, name: "Yellow", subtitle: "Coldplay", image: "https://i1.sndcdn.com/artworks-000402447507-zyjqsu-t500x500.jpg"),
        Music (id: 4, name: "Teste 4", subtitle: "Teste 4", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png"),
        Music (id: 5, name: "Teste 5", subtitle: "Teste 5", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png"),
        Music (id: 6, name: "Teste 6", subtitle: "Teste 6", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png")
    ]
    var pMusic : Music
    @State private var hackaSong: String = "https://hackatruck.com.br/images/2466"
    var body: some View {
        
         NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("hacka")
                    Text("HackaFM")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    
                    HStack{
                        
                        AsyncImage(
                        url: URL(string: hackaSong),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 40, maxHeight: 40)
                                
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                        Text("HackaSong")
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            
                        Spacer()
                            
                            
                        
                    }
                   
                    ScrollView{
                        ForEach(musicas) { musica in
                            HStack{
                                AsyncImage(
                                    url: URL(string: musica.image),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: 80, maxHeight: 80)
                                            .multilineTextAlignment(.leading)
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                
                                
                                VStack{
                                    NavigationLink(destination: ViewMusic()){
                                        Text(musica.name)
                                            .foregroundColor(.white)
                                            .font(.title3)
                                    }
                                    Text(musica.subtitle)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                    
                                }
                                Spacer()
                                Image(systemName: "ipodshuffle.gen2")
                                    .foregroundColor(.white)
                 
                                }
  
                            }
                        ScrollView(.horizontal) {
                            HStack{
                                AsyncImage(
                                    url: URL(string: nomeImagem),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 200)
                                        
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                
                                AsyncImage(
                                    url: URL(string: nomeImagem),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 200)
                                        
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                AsyncImage(
                                    url: URL(string: nomeImagem),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 200)
                                        
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                            }
                        }
                        }
                    }
                    Spacer()
                }
            }

        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 
        ContentView(pMusic: Music(id: 5, name: "Teste", subtitle: "Teste", image: "hacka") )
    }
}
