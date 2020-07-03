import 'package:flutter/material.dart';

/// App
import '../app/widget/anaSayfa/customAlert.dart';
import '../app/widget/anaSayfa/customButton.dart';

const String longDescription = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor nibh nec nisl cursus, congue aliquam arcu posuere. Vivamus suscipit diam ut lorem pulvinar tristique non vitae tortor. Aliquam dui leo, blandit in tristique eget, egestas quis justo. Vestibulum non pellentesque orci, nec vulputate odio. Mauris maximus ac augue non tincidunt. Ut ac viverra ipsum. Vivamus in vehicula metus.

Maecenas interdum dui et ex dignissim, vitae scelerisque lectus maximus. Nulla feugiat facilisis diam, a molestie dui vulputate vel. Donec eget ex ultricies, eleifend risus vitae, venenatis justo. Sed dignissim arcu in lorem tempus congue. Curabitur consectetur dui vel nisl maximus luctus. Integer ullamcorper vestibulum mauris vitae eleifend. Mauris commodo turpis dolor, sit amet porta eros luctus quis. Duis pulvinar in turpis id tincidunt. Curabitur id imperdiet diam, ac tincidunt nibh. Morbi eu massa at lectus interdum volutpat ut sed ante.

Fusce porttitor faucibus mauris, in mattis velit congue eget. Maecenas ultrices eu dolor venenatis dictum. Nullam sit amet lectus eu metus tempus tempor. Maecenas mattis magna sed arcu rhoncus faucibus. Vivamus finibus at ligula et sollicitudin. Integer neque justo, molestie ut finibus ut, scelerisque id lorem. Morbi eu magna vel felis fringilla malesuada a at velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vehicula tristique luctus. Aliquam posuere elit nec odio cursus, eu fringilla ipsum varius. Nunc suscipit velit at purus hendrerit, at consequat velit consectetur. Donec consequat leo eu mi dignissim porta varius id sapien. Aliquam et ligula libero. Ut ante ex, tincidunt et fringilla quis, sodales at arcu. Nulla massa metus, suscipit a arcu quis, dictum tristique sapien. Sed nec magna a est malesuada congue eget non orci.

Nam in dignissim arcu, nec congue enim. Proin et eleifend lorem. Donec ut vestibulum lacus, eget facilisis mi. Suspendisse potenti. Quisque tincidunt vitae nibh nec consequat. Etiam ut erat tellus. Nullam id lectus sed odio dapibus malesuada ac vel urna.

Nunc congue metus egestas sem lobortis consequat. Ut ultrices massa sit amet augue mattis, id varius massa lobortis. Etiam nec euismod velit, a dignissim enim. Aliquam facilisis hendrerit ipsum at cursus. Nam molestie posuere lectus sed rhoncus. Maecenas elit orci, ornare ut lectus nec, fermentum consequat orci. Nunc ut fermentum velit. Mauris condimentum ultrices lorem, ut sodales risus placerat at. Sed ipsum nisi, pulvinar nec enim eget, tristique convallis dui. Praesent nec scelerisque massa. Nunc aliquam, metus ac eleifend consequat, massa velit tempor nisi, quis faucibus tortor augue id dolor.
""";

const String shortDescription = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor nibh nec nisl cursus, congue aliquam arcu posuere. Vivamus suscipit diam ut lorem pulvinar tristique non vitae tortor. Aliquam dui leo, blandit in tristique eget, egestas quis justo. Vestibulum non pellentesque orci, nec vulputate odio. Mauris maximus ac augue non tincidunt. Ut ac viverra ipsum. Vivamus in vehicula metus.

Maecenas interdum dui et ex dignissim, vitae scelerisque lectus maximus. Nulla feugiat facilisis diam, a molestie dui vulputate vel. Donec eget ex ultricies, eleifend risus vitae, venenatis justo.
""";

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                flex: 2,
                child: CustomButton(
                  buttonText: "Long Content",
                  openPage: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomAlert(
                          title: "Lorem Ipsum 1",
                          description: longDescription,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                flex: 2,
                child: CustomButton(
                  buttonText: "Short Content",
                  openPage: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomAlert(
                          title: "Lorem Ipsum 2",
                          description: shortDescription,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
