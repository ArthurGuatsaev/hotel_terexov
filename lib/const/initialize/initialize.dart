import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_terexov/hotel/data/repositories/main/hotels_main.dart';
import 'package:hotel_terexov/hotel/domain/blocs/bloc/main_h_bloc.dart';
import 'package:hotel_terexov/hotel/domain/repositories/base_hotels_main.dart';

import '../themes/theme.dart';

import '../navigation/router.dart';
part 'domain/dependencies.dart';
part 'domain/initialize.dart';
part 'domain/repo.dart';
part 'view/home_app.dart';
part 'view/loading_app.dart';
