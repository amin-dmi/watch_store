import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

//TODO:Fake Slider List.
final List<String> imgListt = [
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png"
];

int _cureent = 0;

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
    required this.imgList
  });


  final List<String>imgList;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {

  CarouselSliderController _sliderController =CarouselSliderController();

  final List<Widget> Items = imgListt
      .map((e) => Padding(
            padding: const EdgeInsets.all(AppDimens.medium),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.medium),
                child: Image.network(
                  e,
                  fit: BoxFit.cover,
                )),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(               
            items: Items,
             carouselController:_sliderController,       
            options: CarouselOptions(
              autoPlay: true,              
              onPageChanged: (index, reason) {
                setState(() {
                  _cureent = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgListt
                .asMap()
                .entries
                .map((e) => GestureDetector(
                  onTap: () => _sliderController.animateToPage(e.key),
                  child: Container(
                        width: 12.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _cureent == e.key ? Colors.black : Colors.grey),
                      ),
                ))
                .toList(),
          )
        ],
      ),
    );
  }
}
