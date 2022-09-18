import 'package:flutter/material.dart';
import 'package:insta_clone/screens/add_post.dart';

import '../screens/feed_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('Search'),
  AddPostScreen(),
  Text('Notification'),
  Text('Profile')
];
