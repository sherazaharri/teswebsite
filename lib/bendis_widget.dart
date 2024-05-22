import 'dart:math';
import 'dart:async';
import 'base_painter.dart';
import 'base_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'figma_to_flutter.dart' as globals;
import 'package:transparent_pointer/transparent_pointer.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:flutter/material.dart';
class ComponentDescendantNotification extends Notification {
                    final String name;
                    final String id;
                    final dynamic widget;
                    const ComponentDescendantNotification({this.name="", this.id="", this.widget});
                }

        class Node_4_6 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_4_6({this.properties = const {}}) : super();
            final List<Paint> fills = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(73, 101, 81, 1)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M0 0L360 0L360 800L0 800L0 0Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [];
final List<Path> strokeGeometries = [];

            @override
            bool shouldRepaint(Node_4_6 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        canvas.clipPath(fillPath);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_4_7 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_4_7({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(217, 217, 217, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_4_7 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_26 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_26({this.properties = const {}}) : super();
            final List<Paint> fills = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(40, 45, 42, 0.30000001192092896)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M0 0L360 0L360 800L0 800L0 0Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [];
final List<Path> strokeGeometries = [];

            @override
            bool shouldRepaint(Node_5_26 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        canvas.clipPath(fillPath);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_5_44 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_44({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(217, 217, 217, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_44 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_46 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_46({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(0, 0, 0, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_46 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_1_3 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_1_3({this.properties = const {}}) : super();
            final List<Paint> fills = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(214, 135, 135, 1)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M0 0L360 0L360 800L0 800L0 0Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [];
final List<Path> strokeGeometries = [];

            @override
            bool shouldRepaint(Node_1_3 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        canvas.clipPath(fillPath);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_4_5 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_4_5({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(217, 217, 217, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_4_5 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_70 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_70({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_70 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_69 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_69({this.properties = const {}}) : super();
            final List<Paint> fills = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(217, 217, 217, 0)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M60 30C60 46.5685 46.5685 60 30 60C13.4315 60 0 46.5685 0 30C0 13.4315 13.4315 0 30 0C46.5685 0 60 13.4315 60 30Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(255, 255, 255, 1)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> strokeGeometries = [((){
                    var path = parseSvgPathData('M55 30C55 43.8071 43.8071 55 30 55L30 65C49.33 65 65 49.33 65 30L55 30ZM30 55C16.1929 55 5 43.8071 5 30L-5 30C-5 49.33 10.67 65 30 65L30 55ZM5 30C5 16.1929 16.1929 5 30 5L30 -5C10.67 -5 -5 10.67 -5 30L5 30ZM30 5C43.8071 5 55 16.1929 55 30L65 30C65 10.67 49.33 -5 30 -5L30 5Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];

            @override
            bool shouldRepaint(Node_5_69 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        path = strokeAlign('OUTSIDE', path, fillPath, 5);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_5_76 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_76({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_76 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_73 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_73({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_73 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_I5_73_5_69 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_I5_73_5_69({this.properties = const {}}) : super();
            final List<Paint> fills = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(83, 83, 83, 1)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M60 30C60 46.5685 46.5685 60 30 60C13.4315 60 0 46.5685 0 30C0 13.4315 13.4315 0 30 0C46.5685 0 60 13.4315 60 30Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [
            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(255, 255, 255, 1)
                ..style = PaintingStyle.fill 
            ,];
final List<Path> strokeGeometries = [((){
                    var path = parseSvgPathData('M55 30C55 43.8071 43.8071 55 30 55L30 65C49.33 65 65 49.33 65 30L55 30ZM30 55C16.1929 55 5 43.8071 5 30L-5 30C-5 49.33 10.67 65 30 65L30 55ZM5 30C5 16.1929 16.1929 5 30 5L30 -5C10.67 -5 -5 10.67 -5 30L5 30ZM30 5C43.8071 5 55 16.1929 55 30L65 30C65 10.67 49.33 -5 30 -5L30 5Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];

            @override
            bool shouldRepaint(Node_I5_73_5_69 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        path = strokeAlign('OUTSIDE', path, fillPath, 5);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_5_77 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_77({this.properties = const {}}) : super();
            final List<Paint> fills = [];
final List<Path> fillGeometries = [((){
                    var path = parseSvgPathData('M0 0L360 0L360 216L0 216L0 0Z');
                    path.fillType = PathFillType.nonZero;
                    return path;
                })(),];
final List<Paint> strokes = [];
final List<Path> strokeGeometries = [];

            @override
            bool shouldRepaint(Node_5_77 oldDelegate) => true;
            @override
            void paint(Canvas canvas, Size size) {
                if(fills.length > 0) {
                    var paint = fills[0];
                    for (var i=0; i<fillGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = resizePathIfNeeded(fillGeometries[i]);
                        canvas.drawPath(path, paint);
                        if(fills.length > i + 1) paint = fills[i + 1];
                        canvas.restore();
                    }
                    
                }
                if(strokes.length > 0) {
                    var paint = strokes[0];
                    for (var i=0; i<strokeGeometries.length; i++) {
                        canvas.saveLayer(Rect.largest, Paint());
                        var path = strokeGeometries[i];
                        var fillPath = fillGeometries.length > i ? fillGeometries[i] : path;
                        path = resizePathIfNeeded(path);
                        canvas.clipPath(fillPath);
                        canvas.drawPath(path, paint);
                        if(strokes.length > i + 1) paint = strokes[i + 1];
                        canvas.restore();
                    }
                }
            }
        }
        

        class Node_5_90 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_90({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_90 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_87 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_87({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_87 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_I5_87_5_78 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_I5_87_5_78({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(255, 0, 0, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_I5_87_5_78 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_88 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_88({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_88 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_I5_88_5_80 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_I5_88_5_80({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(1, 133, 255, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_I5_88_5_80 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_89 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_89({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_89 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_I5_89_5_82 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_I5_89_5_82({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(15, 228, 23, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_I5_89_5_82 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_84 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_84({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_84 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_78 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_78({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(255, 0, 0, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_78 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_85 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_85({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_85 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_80 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_80({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(1, 133, 255, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_80 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_86 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_86({this.properties = const {}}) : super();
            final List<Paint> fills = [
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_86 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0))) 
                        ..fillType = PathFillType.evenOdd;
                Path strokePath = Path()
                        ..addRect(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5))) 
                        ..fillType = PathFillType.evenOdd;
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Node_5_82 extends BasePainter {
            Map<String, dynamic> properties = {};
            Node_5_82({this.properties = const {}}) : super();
            final List<Paint> fills = [

            Paint()
                ..blendMode = BlendMode.srcOver
                ..color = Color.fromRGBO(15, 228, 23, 1)
                ..style = PaintingStyle.fill 
            ,
];
            final List<Paint> strokes = [
];
            
            @override
            bool shouldRepaint(Node_5_82 oldDelegate) => true;

            @override
            void paint(Canvas canvas, Size size) {
                double w = properties.containsKey('width') ? properties['width'].toDouble() : size.width;
                double h = properties.containsKey('height') ? properties['height'].toDouble() : size.height;
                double x = properties.containsKey('x') ? properties['x'].toDouble() : 0;
                double y = properties.containsKey('y') ? properties['y'].toDouble() : 0;
                Path path = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - 0, 0 - 0), Offset(w + 0, h + 0)));
                Path strokePath = RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(50),
                        ),
                        side: BorderSide()
                    ).getInnerPath(Rect.fromPoints(Offset(0 - -0.5, 0 - -0.5), Offset(w + -0.5, h + -0.5)));
                if(x != 0 || y != 0) {
                    path = movePath(path, x, y);
                    strokePath = movePath(strokePath, x, y);
                }
                for (var i=fills.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = fills[i];
                    canvas.drawPath(path, paint);
                    canvas.restore();
                }
                for (var i=strokes.length-1; i>=0; i=i-1) {
                    canvas.saveLayer(Rect.largest, Paint());
                    var paint = strokes[i];
                    canvas.drawPath(strokePath, paint);
                    canvas.restore();
                }
                if(fills.length == 0 && strokes.length == 0){
                    var paint = Paint()
                        ..blendMode = BlendMode.srcOver
                        ..color = Color.fromRGBO(0, 0, 0, 0)
                        ..style = PaintingStyle.fill;
                    canvas.drawPath(path, paint);
                }
            }
        }
        

        class Widget_5_73 extends StatefulWidget {
            
            
        final String nodeName = r'''Component 2''';
        final String name = r'''c_ysf5l2l6zimak26yo70x06''';
        final String componentType = r'''Button''';
        final Map<String, dynamic> properties;
        
        Widget_5_73({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_73 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_73(properties:properties);
        }

            @override
                _Widget_5_73State createState() => _Widget_5_73State();
            }
            class _Widget_5_73State extends BaseState<Widget_5_73> {
                bool visible = true;
                String componentState = 'default';
                String defaultState = 'default';
                Map<String, Function> componentStates = {
                    'default':()=>Widget_5_70(key:UniqueKey(), properties: {"width":60, "height":60},),
                };
                MouseCursor cursor = MouseCursor.defer;
            
            @override
        void initState() {
            super.initState();
            
            WidgetsBinding.instance.addPostFrameCallback((_){
                
                globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 2', '');
        
            });
        }
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }
            @override
            Widget build(BuildContext context) {
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 2''', id: '5:73', widget: this, componentName:r'''c_ysf5l2l6zimak26yo70x06''');
                ComponentDescendantNotification(name: r'''Component 2''', id: '5:73', widget: this)..dispatch(context);
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                if(properties.containsKey('componentState')){
                    componentState = properties['componentState'] as String;
                }
                if(properties.containsKey('defaultState')){
                    componentState = properties['defaultState'] as String;
                }
                return Visibility(
                    visible: visible, 
                    child: NotificationListener<ComponentDescendantNotification>(
                        onNotification: onDescendantNotify,
                        child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                    // trigger event
                                    globals.triggerComponentEvent('tap', this.widget.hashCode, r'''Component 2''');
                                },
                                onTapDown:(TapDownDetails details) {
                                    setState(() {
                                        if(defaultState != 'disabled'){
                                            if(defaultState == 'selected' && componentStates.containsKey('pressedselected')){
                                                if(componentState != 'pressedselected') componentState = 'pressedselected';
                                            }else if(componentStates.containsKey('pressed')){
                                                if(componentState != 'pressed') componentState = 'pressed';
                                            }
                                        }
                                    });
                                },
                                onTapUp:(TapUpDetails details) {
                                    setState(() {
                                        if(componentState != defaultState) componentState = defaultState;
                                    });

                                    // trigger event
                                    globals.triggerComponentEvent('tapUp', this.widget.hashCode, r'''Component 2''');

                                    
                if(triggersBuiltInEvents) showGeneralDialog(
                    context: context,
                    useRootNavigator:false,
                    barrierLabel:'Discard',
                    barrierDismissible:true,
                    barrierColor: Color(0x00000000),
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Widget_5_26();
                    }
                );
                                },
                                child: FocusableActionDetector(
                                    onShowHoverHighlight: (val){
                                        if(val){
                                            setState((){
                                                if(componentStates.containsKey('hover') && defaultState != 'disabled'){
                                                    if(componentState != 'hover') componentState = 'hover';
                                                }
                                            });
                                        }else{
                                            setState(() { 
                                                if(componentState != defaultState && componentStates.containsKey('hover')) componentState = defaultState;
                                            });
                                        }
                                    },
                                    onShowFocusHighlight: (val){                               
                                        if(val){
                                            setState((){
                                                if(componentStates.containsKey('hover') && defaultState != 'disabled'){
                                                    if(componentState != 'hover') componentState = 'hover';
                                                }
                                            });
                                        }
                                        else{
                                            setState(() { 
                                                if(componentState != defaultState && componentStates.containsKey('hover')) componentState = defaultState;
                                            });
                                        }

                                    },
                                    onFocusChange: (val) {
                                    },
                                    actions: {
                                        ActivateIntent: CallbackAction<Intent>(onInvoke: (_) {
                                            globals.triggerComponentEvent('tap', this.widget.hashCode, r'''Component 2''');
                                            
                if(triggersBuiltInEvents) showGeneralDialog(
                    context: context,
                    useRootNavigator:false,
                    barrierLabel:'Discard',
                    barrierDismissible:true,
                    barrierColor: Color(0x00000000),
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Widget_5_26();
                    }
                );

                                        }),
                                      },
                                      mouseCursor: this.cursor,
                                    child:
                                IgnorePointer(
                                    ignoring: true,
                                    child: componentStates[componentState]!()
                                ),),
                            ),
                        
                    )
                );
            }
            bool onDescendantNotify(ComponentDescendantNotification notification) {
                
                
                if(properties.containsKey(notification.name)){
                    notification.widget.setState(()=>notification.widget.properties = properties[notification.name] as Map<String, dynamic>);
                }
                return true;
            }
        }
        

        class Widget_5_87 extends StatefulWidget {
            
        final String nodeName = r'''Component 3''';
        final String name = r'''Component 3''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_87({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_87 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_87(properties:properties);
        }
            @override
                _Widget_5_87State createState() => _Widget_5_87State(this.properties);
            }
            class _Widget_5_87State extends BaseState<Widget_5_87> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 3''', id: '5:87', componentName:r'''Component 3''');
                
                _Widget_5_87State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 3''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 3');
            }            
            
            var painter = Node_5_87();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 3''', id: '5:87', widget: this, componentName:r'''Component 3''');
                ComponentDescendantNotification(name: r'''Component 3''', id: '5:87', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_87_5_78())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_87_5_79()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_88 extends StatefulWidget {
            
        final String nodeName = r'''Component 4''';
        final String name = r'''Component 4''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_88({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_88 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_88(properties:properties);
        }
            @override
                _Widget_5_88State createState() => _Widget_5_88State(this.properties);
            }
            class _Widget_5_88State extends BaseState<Widget_5_88> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 4''', id: '5:88', componentName:r'''Component 4''');
                
                _Widget_5_88State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 4''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 4');
            }            
            
            var painter = Node_5_88();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 4''', id: '5:88', widget: this, componentName:r'''Component 4''');
                ComponentDescendantNotification(name: r'''Component 4''', id: '5:88', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_88_5_80())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_88_5_81()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_89 extends StatefulWidget {
            
        final String nodeName = r'''Component 5''';
        final String name = r'''Component 5''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_89({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_89 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_89(properties:properties);
        }
            @override
                _Widget_5_89State createState() => _Widget_5_89State(this.properties);
            }
            class _Widget_5_89State extends BaseState<Widget_5_89> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 5''', id: '5:89', componentName:r'''Component 5''');
                
                _Widget_5_89State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 5''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 5');
            }            
            
            var painter = Node_5_89();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 5''', id: '5:89', widget: this, componentName:r'''Component 5''');
                ComponentDescendantNotification(name: r'''Component 5''', id: '5:89', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_89_5_82())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_I5_89_5_83()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_4_6 extends StatefulWidget {
            
        final String nodeName = r'''PAGE2''';
        final String name = r'''Android Large - 2''';
        final String componentType = r'''Screens''';
        final Map<String, dynamic> properties;
        
        Widget_4_6({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_4_6 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_4_6(properties:properties);
        }
            @override
                _Widget_4_6State createState() => _Widget_4_6State(this.properties);
            }
            class _Widget_4_6State extends BaseState<Widget_4_6> {
                bool visible = true;
                bool isLoaded = false;
                double width = 360;
                double height = 800;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''PAGE2''', id: '4:6', componentName:r'''PAGE2''');
                
                _Widget_4_6State(Map<String, dynamic> props){
                    globals.elementInstances.clear();
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
                        globals.currentScreenName = r'''PAGE2''';
                        elem = globals.Elem(name: r'''PAGE2''', id: '4:6', widget: this, componentName:r'''PAGE2''');
                        globals.triggerEvent('pageLoad', r'''PAGE2''', {'target':elem});
                        WidgetsBinding.instance.addPostFrameCallback((_) => widgetDidLoad());
                        
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''PAGE2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'PAGE2');
            }            
            
            var painter = Node_4_6();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                        var mq = MediaQuery.of(context);
                        this.width = mq.size.width;
                        this.height = mq.size.height;
                        m['width'] = this.width;
                        m['height'] = this.height;
                        
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''PAGE2''', id: '4:6', widget: this, componentName:r'''PAGE2''');
                ComponentDescendantNotification(name: r'''PAGE2''', id: '4:6', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                           Scaffold(
                             backgroundColor: Color.fromRGBO(73, 101, 81, 0),                      
                             body: SafeArea(
                                 child: 
                             
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 360,
                                height: 800,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.hardEdge,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.005555555555555536, -0.043749999999999956),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.005555555555555536, -0.043749999999999956),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 326, d = 22.5, o = 20;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2.4024024024024024, o = 2.1739130434782608;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 326, d = 20, o = 22.5;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2.1739130434782608, o = 2.4024024024024024;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 326,
                                                                        height: 99,
                                                                        
                                                                        child: Widget_4_7())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.019444444444444486, -0.04625000000000001),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.019444444444444486, -0.04625000000000001),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 275, d = 9.23076923076923, o = 7.826086956521739;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 2.2792022792022792, o = 2.0618556701030926;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 275, d = 7.826086956521739, o = 9.23076923076923;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 2.0618556701030926, o = 2.2792022792022792;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 275,
                                                                        height: 61,
                                                                        
                                                                        child: Widget_4_8()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        ),
                             ),
                                    
                );
            }
        }
        

        class Widget_4_7 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 1''';
        final String name = r'''Rectangle 1''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_4_7({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_4_7 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_4_7(properties:properties);
        }
            @override
                _Widget_4_7State createState() => _Widget_4_7State(this.properties);
            }
            class _Widget_4_7State extends BaseState<Widget_4_7> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 1''', id: '4:7', componentName:r'''Rectangle 1''');
                
                _Widget_4_7State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 1');
            }            
            
            var painter = Node_4_7();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 1''', id: '4:7', widget: this, componentName:r'''Rectangle 1''');
                ComponentDescendantNotification(name: r'''Rectangle 1''', id: '4:7', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_1_3(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 326,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_4_8 extends StatefulWidget {
            
        final String nodeName = r'''To Screen 1''';
        final String name = r'''To Screen 1''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_4_8({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_4_8 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_4_8(properties:properties);
        }
            @override
                _Widget_4_8State createState() => _Widget_4_8State(this.properties);
            }
            class _Widget_4_8State extends BaseState<Widget_4_8> {
                bool visible = true;
                bool isLoaded = false;
                double width = 275;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''To Screen 1''', id: '4:8', componentName:r'''To Screen 1''');
                
                _Widget_4_8State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''To Screen 1''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''To Screen 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'To Screen 1');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''To Screen 1''', id: '4:8', widget: this, componentName:r'''To Screen 1''');
                ComponentDescendantNotification(name: r'''To Screen 1''', id: '4:8', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_1_3(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 275,
                                height: 61,
                                alignment: Alignment(-0.019444444444444486, -0.04625000000000001),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_26 extends StatefulWidget {
            
        final String nodeName = r'''POPUP''';
        final String name = r'''POPUP''';
        final String componentType = r'''Popups''';
        final Map<String, dynamic> properties;
        
        Widget_5_26({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_26 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_26(properties:properties);
        }
            @override
                _Widget_5_26State createState() => _Widget_5_26State(this.properties);
            }
            class _Widget_5_26State extends BaseState<Widget_5_26> {
                bool visible = true;
                bool isLoaded = false;
                double width = 360;
                double height = 800;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''POPUP''', id: '5:26', componentName:r'''POPUP''');
                
                _Widget_5_26State(Map<String, dynamic> props){
                    globals.elementInstances.clear();
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
                        globals.currentScreenName = r'''POPUP''';
                        elem = globals.Elem(name: r'''POPUP''', id: '5:26', widget: this, componentName:r'''POPUP''');
                        globals.triggerEvent('pageLoad', r'''POPUP''', {'target':elem});
                        WidgetsBinding.instance.addPostFrameCallback((_) => widgetDidLoad());
                        
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''POPUP''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'POPUP');
            }            
            
            var painter = Node_5_26();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                        var mq = MediaQuery.of(context);
                        this.width = mq.size.width;
                        this.height = mq.size.height;
                        m['width'] = this.width;
                        m['height'] = this.height;
                        
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''POPUP''', id: '5:26', widget: this, componentName:r'''POPUP''');
                ComponentDescendantNotification(name: r'''POPUP''', id: '5:26', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                           Scaffold(
                             backgroundColor: Color.fromRGBO(40, 45, 42, 0.30000001192092896),                      
                             body: SafeArea(
                                 child: 
                             
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 360,
                                height: 800,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.hardEdge,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0.005555555555555536, -0.02375000000000005),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0.005555555555555536, -0.02375000000000005),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 328, d = 21.176470588235293, o = 24;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 353, d = 3.7383177570093458, o = 3.4334763948497855;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 328, d = 24, o = 21.176470588235293;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 353, d = 3.4334763948497855, o = 3.7383177570093458;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 328,
                                                                        height: 353,
                                                                        
                                                                        child: Widget_5_44())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.008333333333333304, -0.03249999999999997),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.008333333333333304, -0.03249999999999997),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 277, d = 9, o = 8.372093023255815;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 218, d = 2.8776978417266186, o = 2.6315789473684212;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 277, d = 8.372093023255815, o = 9;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 218, d = 2.6315789473684212, o = 2.8776978417266186;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 277,
                                                                        height: 218,
                                                                        
                                                                        child: Widget_5_45())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0.005555555555555536, 0.12375000000000003),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0.005555555555555536, 0.12375000000000003),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 286, d = 9.473684210526315, o = 10;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2, o = 2.6578073089700998;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 286, d = 10, o = 9.473684210526315;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2.6578073089700998, o = 2;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 286,
                                                                        height: 99,
                                                                        
                                                                        child: Widget_5_46())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0.002777777777777768, 0.12375000000000003),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0.002777777777777768, 0.12375000000000003),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 197, d = 4.390243902439025, o = 4.444444444444445;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 1.909307875894988, o = 2.5;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 197, d = 4.444444444444445, o = 4.390243902439025;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 2.5, o = 1.909307875894988;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 197,
                                                                        height: 61,
                                                                        
                                                                        child: Widget_5_47()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        ),
                             ),
                                    
                );
            }
        }
        

        class Widget_5_44 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 2''';
        final String name = r'''Rectangle 2''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_44({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_44 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_44(properties:properties);
        }
            @override
                _Widget_5_44State createState() => _Widget_5_44State(this.properties);
            }
            class _Widget_5_44State extends BaseState<Widget_5_44> {
                bool visible = true;
                bool isLoaded = false;
                double width = 328;
                double height = 353;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 2''', id: '5:44', componentName:r'''Rectangle 2''');
                
                _Widget_5_44State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 2');
            }            
            
            var painter = Node_5_44();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 2''', id: '5:44', widget: this, componentName:r'''Rectangle 2''');
                ComponentDescendantNotification(name: r'''Rectangle 2''', id: '5:44', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 328,
                                height: 353,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_45 extends StatefulWidget {
            
        final String nodeName = r'''Popup!!!''';
        final String name = r'''Popup!!!''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_45({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_45 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_45(properties:properties);
        }
            @override
                _Widget_5_45State createState() => _Widget_5_45State(this.properties);
            }
            class _Widget_5_45State extends BaseState<Widget_5_45> {
                bool visible = true;
                bool isLoaded = false;
                double width = 277;
                double height = 218;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Popup!!!''', id: '5:45', componentName:r'''Popup!!!''');
                
                _Widget_5_45State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''Popup!!!''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.center
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((218/60.5113639831543).floor()) <=1 ? 1 : (218/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Popup!!!''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Popup!!!');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Popup!!!''', id: '5:45', widget: this, componentName:r'''Popup!!!''');
                ComponentDescendantNotification(name: r'''Popup!!!''', id: '5:45', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 277,
                                height: 218,
                                alignment: Alignment(-0.008333333333333304, -0.03249999999999997),
                                child: Align(
                                    alignment: Alignment(0, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_46 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 2''';
        final String name = r'''Rectangle 2''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_46({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_46 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_46(properties:properties);
        }
            @override
                _Widget_5_46State createState() => _Widget_5_46State(this.properties);
            }
            class _Widget_5_46State extends BaseState<Widget_5_46> {
                bool visible = true;
                bool isLoaded = false;
                double width = 286;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 2''', id: '5:46', componentName:r'''Rectangle 2''');
                
                _Widget_5_46State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 2');
            }            
            
            var painter = Node_5_46();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 2''', id: '5:46', widget: this, componentName:r'''Rectangle 2''');
                ComponentDescendantNotification(name: r'''Rectangle 2''', id: '5:46', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_1_3(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 286,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_47 extends StatefulWidget {
            
        final String nodeName = r'''Go Back''';
        final String name = r'''Go Back''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_47({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_47 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_47(properties:properties);
        }
            @override
                _Widget_5_47State createState() => _Widget_5_47State(this.properties);
            }
            class _Widget_5_47State extends BaseState<Widget_5_47> {
                bool visible = true;
                bool isLoaded = false;
                double width = 197;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Go Back''', id: '5:47', componentName:r'''Go Back''');
                
                _Widget_5_47State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''Go Back''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(255, 255, 255, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Go Back''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Go Back');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Go Back''', id: '5:47', widget: this, componentName:r'''Go Back''');
                ComponentDescendantNotification(name: r'''Go Back''', id: '5:47', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_1_3(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 197,
                                height: 61,
                                alignment: Alignment(0.002777777777777768, 0.12375000000000003),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_1_3 extends StatefulWidget {
            
        final String nodeName = r'''PAGE1''';
        final String name = r'''Android Large - 1''';
        final String componentType = r'''Screens''';
        final Map<String, dynamic> properties;
        
        Widget_1_3({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_1_3 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_1_3(properties:properties);
        }
            @override
                _Widget_1_3State createState() => _Widget_1_3State(this.properties);
            }
            class _Widget_1_3State extends BaseState<Widget_1_3> {
                bool visible = true;
                bool isLoaded = false;
                double width = 360;
                double height = 800;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''PAGE1''', id: '1:3', componentName:r'''PAGE1''');
                
                _Widget_1_3State(Map<String, dynamic> props){
                    globals.elementInstances.clear();
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
                        globals.currentScreenName = r'''PAGE1''';
                        elem = globals.Elem(name: r'''PAGE1''', id: '1:3', widget: this, componentName:r'''PAGE1''');
                        globals.triggerEvent('pageLoad', r'''PAGE1''', {'target':elem});
                        WidgetsBinding.instance.addPostFrameCallback((_) => widgetDidLoad());
                        
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''PAGE1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'PAGE1');
            }            
            
            var painter = Node_1_3();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                        var mq = MediaQuery.of(context);
                        this.width = mq.size.width;
                        this.height = mq.size.height;
                        m['width'] = this.width;
                        m['height'] = this.height;
                        
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''PAGE1''', id: '1:3', widget: this, componentName:r'''PAGE1''');
                ComponentDescendantNotification(name: r'''PAGE1''', id: '1:3', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                           Scaffold(
                             backgroundColor: Color.fromRGBO(214, 135, 135, 0),                      
                             body: SafeArea(
                                 child: 
                             
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 360,
                                height: 800,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.hardEdge,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.005555555555555536, -0.043749999999999956),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.005555555555555536, -0.043749999999999956),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 326, d = 22.5, o = 20;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2.4024024024024024, o = 2.1739130434782608;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 326, d = 20, o = 22.5;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 99, d = 2.1739130434782608, o = 2.4024024024024024;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 326,
                                                                        height: 99,
                                                                        
                                                                        child: Widget_4_5())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, -0.04625000000000001),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, -0.04625000000000001),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 282, d = 9.23076923076923, o = 9.23076923076923;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 2.2792022792022792, o = 2.0618556701030926;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 282, d = 9.23076923076923, o = 9.23076923076923;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 61, d = 2.0618556701030926, o = 2.2792022792022792;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 282,
                                                                        height: 61,
                                                                        
                                                                        child: Widget_1_4())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.005555555555555536, 0.2649999999999999),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.005555555555555536, 0.2649999999999999),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 60, d = 2.4161073825503356, o = 2.384105960264901;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 60, d = 1.680672268907563, o = 3.0303030303030303;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 60, d = 2.384105960264901, o = 2.4161073825503356;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 60, d = 3.0303030303030303, o = 1.680672268907563;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 60,
                                                                        height: 60,
                                                                        
                                                                        child: Widget_5_70())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.005555555555555536, 0.5249999999999999),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.005555555555555536, 0.5249999999999999),
                                                                        margin: EdgeInsets.fromLTRB((){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 60, d = 2.4161073825503356, o = 2.384105960264901;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 60, d = 1.3793103448275863, o = 5;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }(), (){
                            double s = constraints.widthConstraints().maxWidth, r = 0, n = 60, d = 2.384105960264901, o = 2.4161073825503356;
                            r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                            return r as double;
                        }(), (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 60, d = 5, o = 1.3793103448275863;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 60,
                                                                        height: 60,
                                                                        
                                                                        child: Widget_5_76())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, -0.73),
                                                                        minWidth: 360 + 0, maxWidth: 360 + 0,
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, -0.73),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, (){
                        double s = constraints.heightConstraints().maxHeight, r = 0, n = 216, d = 1.36986301369863, o = double.infinity;
                        r = (((s / d + s / o + n) > s) ? (s - n) / d : r = s / d).abs();
                        return r as double;
                    }()),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                                                        width: 360,
                                                                        height: 216,
                                                                        
                                                                        child: 
                                                                    TransparentPointer(
                                                                        child: Widget_5_77()
                                                                    )
                                                                    ))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        ),
                             ),
                                    
                );
            }
        }
        

        class Widget_4_5 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 1''';
        final String name = r'''Rectangle 1''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_4_5({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_4_5 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_4_5(properties:properties);
        }
            @override
                _Widget_4_5State createState() => _Widget_4_5State(this.properties);
            }
            class _Widget_4_5State extends BaseState<Widget_4_5> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 1''', id: '4:5', componentName:r'''Rectangle 1''');
                
                _Widget_4_5State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 1');
            }            
            
            var painter = Node_4_5();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 1''', id: '4:5', widget: this, componentName:r'''Rectangle 1''');
                ComponentDescendantNotification(name: r'''Rectangle 1''', id: '4:5', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 326,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_1_4 extends StatefulWidget {
            
        final String nodeName = r'''To Screen 2''';
        final String name = r'''To Screen 2''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_1_4({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_1_4 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_1_4(properties:properties);
        }
            @override
                _Widget_1_4State createState() => _Widget_1_4State(this.properties);
            }
            class _Widget_1_4State extends BaseState<Widget_1_4> {
                bool visible = true;
                bool isLoaded = false;
                double width = 282;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''To Screen 2''', id: '1:4', componentName:r'''To Screen 2''');
                
                _Widget_1_4State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''To Screen 2''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''To Screen 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'To Screen 2');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''To Screen 2''', id: '1:4', widget: this, componentName:r'''To Screen 2''');
                ComponentDescendantNotification(name: r'''To Screen 2''', id: '1:4', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 282,
                                height: 61,
                                alignment: Alignment(0, -0.04625000000000001),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_70 extends StatefulWidget {
            
        final String nodeName = r'''Component 1''';
        final String name = r'''c_ysf5l2l6zimak26yo70x06''';
        final String componentType = r'''Button''';
        final Map<String, dynamic> properties;
        
        Widget_5_70({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_70 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_70(properties:properties);
        }
            @override
                _Widget_5_70State createState() => _Widget_5_70State(this.properties);
            }
            class _Widget_5_70State extends BaseState<Widget_5_70> {
                bool visible = true;
                bool isLoaded = false;
                double width = 60;
                double height = 60;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 1''', id: '5:70', componentName:r'''Component 1''');
                
                _Widget_5_70State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 1');
            }            
            
            var painter = Node_5_70();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 1''', id: '5:70', widget: this, componentName:r'''Component 1''');
                ComponentDescendantNotification(name: r'''Component 1''', id: '5:70', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
                if(triggersBuiltInEvents) showGeneralDialog(
                    context: context,
                    useRootNavigator:false,
                    barrierLabel:'Discard',
                    barrierDismissible:true,
                    barrierColor: Color(0x00000000),
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Widget_5_26();
                    }
                );
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 60,
                                height: 60,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_69())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, -0.1166666666666667),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, -0.1166666666666667),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.5294117647058822, 0, constraints.widthConstraints().maxWidth / 3.5294117647058822, constraints.heightConstraints().maxHeight / 8.571428571428571),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_52()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_69 extends StatefulWidget {
            
        final String nodeName = r'''Ellipse 1''';
        final String name = r'''Ellipse 1''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_69({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_69 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_69(properties:properties);
        }
            @override
                _Widget_5_69State createState() => _Widget_5_69State(this.properties);
            }
            class _Widget_5_69State extends BaseState<Widget_5_69> {
                bool visible = true;
                bool isLoaded = false;
                double width = 60;
                double height = 60;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Ellipse 1''', id: '5:69', componentName:r'''Ellipse 1''');
                
                _Widget_5_69State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Ellipse 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Ellipse 1');
            }            
            
            var painter = Node_5_69();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Ellipse 1''', id: '5:69', widget: this, componentName:r'''Ellipse 1''');
                ComponentDescendantNotification(name: r'''Ellipse 1''', id: '5:69', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_52 extends StatefulWidget {
            
        final String nodeName = r'''?''';
        final String name = r'''?''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_52({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_52 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_52(properties:properties);
        }
            @override
                _Widget_5_52State createState() => _Widget_5_52State(this.properties);
            }
            class _Widget_5_52State extends BaseState<Widget_5_52> {
                bool visible = true;
                bool isLoaded = false;
                double width = 26;
                double height = 53;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''?''', id: '5:52', componentName:r'''?''');
                
                _Widget_5_52State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''?''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((53/59.3011360168457).floor()) <=1 ? 1 : (53/59.3011360168457).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 49,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.0816326530612246,
                                color: Color.fromRGBO(255, 255, 255, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''?''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, '?');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''?''', id: '5:52', widget: this, componentName:r'''?''');
                ComponentDescendantNotification(name: r'''?''', id: '5:52', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, -0.1166666666666667),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_5_76 extends StatefulWidget {
            
        final String nodeName = r'''Component 2''';
        final String name = r'''c_g5vdhfb3grmdbnbo3mz7cq''';
        final String componentType = r'''Button''';
        final Map<String, dynamic> properties;
        
        Widget_5_76({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_76 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_76(properties:properties);
        }
            @override
                _Widget_5_76State createState() => _Widget_5_76State(this.properties);
            }
            class _Widget_5_76State extends BaseState<Widget_5_76> {
                bool visible = true;
                bool isLoaded = false;
                double width = 60;
                double height = 60;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 2''', id: '5:76', componentName:r'''Component 2''');
                
                _Widget_5_76State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 2');
            }            
            
            var painter = Node_5_76();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 2''', id: '5:76', widget: this, componentName:r'''Component 2''');
                ComponentDescendantNotification(name: r'''Component 2''', id: '5:76', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 60,
                                height: 60,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_73()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_I5_73_5_69 extends StatefulWidget {
            
        final String nodeName = r'''Ellipse 1''';
        final String name = r'''Ellipse 1''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_73_5_69({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_73_5_69 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_73_5_69(properties:properties);
        }
            @override
                _Widget_I5_73_5_69State createState() => _Widget_I5_73_5_69State(this.properties);
            }
            class _Widget_I5_73_5_69State extends BaseState<Widget_I5_73_5_69> {
                bool visible = true;
                bool isLoaded = false;
                double width = 60;
                double height = 60;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Ellipse 1''', id: 'I5:73;5:69', componentName:r'''Ellipse 1''');
                
                _Widget_I5_73_5_69State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Ellipse 1''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Ellipse 1');
            }            
            
            var painter = Node_I5_73_5_69();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Ellipse 1''', id: 'I5:73;5:69', widget: this, componentName:r'''Ellipse 1''');
                ComponentDescendantNotification(name: r'''Ellipse 1''', id: 'I5:73;5:69', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_I5_73_5_52 extends StatefulWidget {
            
        final String nodeName = r'''?''';
        final String name = r'''?''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_73_5_52({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_73_5_52 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_73_5_52(properties:properties);
        }
            @override
                _Widget_I5_73_5_52State createState() => _Widget_I5_73_5_52State(this.properties);
            }
            class _Widget_I5_73_5_52State extends BaseState<Widget_I5_73_5_52> {
                bool visible = true;
                bool isLoaded = false;
                double width = 26;
                double height = 53;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''?''', id: 'I5:73;5:52', componentName:r'''?''');
                
                _Widget_I5_73_5_52State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''?''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((53/59.3011360168457).floor()) <=1 ? 1 : (53/59.3011360168457).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 49,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.0816326530612246,
                                color: Color.fromRGBO(255, 255, 255, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''?''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, '?');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''?''', id: 'I5:73;5:52', widget: this, componentName:r'''?''');
                ComponentDescendantNotification(name: r'''?''', id: 'I5:73;5:52', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, -0.1166666666666667),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                );
            }
        }
        

        
        class Widget_5_77Default extends StatefulWidget {
            
        final String nodeName = r'''ListViewDefault''';
        final String name = r'''Frame 1''';
        final String componentType = r'''ListViews''';
        final Map<String, dynamic> properties;
        final Widget child;
        Widget_5_77Default({required this.child, Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_77Default createInstance({required Widget child, Map<String, dynamic> properties = const {}}){
            return new Widget_5_77Default(child:child, properties:properties);
        }
            @override
                _Widget_5_77DefaultState createState() => _Widget_5_77DefaultState(this.properties, this.child);
            }
            class _Widget_5_77DefaultState extends BaseState<Widget_5_77Default> {
                bool visible = true;
                bool isLoaded = false;
                double width = 360;
                double height = 216;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''ListViewDefault''', id: '5:77', componentName:r'''ListViewDefault''');
                Widget child = Spacer();
                _Widget_5_77DefaultState(Map<String, dynamic> props, Widget child){
                    
                    super.properties = props;
                    this.child = child;
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''ListViewDefault''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'ListViewDefault');
            }            
            
            var painter = Node_5_77();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''ListViewDefault''', id: '5:77', widget: this, componentName:r'''ListViewDefault''');
                ComponentDescendantNotification(name: r'''ListViewDefault''', id: '5:77', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: RepaintBoundary(
                                    child:  SizedBox(
                                        height: MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio,
                                        child: FittedBox(fit: BoxFit.fitHeight, child: 
                            TransparentPointer(
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 360,
                                height: 216,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.hardEdge,
                                                children: [
                                                    
                                                    this.child
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                            ))))
                            
                );
            }
        }
        
        class Widget_5_77 extends StatefulWidget {
            
        final String nodeName = r'''ListView''';
        final String name = r'''Frame 1''';
        final String componentType = r'''ListViews''';
        final Map<String, dynamic> properties;
        
        Widget_5_77({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_77 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_77(properties:properties);
        }
            @override
                _Widget_5_77State createState() => _Widget_5_77State();
            }
            class _Widget_5_77State extends BaseState<Widget_5_77> {
            List<Map<String, dynamic>> items = [{}];
            int lastSelected = -1;
            @override
        void initState() {
            super.initState();
            
            WidgetsBinding.instance.addPostFrameCallback((_){
                
                globals.triggerComponentEvent('loaded', this.widget.hashCode, 'ListView', '5:77');
        
            });
            globals.subscribeToComponentEvent('tap', '''ListView Items''', (e){
                var p = e.target.widget.properties, index = 0;
                if(p.containsKey('_local') && p['_local'].containsKey('index')){
                    index = int.parse(p['_local']['index']);
                    
                }
                lastSelected = index;
                globals.triggerComponentEvent('itemSelected', this.widget.hashCode, r'''ListView''', {'originalEvent': e, 'index': index});
            });
        }
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }
            final ScrollController scrollController = ScrollController();
            @override
            Widget build(BuildContext context) {
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''ListView''', id: '5:77', widget: this);
                ComponentDescendantNotification(name: r'''ListView''', id: '5:77', widget: this)..dispatch(context);
                return NotificationListener<ComponentDescendantNotification>(
                    onNotification: onDescendantNotify,
                    child: Widget_5_77Default(
                        key: UniqueKey(),
                        child: NotificationListener<ScrollEndNotification>(
                            onNotification: (scrollEnd) {
                            var metrics = scrollEnd.metrics;
                            if (metrics.atEdge) {
                                if (metrics.pixels == 0) {
                                    globals.triggerComponentEvent('scrolledToTop', this.widget.hashCode, r'''ListView''');
                                } else {
                                    globals.triggerComponentEvent('scrolledToBottom', this.widget.hashCode, r'''ListView''');
                                }
                            }
                            return true;
                            },
                            child: ListView.separated(
                                controller: scrollController,
                                padding: const EdgeInsets.fromLTRB(16, 59, 8, 58),
                                itemCount: items.length,
                                itemBuilder: (BuildContext context, int index) {
                                    items[index]['_local'] = {'index': index.toString()};
                                    return Widget_5_90(key:UniqueKey(), properties: items[index]);
                                },
                                separatorBuilder: (BuildContext context, int index) => const Divider(indent:16, thickness: 0, color: Colors.transparent),
                                scrollDirection: Axis.horizontal,
                            ),
                        )
                    )
                );
            }
            bool onDescendantNotify(ComponentDescendantNotification notification) {
                if(properties.containsKey(notification.name)){
                    notification.widget.setState(()=>notification.widget.properties = properties[notification.name] as Map<String, dynamic>);
                }
                return true;
            }
        }
        

        class Widget_5_90 extends StatefulWidget {
            
        final String nodeName = r'''ListView Items''';
        final String name = r'''c_hz2291513jaxaxwnll0ro''';
        final String componentType = r'''ListItem''';
        final Map<String, dynamic> properties;
        
        Widget_5_90({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_90 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_90(properties:properties);
        }
            @override
                _Widget_5_90State createState() => _Widget_5_90State(this.properties);
            }
            class _Widget_5_90State extends BaseState<Widget_5_90> {
                bool visible = true;
                bool isLoaded = false;
                double width = 1036;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''ListView Items''', id: '5:90', componentName:r'''ListView Items''');
                
                _Widget_5_90State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''ListView Items''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'ListView Items');
            }            
            
            var painter = Node_5_90();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''ListView Items''', id: '5:90', widget: this, componentName:r'''ListView Items''');
                ComponentDescendantNotification(name: r'''ListView Items''', id: '5:90', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 1036,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(-0.6853281853281854, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(-0.6853281853281854, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, constraints.widthConstraints().maxWidth / 1.4591549295774648, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_87())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 2.9183098591549297, 0, constraints.widthConstraints().maxWidth / 2.9183098591549297, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_88())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0.6853281853281854, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0.6853281853281854, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 1.4591549295774648, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_89()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        ))
                        )
                        
                );
            }
        }
        

        class Widget_I5_87_5_78 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 2''';
        final String name = r'''Rectangle 2''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_87_5_78({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_87_5_78 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_87_5_78(properties:properties);
        }
            @override
                _Widget_I5_87_5_78State createState() => _Widget_I5_87_5_78State(this.properties);
            }
            class _Widget_I5_87_5_78State extends BaseState<Widget_I5_87_5_78> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 2''', id: 'I5:87;5:78', componentName:r'''Rectangle 2''');
                
                _Widget_I5_87_5_78State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 2');
            }            
            
            var painter = Node_I5_87_5_78();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 2''', id: 'I5:87;5:78', widget: this, componentName:r'''Rectangle 2''');
                ComponentDescendantNotification(name: r'''Rectangle 2''', id: 'I5:87;5:78', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_I5_87_5_79 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_87_5_79({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_87_5_79 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_87_5_79(properties:properties);
        }
            @override
                _Widget_I5_87_5_79State createState() => _Widget_I5_87_5_79State(this.properties);
            }
            class _Widget_I5_87_5_79State extends BaseState<Widget_I5_87_5_79> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: 'I5:87;5:79', componentName:r'''wow''');
                
                _Widget_I5_87_5_79State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: 'I5:87;5:79', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: 'I5:87;5:79', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_I5_88_5_80 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 3''';
        final String name = r'''Rectangle 3''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_88_5_80({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_88_5_80 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_88_5_80(properties:properties);
        }
            @override
                _Widget_I5_88_5_80State createState() => _Widget_I5_88_5_80State(this.properties);
            }
            class _Widget_I5_88_5_80State extends BaseState<Widget_I5_88_5_80> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 3''', id: 'I5:88;5:80', componentName:r'''Rectangle 3''');
                
                _Widget_I5_88_5_80State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 3''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 3');
            }            
            
            var painter = Node_I5_88_5_80();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 3''', id: 'I5:88;5:80', widget: this, componentName:r'''Rectangle 3''');
                ComponentDescendantNotification(name: r'''Rectangle 3''', id: 'I5:88;5:80', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_I5_88_5_81 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_88_5_81({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_88_5_81 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_88_5_81(properties:properties);
        }
            @override
                _Widget_I5_88_5_81State createState() => _Widget_I5_88_5_81State(this.properties);
            }
            class _Widget_I5_88_5_81State extends BaseState<Widget_I5_88_5_81> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: 'I5:88;5:81', componentName:r'''wow''');
                
                _Widget_I5_88_5_81State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: 'I5:88;5:81', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: 'I5:88;5:81', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_I5_89_5_82 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 4''';
        final String name = r'''Rectangle 4''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_89_5_82({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_89_5_82 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_89_5_82(properties:properties);
        }
            @override
                _Widget_I5_89_5_82State createState() => _Widget_I5_89_5_82State(this.properties);
            }
            class _Widget_I5_89_5_82State extends BaseState<Widget_I5_89_5_82> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 4''', id: 'I5:89;5:82', componentName:r'''Rectangle 4''');
                
                _Widget_I5_89_5_82State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 4''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 4');
            }            
            
            var painter = Node_I5_89_5_82();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 4''', id: 'I5:89;5:82', widget: this, componentName:r'''Rectangle 4''');
                ComponentDescendantNotification(name: r'''Rectangle 4''', id: 'I5:89;5:82', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_I5_89_5_83 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_I5_89_5_83({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_I5_89_5_83 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_I5_89_5_83(properties:properties);
        }
            @override
                _Widget_I5_89_5_83State createState() => _Widget_I5_89_5_83State(this.properties);
            }
            class _Widget_I5_89_5_83State extends BaseState<Widget_I5_89_5_83> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: 'I5:89;5:83', componentName:r'''wow''');
                
                _Widget_I5_89_5_83State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: 'I5:89;5:83', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: 'I5:89;5:83', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_84 extends StatefulWidget {
            
        final String nodeName = r'''Component 3''';
        final String name = r'''Component 3''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_84({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_84 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_84(properties:properties);
        }
            @override
                _Widget_5_84State createState() => _Widget_5_84State(this.properties);
            }
            class _Widget_5_84State extends BaseState<Widget_5_84> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 3''', id: '5:84', componentName:r'''Component 3''');
                
                _Widget_5_84State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 3''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 3');
            }            
            
            var painter = Node_5_84();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 3''', id: '5:84', widget: this, componentName:r'''Component 3''');
                ComponentDescendantNotification(name: r'''Component 3''', id: '5:84', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 326,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_78())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_79()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        
                );
            }
        }
        

        class Widget_5_78 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 2''';
        final String name = r'''Rectangle 2''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_78({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_78 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_78(properties:properties);
        }
            @override
                _Widget_5_78State createState() => _Widget_5_78State(this.properties);
            }
            class _Widget_5_78State extends BaseState<Widget_5_78> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 2''', id: '5:78', componentName:r'''Rectangle 2''');
                
                _Widget_5_78State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 2''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 2');
            }            
            
            var painter = Node_5_78();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 2''', id: '5:78', widget: this, componentName:r'''Rectangle 2''');
                ComponentDescendantNotification(name: r'''Rectangle 2''', id: '5:78', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_79 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_79({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_79 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_79(properties:properties);
        }
            @override
                _Widget_5_79State createState() => _Widget_5_79State(this.properties);
            }
            class _Widget_5_79State extends BaseState<Widget_5_79> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: '5:79', componentName:r'''wow''');
                
                _Widget_5_79State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: '5:79', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: '5:79', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_85 extends StatefulWidget {
            
        final String nodeName = r'''Component 4''';
        final String name = r'''Component 4''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_85({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_85 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_85(properties:properties);
        }
            @override
                _Widget_5_85State createState() => _Widget_5_85State(this.properties);
            }
            class _Widget_5_85State extends BaseState<Widget_5_85> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 4''', id: '5:85', componentName:r'''Component 4''');
                
                _Widget_5_85State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 4''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 4');
            }            
            
            var painter = Node_5_85();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 4''', id: '5:85', widget: this, componentName:r'''Component 4''');
                ComponentDescendantNotification(name: r'''Component 4''', id: '5:85', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 326,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_80())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_81()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        
                );
            }
        }
        

        class Widget_5_80 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 3''';
        final String name = r'''Rectangle 3''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_80({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_80 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_80(properties:properties);
        }
            @override
                _Widget_5_80State createState() => _Widget_5_80State(this.properties);
            }
            class _Widget_5_80State extends BaseState<Widget_5_80> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 3''', id: '5:80', componentName:r'''Rectangle 3''');
                
                _Widget_5_80State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 3''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 3');
            }            
            
            var painter = Node_5_80();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 3''', id: '5:80', widget: this, componentName:r'''Rectangle 3''');
                ComponentDescendantNotification(name: r'''Rectangle 3''', id: '5:80', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_81 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_81({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_81 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_81(properties:properties);
        }
            @override
                _Widget_5_81State createState() => _Widget_5_81State(this.properties);
            }
            class _Widget_5_81State extends BaseState<Widget_5_81> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: '5:81', componentName:r'''wow''');
                
                _Widget_5_81State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: '5:81', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: '5:81', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_86 extends StatefulWidget {
            
        final String nodeName = r'''Component 5''';
        final String name = r'''Component 5''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_86({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_86 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_86(properties:properties);
        }
            @override
                _Widget_5_86State createState() => _Widget_5_86State(this.properties);
            }
            class _Widget_5_86State extends BaseState<Widget_5_86> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Component 5''', id: '5:86', componentName:r'''Component 5''');
                
                _Widget_5_86State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Component 5''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Component 5');
            }            
            
            var painter = Node_5_86();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                if(properties.containsKey('width')){
                    this.width = properties['width'].toDouble();
                }
                if(properties.containsKey('height')){
                    this.height = properties['height'].toDouble();
                }
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Component 5''', id: '5:86', widget: this, componentName:r'''Component 5''');
                ComponentDescendantNotification(name: r'''Component 5''', id: '5:86', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: 
                        Opacity(
                            opacity: opacity,
                            child:  Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: this.width, maxWidth: this.width, minHeight: this.height, maxHeight: this.height),
                                width: 326,
                                height: 99,
                                child: CustomPaint(
                                    size: Size(this.width, this.height), 
                                    painter: this.painter,
                                    child: LayoutBuilder( builder: (_, constraints) => Stack(
                                                fit: StackFit.expand,
                                                clipBehavior: Clip.none,
                                                children: [
                                                    
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_82())), 
                                                    OverflowBox( 
                                                                        alignment: Alignment(0, 0),
                                                                        
                                                                        
                                                                        child:Container(
                                                                        alignment: Alignment(0, 0),
                                                                        margin: EdgeInsets.fromLTRB(constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735, constraints.widthConstraints().maxWidth / 3.0185185185185186, constraints.heightConstraints().maxHeight / 5.2105263157894735),
                                                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                        constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                                                        
                                                                        
                                                                        
                                                                        child: Widget_5_83()))
                                                    
                                                ]
                                            ))
                                ),
                                
                            )
                        )
                        )
                        
                );
            }
        }
        

        class Widget_5_82 extends StatefulWidget {
            
        final String nodeName = r'''Rectangle 4''';
        final String name = r'''Rectangle 4''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_82({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_82 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_82(properties:properties);
        }
            @override
                _Widget_5_82State createState() => _Widget_5_82State(this.properties);
            }
            class _Widget_5_82State extends BaseState<Widget_5_82> {
                bool visible = true;
                bool isLoaded = false;
                double width = 326;
                double height = 99;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''Rectangle 4''', id: '5:82', componentName:r'''Rectangle 4''');
                
                _Widget_5_82State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''Rectangle 4''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'Rectangle 4');
            }            
            
            var painter = Node_5_82();
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''Rectangle 4''', id: '5:82', widget: this, componentName:r'''Rectangle 4''');
                ComponentDescendantNotification(name: r'''Rectangle 4''', id: '5:82', widget: this)..dispatch(context);
                painter.properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                properties.forEach((k,v) => m[k]=m.containsKey(k)?m[k]:v);
                painter.properties = m;
                
                
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                child: CustomPaint(
                                    size: Size(constraints.widthConstraints().maxWidth, constraints.heightConstraints().maxHeight), 
                                    painter: this.painter,
                                    
                                ),
                                
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

        class Widget_5_83 extends StatefulWidget {
            
        final String nodeName = r'''wow''';
        final String name = r'''wow''';
        final String componentType = r'''''';
        final Map<String, dynamic> properties;
        
        Widget_5_83({Key key = const Key(''), this.properties = const {}}) : super(key: key);
        Widget_5_83 createInstance({Map<String, dynamic> properties = const {}}){
            return new Widget_5_83(properties:properties);
        }
            @override
                _Widget_5_83State createState() => _Widget_5_83State(this.properties);
            }
            class _Widget_5_83State extends BaseState<Widget_5_83> {
                bool visible = true;
                bool isLoaded = false;
                double width = 110;
                double height = 61;
                double opacity = 1;
                globals.Elem elem = globals.Elem(name: r'''wow''', id: '5:83', componentName:r'''wow''');
                
                _Widget_5_83State(Map<String, dynamic> props){
                    
                    super.properties = props;
                    
                }
                
            
            String chars = r'''wow''';
            String get characters {
                return chars;
            }
            void set characters(String c) {
                chars = c;
            }
            Widget get textWidgets {
                double paragraphSpacing = 0;
                List<String> pars = this.characters.split('\n');
                if(paragraphSpacing > 0 && pars.length > 0) {
                    List<Widget> children = [];
                    for(var i=0; i<pars.length; i++){
                        children.add(Text(
                            pars[i],
                            style: this.textStyles[0],
                            textAlign: TextAlign.start
                        ));
                        if(i != pars.length - 1) {
                            children.add(SizedBox(height: paragraphSpacing));
                        }
                    }
                    return Column(
                        children: children
                    );
                }else{
                    return Text(
                        this.characters,
                        style: this.textStyles[0],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: ((61/60.5113639831543).floor()) <=1 ? 1 : (61/60.5113639831543).floor(),
                    );
                }
            }
            final List<TextStyle> textStyles = [

                        ((){
                            var style = TextStyle(
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontStyle: FontStyle.normal,
                                height: 1.210227279663086,
                                color: Color.fromRGBO(0, 0, 0, 1)
                            );
                            try{
                                return GoogleFonts.getFont('Inter',
                                    textStyle: style,
                                );
                            } catch (e) {
                                return style;
                            }
                        })(),
                        
];
            @override
            void initState() {
                super.initState();
                
            }
            void widgetDidLoad(){
              if(!isLoaded) {
                isLoaded = true;
                Timer(Duration(milliseconds: 50), () => globals.triggerEvent('pageLoaded', r'''wow''', {'target':elem}) );
              }
              globals.triggerComponentEvent('loaded', this.widget.hashCode, 'wow');
            }            
            
            
            @override
        void dispose() { 
            
            if(globals.elementInstances.containsKey(this.widget.hashCode)){
              globals.elementInstances.remove(this.widget.hashCode);
            }
            super.dispose();
        }           
            @override
            Widget build(BuildContext context) {
                Map<String, dynamic> m = {};
                
                
                if(properties.containsKey('visible')){
                    visible = properties['visible'] as bool;
                }
                
                
                globals.elementInstances[this.widget.hashCode] = globals.Elem(name: r'''wow''', id: '5:83', widget: this, componentName:r'''wow''');
                ComponentDescendantNotification(name: r'''wow''', id: '5:83', widget: this)..dispatch(context);
                
                
                        if(properties.containsKey('characters')){
                            characters = properties['characters'];
                        }
                        
                
                return Visibility(
                    visible: visible, 
                    child: GestureDetector(
                                onTap:() {
                                    
            if(triggersBuiltInEvents) {
                // if(Navigator.canPop(context)){
                //     Navigator.pop(context);
                // }
                globals.navigatorKey.currentState?.pushReplacement(
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Widget_4_6(),
                        
                    ),
                );
            }
            
                                },
                                child: 
                        Opacity(
                            opacity: opacity,
                            child: LayoutBuilder( builder: (_, constraints) => Transform(
                            transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
                            alignment: Alignment(0, 0),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                constraints: BoxConstraints(minWidth: 0, maxWidth: double.infinity, minHeight: 0, maxHeight: double.infinity),
                                
                                
                                alignment: Alignment(0, 0),
                                child: Align(
                                    alignment: Alignment(-1, -1),
                                    child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: this.textWidgets
            ))
                            )
                        ))
                        )
                        
                            )
                );
            }
        }
        

                class BendisWidget extends StatefulWidget {
                    @override
                    _BendisWidgetState createState() {
                        
                                        globals.screenClasses['PAGE2'] = globals.Elem(
                                            name:'PAGE2', 
                                            id:'4:6', 
                                            widget:Widget_4_6(),
                                        );
                                        globals.screenClasses['PAGE2']?.type = 'screens';
                                        

                                        globals.screenClasses['PAGE1'] = globals.Elem(
                                            name:'PAGE1', 
                                            id:'1:3', 
                                            widget:Widget_1_3(),
                                        );
                                        globals.screenClasses['PAGE1']?.type = 'screens';
                                        

                                        globals.screenClasses['POPUP'] = globals.Elem(
                                            name:'POPUP', 
                                            id:'5:26', 
                                            widget:Widget_5_26(),
                                        );
                                        globals.screenClasses['POPUP']?.type = 'popups';
                                        

                        return _BendisWidgetState();
                    }
                }

                class _BendisWidgetState extends State<BendisWidget> {

                    bool isLoadedOnce = false;
                    @override
                    void initState() {
                        super.initState();
                        if(!isLoadedOnce) {
                            isLoadedOnce = true;
                            WidgetsBinding.instance.addPostFrameCallback((_){
                                
                                Timer(Duration(milliseconds: 1), () => globals.triggerEvent('apploaded') );
                            });
                        }
                    }

                    @override
                    Widget build(BuildContext context) {
                        var screen =  Widget_1_3();
                        globals.currentScreenName = screen.nodeName;
                        return screen;
                    }
                }
                