import 'dart:convert';
import 'dart:io';

// This crashes with "SocketException: Operation timed out (OS Error: Operation timed out, errno = 60), address = hypixel.net, port = 58385"
// I know I'm doing something right because a different server complains that I should be using 1.20.4
// I wrote this code years ago and have no idea what it means but part of it is ASCII

void main() async {
  Socket testSocket = await Socket.connect('hypixel.net', 25565);
  testSocket.listen((event) {
    print(event);
    print(utf8.decode(event));
  });
  testSocket.add([
    29,
    0,
    251,
    5,
    22,
    116,
    114,
    101,
    101,
    112,
    108,
    97,
    116,
    101,
    46,
    100,
    97,
    109,
    111,
    119,
    109,
    111,
    119,
    46,
    99,
    111,
    109,
    35,
    40,
    2,
    31,
    0,
    12,
    84,
    114,
    101,
    101,
    80,
    108,
    97,
    116,
    101,
    77,
    111,
    111,
    1,
    238,
    18,
    208,
    84,
    106,
    193,
    66,
    146,
    183,
    208,
    242,
    215,
    55,
    10,
    56,
    138
  ]);
  print('sent');
}
