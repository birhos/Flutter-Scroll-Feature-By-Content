import 'dart:ui';

import 'package:flutter/material.dart';

/// Core
import '../../../core/removeScrollGlow.dart';

class CustomAlert extends StatelessWidget {
  final String title;
  final String description;

  const CustomAlert({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  Radius get _radius => Radius.circular(10);

  double widthMultiplier(context) => MediaQuery.of(context).size.width / 100;

  double heightMultiplier(context) => MediaQuery.of(context).size.height / 100;

  double screenWidth(context) => MediaQuery.of(context).size.width;

  double screenHeight(context) => MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.of(context).pop();
      },
      child: Container(
        width: double.maxFinite,
        height: double.infinity,
        child: Center(
          child: Container(
            width: screenWidth(context),
            child: Container(
              padding: EdgeInsets.only(
                left: 6.5 * widthMultiplier(context),
                right: 6.5 * widthMultiplier(context),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      // 
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // ************************** **************************

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              _radius,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black87,
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              // ************************** **************************
                              /// Title

                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 3.5 * widthMultiplier(context),
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.purple,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    stops: [
                                      0.1,
                                      0.9,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: _radius,
                                    topRight: _radius,
                                  ),
                                ),
                                child: Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            3.50 * widthMultiplier(context),
                                      ),
                                ),
                              ),

                              // ************************** **************************

                              _buildContainer(context),

                              // ************************** **************************
                            ],
                          ),
                        ),

                        // ************************** **************************
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final TextSpan _textSpan = TextSpan(
          text: description,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w300,
              fontSize: 3.50 * widthMultiplier(context)),
        );

        final TextPainter _textPainter = TextPainter(
          text: _textSpan,
          textDirection: TextDirection.ltr,
          maxLines: 9,
        );

        _textPainter.layout(
          maxWidth: screenWidth(context) - (13.0 * widthMultiplier(context)),
        );

        if (_textPainter.didExceedMaxLines) {
          return Container(
            height: 0.65 * screenWidth(context),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: _radius,
                bottomRight: _radius,
              ),
            ),
            child: ScrollConfiguration(
              behavior: RemoveScrollGlow(),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(2.5 * widthMultiplier(context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // **************************

                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black.withOpacity(0.75),
                              fontWeight: FontWeight.w300,
                              fontSize: 3.50 * widthMultiplier(context),
                            ),
                      ),

                      // **************************
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: _radius,
                bottomRight: _radius,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.5 * widthMultiplier(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // **************************

                  Text(
                    description,
                    textAlign: TextAlign.center,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.black.withOpacity(0.75),
                          fontWeight: FontWeight.w300,
                          fontSize: 3.50 * widthMultiplier(context),
                        ),
                  ),

                  // **************************
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
