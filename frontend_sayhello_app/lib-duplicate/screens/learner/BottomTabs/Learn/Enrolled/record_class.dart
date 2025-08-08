import 'package:flutter/material.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../../../services/video_metadata_service.dart';
import 'record_class_video_player.dart';

class RecordedClassTab extends StatefulWidget {
  final Map<String, dynamic> course;
  const RecordedClassTab({super.key, required this.course});

  @override
  State<RecordedClassTab> createState() => _RecordedClassTabState();
}

class _RecordedClassTabState extends State<RecordedClassTab> {
  VideoSummary? _videoSummary;
  bool _isLoading = true;
  String? _error;
  double _loadingProgress = 0.0;

  // Video URLs for the course
  final List<String> _videoUrls = [
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4',
  ];

  // Predefined titles for the videos
  final List<String> _videoTitles = [
    'Course Introduction & Welcome',
    'Fundamentals & Basic Concepts',
    'Advanced Techniques & Applications',
    'Practice Session & Q&A',
  ];

  // Additional metadata
  final List<Map<String, dynamic>> _additionalData = [
    {
      'description':
          'Get familiar with the course structure and learning objectives.',
      'uploaded': '2025-07-20',
      'views': 156,
      'likes': 24,
      'topics': ['Course Overview', 'Learning Path', 'Resources'],
      'thumbnail':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg',
      'isWatched': true,
      'watchProgress': 1.0,
      'lastWatched': '2025-07-21',
    },
    {
      'description': 'Learn the essential building blocks and core principles.',
      'uploaded': '2025-07-22',
      'views': 98,
      'likes': 31,
      'topics': ['Basic Concepts', 'Terminology', 'Examples'],
      'thumbnail':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg',
      'isWatched': true,
      'watchProgress': 0.7,
      'lastWatched': '2025-07-23',
    },
    {
      'description':
          'Dive deeper into advanced concepts with practical applications.',
      'uploaded': '2025-07-23',
      'views': 67,
      'likes': 18,
      'topics': ['Advanced Topics', 'Case Studies', 'Best Practices'],
      'thumbnail':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg',
      'isWatched': false,
      'watchProgress': 0.0,
      'lastWatched': null,
    },
    {
      'description':
          'Interactive practice session with common questions answered.',
      'uploaded': '2025-07-24',
      'views': 42,
      'likes': 12,
      'topics': ['Practice Exercises', 'Q&A', 'Common Mistakes'],
      'thumbnail':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/SubaruOutbackOnStreetAndDirt.jpg',
      'isWatched': false,
      'watchProgress': 0.0,
      'lastWatched': null,
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadVideoMetadata();
  }

  Future<void> _loadVideoMetadata() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
        _loadingProgress = 0.0;
      });

      final videoMetadataList =
          await VideoMetadataService.extractMultipleVideoMetadata(
            _videoUrls,
            titles: _videoTitles,
            onProgress: (completed, total) {
              if (mounted) {
                setState(() {
                  _loadingProgress = completed / total;
                });
              }
            },
          );

      final summary = VideoMetadataService.calculateVideoSummary(
        videoMetadataList,
      );

      if (mounted) {
        setState(() {
          _videoSummary = summary;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = Color(0xFF7A54FF);
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ??
        (isDark ? Colors.white : Colors.black);
    final subTextColor =
        Theme.of(context).textTheme.bodyMedium?.color ??
        (isDark ? Colors.grey.shade400 : Colors.grey.shade600);
    final cardColor = isDark ? Colors.grey[800] : Colors.white;

    if (_isLoading) {
      return _buildLoadingState(primaryColor);
    }

    if (_error != null) {
      return _buildErrorState(primaryColor, textColor);
    }

    if (_videoSummary == null) {
      return _buildEmptyState(primaryColor, textColor);
    }
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section with Real Metadata
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [primaryColor.withOpacity(0.8), primaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.ondemand_video, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.recordedClasses,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  AppLocalizations.of(context)!.accessAllRecordedSessions,
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),

                // Success Rate Indicator
                if (_videoSummary!.hasErrors)
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.orange.withOpacity(0.3)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning_amber,
                          color: Colors.orange,
                          size: 14,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.failedVideosCount(
                              _videoSummary!.failedVideos,
                              _videoSummary!.totalVideos,
                            ),
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                // Statistics Cards with Real Data
                Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        AppLocalizations.of(context)!.totalVideos,
                        '${_videoSummary!.validVideos}',
                        Icons.video_library,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: _buildStatCard(
                        AppLocalizations.of(context)!.totalDuration,
                        _videoSummary!.formattedTotalDuration,
                        Icons.schedule,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: _buildStatCard(
                        AppLocalizations.of(context)!.totalSize,
                        _videoSummary!.formattedTotalSize,
                        Icons.storage,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Video Library Section
          Text(
            AppLocalizations.of(context)!.videoLibrary,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),

          const SizedBox(height: 12),

          // Video List with Real Metadata
          ..._videoSummary!.videos.asMap().entries.map((entry) {
            final index = entry.key;
            final videoMetadata = entry.value;
            final additionalData = index < _additionalData.length
                ? _additionalData[index]
                : <String, dynamic>{};

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: isDark ? Colors.black26 : Colors.grey.shade200,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Video Thumbnail with Error Handling
                  GestureDetector(
                    onTap: videoMetadata.isValid
                        ? () =>
                              _playVideo(context, videoMetadata, additionalData)
                        : null,
                    child: Container(
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        image: additionalData['thumbnail'] != null
                            ? DecorationImage(
                                image: NetworkImage(
                                  additionalData['thumbnail'],
                                ),
                                fit: BoxFit.cover,
                              )
                            : null,
                        gradient: additionalData['thumbnail'] == null
                            ? LinearGradient(
                                colors: [
                                  primaryColor.withOpacity(0.8),
                                  primaryColor,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                      ),
                      child: Stack(
                        children: [
                          // Error overlay for failed videos
                          if (!videoMetadata.isValid)
                            Container(
                              color: Colors.black.withOpacity(0.7),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.error_outline,
                                      color: Colors.red,
                                      size: 28,
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      AppLocalizations.of(
                                        context,
                                      )!.failedToLoad,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          else ...[
                            // Play button overlay
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 28,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // Duration badge with real data
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  videoMetadata.formattedDuration,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),

                  // Video Info
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                videoMetadata.title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (!videoMetadata.isValid)
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 18,
                              ),
                          ],
                        ),
                        const SizedBox(height: 6),

                        Text(
                          additionalData['description'] ??
                              AppLocalizations.of(
                                context,
                              )!.noDescriptionAvailable,
                          style: TextStyle(
                            fontSize: 12,
                            color: subTextColor,
                            height: 1.3,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        if (!videoMetadata.isValid &&
                            videoMetadata.error != null) ...[
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.red.withOpacity(0.3),
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(
                                context,
                              )!.videoError(videoMetadata.error!),
                              style: TextStyle(fontSize: 11, color: Colors.red),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],

                        const SizedBox(height: 10),

                        // Video Info with Real Metadata
                        Row(
                          children: [
                            Expanded(
                              child: _buildInfoItem(
                                Icons.calendar_today,
                                additionalData['uploaded'] ??
                                    AppLocalizations.of(
                                      context,
                                    )!.unknownUploadDate,
                                subTextColor,
                              ),
                            ),
                            Expanded(
                              child: _buildInfoItem(
                                Icons.access_time,
                                videoMetadata.formattedDuration,
                                subTextColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Expanded(
                              child: _buildInfoItem(
                                Icons.storage,
                                videoMetadata.formattedSize,
                                subTextColor,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Action Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: videoMetadata.isValid
                                  ? primaryColor
                                  : Colors.grey,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: videoMetadata.isValid
                                ? () => _playVideo(
                                    context,
                                    videoMetadata,
                                    additionalData,
                                  )
                                : () => _retryVideoLoad(index),
                            icon: Icon(
                              videoMetadata.isValid
                                  ? Icons.play_circle_fill
                                  : Icons.refresh,
                              color: Colors.white,
                              size: 16,
                            ),
                            label: Text(
                              videoMetadata.isValid
                                  ? AppLocalizations.of(context)!.watchNow
                                  : AppLocalizations.of(context)!.retry,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildLoadingState(Color primaryColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              value: _loadingProgress > 0 ? _loadingProgress : null,
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
              strokeWidth: 3,
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.loadingVideoMetadata,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 8),
            if (_loadingProgress > 0)
              Text(
                AppLocalizations.of(
                  context,
                )!.completeProgress((_loadingProgress * 100).toInt()),
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(Color primaryColor, Color textColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.failedToLoadVideoMetadata,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              _error!,
              style: TextStyle(fontSize: 14, color: Colors.red),
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _loadVideoMetadata,
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: Text(
                AppLocalizations.of(context)!.retry,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(Color primaryColor, Color textColor) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_library_outlined, size: 64, color: Colors.grey),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.noVideosAvailable,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.checkBackLaterForRecorded,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 16),
          const SizedBox(height: 3),
          Text(
            value,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String value, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Color(0xFF7A54FF)),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 11,
              color: color,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Future<void> _retryVideoLoad(int index) async {
    if (index >= _videoUrls.length) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final videoMetadata = await VideoMetadataService.extractVideoMetadata(
        _videoUrls[index],
        title: index < _videoTitles.length ? _videoTitles[index] : null,
      );

      if (mounted && _videoSummary != null) {
        // Update the specific video metadata
        final updatedVideos = List<VideoMetadata>.from(_videoSummary!.videos);
        updatedVideos[index] = videoMetadata;

        final updatedSummary = VideoMetadataService.calculateVideoSummary(
          updatedVideos,
        );

        setState(() {
          _videoSummary = updatedSummary;
          _isLoading = false;
        });

        // Show success/failure message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              videoMetadata.isValid
                  ? AppLocalizations.of(
                      context,
                    )!.videoMetadataLoadedSuccessfully
                  : AppLocalizations.of(
                      context,
                    )!.failedToLoadVideoMetadataSnackbar,
            ),
            backgroundColor: videoMetadata.isValid ? Colors.green : Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.errorMessage(e.toString()),
            ),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  void _playVideo(
    BuildContext context,
    VideoMetadata videoMetadata,
    Map<String, dynamic> additionalData,
  ) {
    if (!videoMetadata.isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(
              context,
            )!.cannotPlayVideoError(videoMetadata.error!),
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }

    // Show loading indicator briefly
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF7A54FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                const SizedBox(height: 16),
                Text(
                  AppLocalizations.of(context)!.loadingVideoPlayer,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(
                    context,
                  )!.videoDurationInfo(videoMetadata.formattedDuration),
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                Text(
                  '${AppLocalizations.of(context)!.totalSize}: ${videoMetadata.formattedSize}',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );

    // Close loading dialog and open video player
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.of(context).pop(); // Close loading dialog
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => RecordClassVideoPlayer(
            videoUrl: videoMetadata.url,
            title: videoMetadata.title,
            thumbnail: additionalData['thumbnail'] ?? '',
            duration: videoMetadata.formattedDuration,
          ),
        ),
      );
    });
  }
}
