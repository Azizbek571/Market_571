import 'package:flutter/material.dart';

class Scrolling extends StatefulWidget {
  final int childrenWidth;
  final List<Widget> children;
  final Duration scrollDuration;
  const Scrolling(
      {super.key,
      required this.childrenWidth,
      required this.children,
      required this.scrollDuration});

  @override
  State<Scrolling> createState() => _ScrollingState();
}

class _ScrollingState extends State<Scrolling>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset>
   _animation = Tween<Offset>(
    begin: Offset.zero,
    // end: Offset.zero,
    end: Offset(-widget.childrenWidth + 10,0),
  ).animate(_controller);
  //  _animation = Tween<Offset>(
  //   begin: Offset.zero,
  //   // end: Offset.zero,
  //   end: Offset(widget.childrenWidth + 10, 0),
  // ).animate(_controller);
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: widget.scrollDuration)
          ..repeat()
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return 
       Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(),
        width: 600,
        child: ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(colors: [
              Colors.transparent,
              Colors.black,
              Colors.black,
              Colors.transparent,
            ], 
            stops: [
              0.1,
              0.3,
              0.7,
              0.9
            ]
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstIn,
          child: Transform.translate(
            // offset:Offset(0.0, 15.0),
            offset: _animation.value,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: widget.children)),
          ),
        ),
      );
    
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  const CardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
     return  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
           
             child: Container(
               color: Color.fromARGB(255, 243, 252, 252),
                                          height: 130,
                                          width: 100,
                                          child: Image.asset(
                                            image,
                                            // fit: BoxFit.cover,
                                          ),
               
                 ),
           ),
         ],
       ),
     );
    
    // Card(
    //         color: Color.fromARGB(255, 243, 252, 252),
      
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Container(
    //         height: 130,
    //         width: 100,
    //         child: Image.asset(image)),
    //   ),
    // );
  }
}
