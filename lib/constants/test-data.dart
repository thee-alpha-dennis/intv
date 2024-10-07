/*
  Author : (Dennis Ongong'a - Kenya)
*/
import 'package:flutter/material.dart';

import '../models/banner.dart';
import '../models/type.dart';
import '../models/user.dart';

final User mockUser = User(
  photo:
      'https://s3-alpha-sig.figma.com/img/3d5c/b72f/ae1e058c2ed75ab981a9f8bb62e96a13?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nBECGSfeWx6z~6Di-JORHFnY-rD9r9pf83RwCXSf5TmI3L2g01HSBCADdMb3wwkIXUfU6Q442oXqk1fpsvIlwMFiOcGGvfGoicsJwgkzK6FL2duRMoqLXX3x9ufZnUymiwiIr62ik2smLcAkfRAAaRUx9m-0qJ~GaULbTESdMQ9GvdxTw3gvAmAKdyurMd4jCwfkT7~TpnXC2HyoEpea6HyUKtqO26oYnQAKMUJ0D5~8FZfTHFSaXsfNK9PgUEs577NVSZ7tTlA4k-kfMNKv3jA6fsT542T9Sybd1r0hgYNmt~hSy7UbMdz0bZMEOVPekfRRBzJPnG-uMGiqE5ccSQ__',
  name: 'Krishna',
);

final List<BannerModel> banners = [
  BannerModel(
      color: const Color(0xFFFFD95E),
      title: "Live Sections on JEE Exams ",
      description: "Live Sections on JEE Exams ",
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/be03/26b1/d800550a46225f90bde61d38e797cc90?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lK1jekJCdxpaDlmAq-5nUsgmxr2FeHUbWCJpb8uJ1GMIg-ZveJqRbabx-WIEdGPxbWSM7eaUTYZwy2mknIv330wLsB78cXFCxf75nLVatlNjUNKbxUPefbA~r5mzeOincSNsr8zjjbCQvZmOnEMe6omrvnAvDsA9b0P~YvcV8armSv36RhMHA82Ox0yye3pbYSj5HQ~SQdcpgtcGrNsKGR-xozK4Arhn5~sgdfBKXegYCAgpAaumJ10cfKDzourg95kTjo6L1446d2sGTCeZmjiiM~2NsSLQPlxDFGOWQlhFMK1lMNkp7XJwit86Vaf0tCbS~52KAt2ZZTML59Q9YA__'),
  BannerModel(
      color: const Color(0xFFFED1BA),
      title: "Free Courses",
      description: "Live Sections on JEE Exams ",
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/0889/087f/386c7f89a7863865e07999563a12c520?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UdrSlIJ39O1ljOnTU94ENeZ~JXpB9uPhFy0UvIW0fWSJh70dakLqmb1-2BOqd8uLsqZ~cSZzU~3Gn5zlBl6YeFKymxcOoWNCUsGpQejU9g-z2rTeJVuXLzwnUPgRsg0iZiMcZeNifs4TZVopzFdMoi1HcUa5NiE5C5SQzBwDs7gw-vYLmm24UzMiQ3ahUSGJSpXwB3neoApgteLF3ESk8Hu4LWMEZv73QBu1TUNaPlZb0VDj2dzDJDfcOHTXx1psf4KZAaoA1TETGM~4xgqBnKr9pILgkNs4~g0pHcZQlew5FsYn0cE2YMGhcDSNpxtFmW3y86~erg1fn3NtspivEA__'),
];

const String fullIntroText = 'Better yourself each day everyday';

List<Types> testVendorTypes = [
  Types(
    id: 1,
    name: 'Free Courses',
    logo:
        'https://s3-alpha-sig.figma.com/img/ea86/ccf7/1a71d7481ba8b0a8908df28a6a2dba84?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ifpIksou1KxrhhkRbdjCq94fqLlHCnpvbxjJg7tBE0iNlNX9wW89~35EyiCWm31iFF5K7Cv2NTcLguusTJTITu6peoqryHufPzEqKR3p14M~1bEy89mYIoe4lGBezRdyniv~tSxyVZg4c1n34SG96Q-FjNNqkiISky~tfaRKdA9IXxzIUdR43QY-JjlPmmyPHeHytUNFl-8q3JwVVdxnOSdBLtLBgF2TWy6mjD6Yw81c04jtqtu5Q~ZA-O8VLq2givl0HrImUzDUS5WNsp-RO6ASnVk7~DIzt9SBK3rcd45M~guJQfktyiu3Z2qhI8S2P-6PJsAGiNxbLgIMC0KRfA__',
  ),
  Types(
    id: 2,
    name: 'Attendance',
    logo:
        'https://s3-alpha-sig.figma.com/img/eb19/e9d8/01d4e8afb4c3b9a1e1df69a53cd660e3?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pTyYj0zQXxplEIrIuoKLmGYScWKnfmyvNKPiI1m5bgF8ECnM3g3TFityOp9uVeyIbI9xdpnBylzmf0f8qf~JlNSJaV0nu1EymZd0Nbc3bc0A2envm0UFAQyBEyZs5YvGLzYFyrRgQ0oXC4tZpmy86LbeF91CYfp7idmzqFZoCp4ejZxu4ZlHPxz0zthATZJFheTDUqhzaDdcJHS-3lNkqarVbhlZT4l5XUfq-ESp-KwFc0ZAXpYHgVKtGxOAzAbO8KeMlzvPCVzT5aFbo910Tw7AhzV0H0LKVPoy96nkJXyydsfbCb7oqWn~YfqdsQ4x8HSGphIi5rS76ewENuTF9g__',
  ),
  Types(
    id: 3,
    name: 'Store',
    logo:
        'https://s3-alpha-sig.figma.com/img/d064/4acc/356031a38963158af91d69a258e6e371?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g0pkIHAzfO6jm9TwEhoearTwEXyDP0v7Nrg22jUZyPsqCX5BAOQP~V8OthbnEGuVKtizWXigVGkYyGqUuMEndtogsrpMvhDQ-kJZX6d5gEBhYWzir0HYuwtfglTWaGgiLnhNat8vSWssigEbSdnj06OFD2EZxCqN1G8ubhPGnkE9~dmjdx9qVedxpPt3Ma9uEa1Vrks5-ipqNc8~Vo6oMhPII45XoP9meT1~ins-KUX0xBHCekN-flI~-rh4efpOeqdjcfyrteZLHNnYeKQcSUeQt4XQCMp2kwgH22rrSAH-kheVUGwDjduMriQzy6cbt4SRNQE9sO9kgx7yqYDpqQ__',
  ),
  Types(
    id: 3,
    name: 'Assessment',
    logo:
        'https://s3-alpha-sig.figma.com/img/baf1/649f/9de49e8bad6927840c34696a4b3beafb?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hEXb2A2Ww5Oq5h1zY4XZ2huDV0fb8Ei5b9C1EcydORDBj0iAhNByVHooT0eR5t~sxjgdPmL2OYbW9Xj710~8M0gb7n1wlJzO~XDoeec0VuS0YYwaDBekLjNs0wlEzlJYVvVaa4viASdkYDLtoLhv23Om67iTkJZXJtQHTrvoaQwl5TAsNema-Ul0kf2jT5oNCWF7n1dl-cJLofiawmxG1aFDAqyDIDFuO0Ge0yALw7v1cBLO9dHUoYFy1D3GbUscWdEoIMuhRIzNpA9Saxsvu-YCdDS8M32kh3fD-yrICdF2umbcj75wFth2vQ-rYT0wnI8r0wO8GQFnmc-6UVn4Jw__',
  ),
];
