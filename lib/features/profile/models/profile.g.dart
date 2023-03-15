// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      companyName: json['company_name'] as String? ?? '',
      logo: json['logo'] as String?,
      description: json['description'] as String? ?? 'description',
      website: json['website'] as String? ?? 'website',
      zipCode: json['zip_code'] as String? ?? '',
      telegram: json['telegram'] as String? ?? 'telegram',
      whatsapp: json['whatsapp'] as String? ?? 'whatsapp',
      messenger: json['messenger'] as String? ?? 'messenger',
      emailIsVerified: json['email_is_verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'country': instance.country,
      'city': instance.city,
      'company_name': instance.companyName,
      'logo': instance.logo,
      'description': instance.description,
      'website': instance.website,
      'zip_code': instance.zipCode,
      'telegram': instance.telegram,
      'whatsapp': instance.whatsapp,
      'messenger': instance.messenger,
      'email_is_verified': instance.emailIsVerified,
    };
