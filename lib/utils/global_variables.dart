import 'package:flutter/material.dart';
import 'package:insta_clone/screen/add_post_screen.dart';
import 'package:insta_clone/screen/feed_screen.dart';
import 'package:insta_clone/screen/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('notification'),
  Text('profile'),
];
