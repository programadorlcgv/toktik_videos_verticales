import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_bottons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //videos Player + gradiente
            SizedBox.expand(
              child: FullscreenPlayer(videoUrl: videoPost.videoUrl, caption: videoPost.caption,),
            ),
            // Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBottons(video: videoPost)
            ),
          ],
        );
     },
    );
  }
}

