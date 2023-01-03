import 'dart:ui';

import 'package:flutter/material.dart';



class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool switchOn=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(

        child: Column(
          children: [

            Switch(value: switchOn, onChanged: (value){
              setState(() {
                switchOn=!switchOn;

              });
            })

            // Stack(
            //
            //   children: [
            //     Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKEAawMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQECAwQGBwj/xAA0EAABBAEDAgUBBgUFAAAAAAABAAIDEQQFEiEGMRNBUWFxIhQVUoGRsQcyQqHBFiOi0fD/xAAYAQEAAwEAAAAAAAAAAAAAAAAAAQIDBP/EAB8RAQEBAQACAgMBAAAAAAAAAAABEQISIQMxBEFRQv/aAAwDAQACEQMRAD8A8ZRVSlCAKoQIgEJyt/F0bVMzBlzsXAnmxIr3ysbYFd/mvZaIQEVaSkFEVUQUVCqogtpFcqUgAKtKgIVw5QWgK6lWlUBB0+F1xqOD0x9xY8EDW7HRtyBe8NcSTx2vk8rlgKFDyW8zTM52A7PbhznDadrpxGSwH5WrtST+Ju/talKtFXbVOIWKlLJtVNqYLKRXkKhCYLKSldSILatA0WgB8le3nugptPkf1VRvrhoPwsoarmtHkpwSQ6m1X/Tv3EHxtwfOmU+t26ifS1FCyOwJ+VJ6BHpx1nF++S8aeS7xtt/hNdua3V2WLVW4P3nk/djJW4XiHwQ+ydv58pJ7xa+5rRHft/dXUsjWt8q/RXbFfFWGkpZdibUwYdqtIWYtVC1RgwEKlLMWq3aowaoJBtT+D09lZnTWbr4nhbBiSbHRG9zv5bN9v6hx5qCj2lwBA+VsSGWGIxCWT7O4hzog8hpPqR2J91RMbWIY2ZET5meJE17S9n4m3yPzC7XUNe6T1FuTJkaO+AxweHjBgDOeeTtNCuKu/Neeh7wBt+QCpaKUOxjA07ZJnN8MtaN27tW7uBzz6p39a0+P3fF0Oj9LYc+jjVtX1RuJjEuZsa23hwNC/wA74pc14Yv6TYvg+q2YoZGNcyYufJf1Ofd3/wC45UlqeS/U5xPLFBC5rWxhsMe1hAB5+ey245v7R17QwjVfCW74BHHtfBtPCryWvio0TErTGpDwvZUMXso8TEcWKwsUg6L2WJ0SrYY0SxWbVtuYsexVsEWx5aRS24oXzNLnA7a7haK3NMkeMgMDS5ruHAc8eqyn2Rnjh3xF8DX03uHf1LeGntmxy1h2E/U2z2cpHGxmsaAxoA70t2LHFVXC2nH9XxA6PlTTzuxsoSvn5dufZd77v+11GSMiLGGmPlhlghkMjTFRBcRz9Xn3XP8AUGnS47/vLEc9pA2ylhIIsVfHlXBU1pOouzcXBxs0xDIZjhsVSBzpGNJH1Dyd7HmuVHPVnXjUyemjqXjxDEixdznSybPDAsuPceXyqZWTiYsvhTztY+rord6pjEGkOnaSySORhje11Frr7g/quEzMiXKyHTTu3Pd3Kdd3jq4jq+sdnEI52B8L2vafNptDDS5HSsqTDzoXxk0Xhr2+TgTRXoj8b2WnHfkrEOYQVidj35KVfjlYHxEKbFkTJj8LXMPKmXMB4IpYzi2eCFSreMrjj9ncfp3gA1fqFex5hDnQSP5bTuAtZZYmnaX7nNHbhq52TqdJbqM+HFLCGPbVVI7upVkOsEnbBiNBHBLyaXOdPdQO05pxnwmeIm206iPhdCOs8FrgPskxPFiwK9VpO2kzG+yPUmbGyQQTNfw7Y4tr9VznWGn5uHlx57L+zcBjmAAwu9CR/Yn4XoeAY8zFiyYb2StDm2OaVNXbjQ6VlyZwvGbE7xB6iuwUdWVNjzeTqCPU8JuFrbZQAQ4ZOPW6xfLmng/kuakDRI4MdvaCQ11VuHrXkrpHNc9xYzYwk7WXe0el+asKpbrKs2BGZc/GjaLLpmD/AJBevOx7HZeddEYIzddjLmkiACQfO5o/bcvWXQK/FxbmekK/G9lqy43sp98C15Mcei081sc5Lj+y1zEbXQy43HZahxRfZT5ROPKFVr3N7E16KiLmYrmPLTdA/wCFdNM+aQyOoOP4RSxoiXe9Jdc+C4YmtkGPgRzRx8g+jgP3U1/FCd0fTcUcRsT5LWvI/CGud/gLyhdA3Vp8vpyfEyD/ALcBthDBy4ihZu77qL6ac3ZlQKoiqwAvaC4NBNFxF7fdSyeg/wAKMZjn5k5Z9d7A724NfuvRzFx2XkEnUEWk5TYum8qWLEYxg3mMbpHjhxO4cA8r0Lo/qdms4szM18bMuAnfQoOb+JUvVn26eed9RNGG1GZGo6ZFljDlz8ZuSTQiMo3X6UuN6p6n1Z2pGPBzDBA2YthZBF9UgHmSbsWPJR7+n587TNV1bNEjc4XJ4LaveKLjx5UeE8zxu5j0iTH78LXONz2UB0B1Hmau6XCzWl4hiaWThtX5EO8rXYFgtVvyZcq3POzXz4iItXIIiICIiAsuM0PeQauuAfM2sSJUy4yTxuie5klBwNEBwNKW6W1Y6ZrOPkZEsngNJ8UWaIojn1UKlqLzsyrc9ePWx03UfV02sThv2TF8CGXdDui+rbfY+x86SbrbUvs4g0+DE0+MGy3Hj/m4og2uZRVnxcyZi1+bvd16XpHXehQwQsm0+XHdE3hzGAt3HuQB2+V2eFqmn52LHk42XG6KQW03X7rwFFj1+NL9Vrz+Vf8AUERF0uUREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREH//2Q=="),
            //     Positioned.fill(
            //       child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10,),
            //         child: Container(
            //           height: 200,
            //           width: 300,
            //           color: Colors.orange.withOpacity(2.0),
            //         ),
            //       ),
            //     ),
            //
            //   ],
            // ),




          ],
        ),
      ),
    );
  }
}
