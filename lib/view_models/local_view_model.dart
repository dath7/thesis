import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yolo/app/base/base_view_model.dart';
import 'package:yolo/services/tensorflow_service.dart';
import 'package:yolo/view_states/local_view_state.dart';

class LocalViewModel extends BaseViewModel<LocalViewState> {

  bool _isLoadModel = false;

  late TensorFlowService _tensorFlowService;


  LocalViewModel(BuildContext context, this._tensorFlowService) : super(context, LocalViewState());


  Future<void> loadModel(ModelType type) async {
    await _tensorFlowService.loadModel(type);
    _isLoadModel = true;
  }

  Future<void> runModel(File file) async {
    if(_isLoadModel) {
      var recognitions = await _tensorFlowService.runModelOnImage(file);
      if (recognitions != null) {
        state.recognitions = recognitions;
        print('recognitions ${recognitions.toString()}');
        notifyListeners();
      }
    }else{
      throw 'Please run `loadModel(type)` before running `runModelOnImage(file)`';
    }
  }

  void close() {
    _tensorFlowService.close();
  }



  Future updateImageSelected(File file) async {
    state.imageSelected = file;
    notifyListeners();
  }

  bool isHasPicked() {
    return state.imageSelected != null;
  }

  String getTextDetected() {
    return state.getTextDetected();
  }



}