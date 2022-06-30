import 'package:banner_carousel/banner_carousel.dart';
import 'package:open_sooq/models/banner_images_model.dart';

class HomeBloc {
  List<BannerModel> listBanners = [
    BannerModel(
        imagePath:
            "https://picjumbo.com/wp-content/uploads/the-golden-gate-bridge-sunset-1080x720.jpg",
        id: "1"),
    BannerModel(
        imagePath:
            "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg",
        id: "2"),
    BannerModel(
        imagePath: "https://wallpaperaccess.com/full/19921.jpg", id: "3"),
    BannerModel(
        imagePath:
            "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400",
        id: "4"),
  ];

  List<BannerImagesModel> listOfBanners = [
    BannerImagesModel(
      image:
          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Aventador/6721/Lamborghini-Aventador-SVJ/1621849426405/front-left-side-47.jpg?tr=w-375",
      name: "Cars",
    ),
    BannerImagesModel(
      image:
          "https://mccoymart.com/post/wp-content/uploads/2020/03/Home-Design-and-Plans-According-to-Vastu-Shastra-370x200.jpg",
      name: "Home",
    ),
    BannerImagesModel(
      image:
          "https://www.lux-review.com/wp-content/uploads/2021/09/Motorbike.jpg",
      name: "Motors",
      badge: true,
    ),
    BannerImagesModel(
      image:
          "https://blogs.cdc.gov/wp-content/uploads/sites/6/2020/05/golden_retiver_cat_cropped.jpg",
      name: "pets",
    ),
    BannerImagesModel(
      image:
          "https://media.istockphoto.com/photos/quantum-computing-concept-abstract-glowing-electronic-circuit-picture-id1186902469?k=20&m=1186902469&s=612x612&w=0&h=SNa0XsJ84fz8Vuevij9oFLKUnC2Qn1I3pXYVJXLsLWE=",
      name: "Electronics",
      badge: true,
    ),
    BannerImagesModel(
      image:
          "https://media.istockphoto.com/photos/gamer-work-space-concept-top-view-a-gaming-gear-mouse-keyboard-in-picture-id1170073824?k=20&m=1170073824&s=612x612&w=0&h=lQYUGw9IIqI9bsTrIrS8xCyId2PmmNYPSwB7UNEzssI=",
      name: "Games",
    ),
    BannerImagesModel(
      image:
          "https://media.istockphoto.com/photos/hammer-picture-id183759696?k=20&m=183759696&s=612x612&w=0&h=DRDKhrKEkSMcwMyYN_CnXpC9rhpr6ijtySRDw2Nedxw=",
      name: "Jobs",
    ),
    BannerImagesModel(
      image:
          "https://cdn.pixabay.com/photo/2015/11/03/08/56/service-1019821__340.jpg",
      name: "Services",
      badge: true,
    ),
    BannerImagesModel(
      image:
          "https://img.freepik.com/free-photo/big-hamburger-with-double-beef-french-fries_252907-8.jpg?w=2000",
      name: "Food",
    ),
    BannerImagesModel(
      image:
          "https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg?w=2000",
      name: "Sport",
    ),
    BannerImagesModel(
      image:
          "https://img.freepik.com/free-photo/front-view-stacked-books-graduation-cap-diploma-education-day_23-2149241011.jpg?w=2000",
      name: "Education",
      badge: true,
    ),
    BannerImagesModel(
      image:
          "https://media.istockphoto.com/photos/trendy-lady-adjusting-hair-picture-id1169378200?k=20&m=1169378200&s=612x612&w=0&h=8Ao5aaeygCABOz0AApKsZhjiHxpS7QNsB92rk_DjGW4=",
      name: "Fashions",
    ),
  ];
}
