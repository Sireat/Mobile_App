//part of 'country_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';

abstract class CountryCodeState extends Equatable {
  const CountryCodeState();

  @override
  List<Object> get props => [];
}

class CountryCodeInitial extends CountryCodeState {}

class CountryCodeLoading extends CountryCodeState {}

class CountryCodeLoaded extends CountryCodeState {
  final CountryCode countryCode;

  CountryCodeLoaded({required this.countryCode});

  @override
  List<Object> get props => [countryCode];
}

class CountryCodeError extends CountryCodeState {
  final String message;

  CountryCodeError({required this.message});

  @override
  List<Object> get props => [message];
}
