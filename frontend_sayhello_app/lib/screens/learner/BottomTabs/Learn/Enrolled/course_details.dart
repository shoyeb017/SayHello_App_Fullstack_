import 'package:flutter/material.dart';
import '../../../../../../l10n/app_localizations.dart';

class CourseDetails extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseDetails({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Extract all course data with fallback values
    final title = course['title'] ?? 'Course Title';
    final description =
        course['description'] ??
        'This is a comprehensive course designed to help you master the language.';
    final language = course['language'] ?? 'English';
    final level = course['level'] ?? 'Beginner';
    final instructor = course['instructor'] ?? 'John Doe';
    final startDate = course['startDate'] ?? '2025-07-15';
    final endDate = course['endDate'] ?? '2025-09-15';
    final duration = course['duration'] ?? '4 weeks';
    final status = course['status'] ?? 'active';
    final rating = course['rating'] ?? 4.7;
    final enrolledStudents = course['students'] ?? 42;
    final price =
        double.tryParse(course['price']?.toString() ?? '49.99') ?? 49.99;
    final thumbnail = course['thumbnail'] ?? '';
    final category = course['category'] ?? 'Language';

    // Consistent color scheme with new theme
    final primaryColor = Color(0xFF7A54FF);
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ??
        (isDark ? Colors.white : Colors.black);
    final subTextColor =
        Theme.of(context).textTheme.bodyMedium?.color ??
        (isDark ? Colors.grey.shade400 : Colors.grey.shade600);
    final cardColor = isDark ? Colors.grey[800] : Colors.white;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(12), // Reduced from 16
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Course Header with Thumbnail
          _buildCourseHeader(
            title,
            instructor,
            thumbnail,
            level,
            status,
            category,
            duration,
            isDark,
            primaryColor,
            textColor,
            cardColor,
            context,
          ),

          const SizedBox(height: 16), // Reduced from 20
          // Rating and Enrollment Stats
          _buildStatsSection(
            rating,
            enrolledStudents,
            price,
            language,
            isDark,
            primaryColor,
            textColor,
            subTextColor,
            cardColor,
            context,
          ),

          const SizedBox(height: 16), // Reduced from 20
          // Course Description
          _buildDescriptionSection(
            description,
            isDark,
            primaryColor,
            textColor,
            subTextColor,
            cardColor,
            context,
          ),

          const SizedBox(height: 16), // Reduced from 20
          // Course Details Grid
          _buildDetailsGrid(
            startDate,
            endDate,
            duration,
            level,
            language,
            status,
            isDark,
            primaryColor,
            textColor,
            subTextColor,
            cardColor,
            context,
          ),

          const SizedBox(height: 16), // Reduced from 20
          // Instructor Details Section
          _buildInstructorSection(
            instructor,
            isDark,
            primaryColor,
            textColor,
            subTextColor,
            cardColor,
            context,
          ),

          const SizedBox(height: 16), // Reduced from 20
          // Enrollment Status
          _buildEnrollmentStatus(status, primaryColor, context),
        ],
      ),
    );
  }

  Widget _buildCourseHeader(
    String title,
    String instructor,
    String thumbnail,
    String level,
    String status,
    String category,
    String duration,
    bool isDark,
    Color primaryColor,
    Color textColor,
    Color? cardColor,
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16), // Reduced from 20
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.1),
            blurRadius: 8, // Reduced from 10
            offset: const Offset(0, 3), // Reduced from 4
          ),
        ],
      ),
      child: Column(
        children: [
          // Thumbnail Section
          Container(
            height: 160, // Reduced from 200
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), // Reduced from 20
                topRight: Radius.circular(16), // Reduced from 20
              ),
              gradient: thumbnail.isEmpty
                  ? LinearGradient(
                      colors: [
                        primaryColor.withOpacity(0.8),
                        primaryColor,
                        primaryColor.withOpacity(0.9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              image: thumbnail.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(thumbnail),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: Stack(
              children: [
                if (thumbnail.isEmpty)
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12), // Reduced from 16
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(
                              40,
                            ), // Reduced from 50
                          ),
                          child: Icon(
                            Icons.school,
                            size: 36, // Reduced from 48
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8), // Reduced from 12
                        Text(
                          category,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15, // Reduced from 18
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                // Status Badge
                Positioned(
                  top: 12, // Reduced from 16
                  right: 12, // Reduced from 16
                  child: _buildStatusBadge(status),
                ),

                // Level Badge
                Positioned(
                  top: 12, // Reduced from 16
                  left: 12, // Reduced from 16
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8, // Reduced from 12
                      vertical: 4, // Reduced from 6
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Reduced from 12
                    ),
                    child: Text(
                      level,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10, // Reduced from 12
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // Duration Badge
                Positioned(
                  bottom: 12, // Reduced from 16
                  left: 12, // Reduced from 16
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8, // Reduced from 10
                      vertical: 4, // Reduced from 6
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 12, // Reduced from 14
                          color: Colors.white,
                        ),
                        const SizedBox(width: 3), // Reduced from 4
                        Text(
                          duration,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10, // Reduced from 12
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Course Title and Instructor
          Padding(
            padding: const EdgeInsets.all(16), // Reduced from 20
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20, // Reduced from 24
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    height: 1.2,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6), // Reduced from 8
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 16,
                      color: primaryColor,
                    ), // Reduced from 18
                    const SizedBox(width: 5), // Reduced from 6
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.courseBy(instructor),
                        style: TextStyle(
                          fontSize: 14, // Reduced from 16
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    Color statusColor;
    IconData statusIcon;

    switch (status.toLowerCase()) {
      case 'completed':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case 'active':
        statusColor = Color(0xFF7A54FF);
        statusIcon = Icons.play_circle;
        break;
      case 'upcoming':
        statusColor = Colors.orange;
        statusIcon = Icons.schedule;
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = Icons.info;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ), // Reduced from 10, 6
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(10), // Reduced from 12
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(statusIcon, size: 12, color: Colors.white), // Reduced from 14
          const SizedBox(width: 3), // Reduced from 4
          Text(
            status.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 9, // Reduced from 11
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection(
    double rating,
    int enrolledStudents,
    double price,
    String language,
    bool isDark,
    Color primaryColor,
    Color textColor,
    Color subTextColor,
    Color? cardColor,
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16), // Reduced from 20
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12), // Reduced from 16
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black26 : Colors.grey.shade200,
            blurRadius: 6, // Reduced from 8
            offset: const Offset(0, 2), // Reduced from 3
          ),
        ],
      ),
      child: Row(
        children: [
          // Rating
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ), // Reduced from 20
                    const SizedBox(width: 3), // Reduced from 4
                    Text(
                      rating.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 15, // Reduced from 18
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3), // Reduced from 4
                Text(
                  AppLocalizations.of(context)!.ratingLabel,
                  style: TextStyle(
                    fontSize: 10, // Reduced from 12
                    color: subTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 35,
            width: 1,
            color: Colors.grey.shade300,
          ), // Reduced height from 40
          // Students
          Expanded(
            child: Column(
              children: [
                Text(
                  enrolledStudents.toString(),
                  style: TextStyle(
                    fontSize: 15, // Reduced from 18
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 3), // Reduced from 4
                Text(
                  AppLocalizations.of(context)!.studentsLabel,
                  style: TextStyle(
                    fontSize: 10, // Reduced from 12
                    color: subTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 35,
            width: 1,
            color: Colors.grey.shade300,
          ), // Reduced height from 40
          // Price
          Expanded(
            child: Column(
              children: [
                Text(
                  '\$${price.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 15, // Reduced from 18
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 3), // Reduced from 4
                Text(
                  AppLocalizations.of(context)!.priceLabel,
                  style: TextStyle(
                    fontSize: 10, // Reduced from 12
                    color: subTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 35,
            width: 1,
            color: Colors.grey.shade300,
          ), // Reduced height from 40
          // Language
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.language,
                  color: primaryColor,
                  size: 16,
                ), // Reduced from 20
                const SizedBox(height: 3), // Reduced from 4
                Text(
                  language,
                  style: TextStyle(
                    fontSize: 10, // Reduced from 12
                    color: subTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(
    String description,
    bool isDark,
    Color primaryColor,
    Color textColor,
    Color subTextColor,
    Color? cardColor,
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16), // Reduced from 20
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12), // Reduced from 16
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black26 : Colors.grey.shade200,
            blurRadius: 6, // Reduced from 8
            offset: const Offset(0, 2), // Reduced from 3
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.description,
                color: primaryColor,
                size: 18,
              ), // Reduced from 22
              const SizedBox(width: 6), // Reduced from 8
              Text(
                AppLocalizations.of(context)!.courseDescription,
                style: TextStyle(
                  fontSize: 15, // Reduced from 18
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12), // Reduced from 16
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: subTextColor,
              height: 1.4,
            ), // Reduced from 15, adjusted height
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsGrid(
    String startDate,
    String endDate,
    String duration,
    String level,
    String language,
    String status,
    bool isDark,
    Color primaryColor,
    Color textColor,
    Color subTextColor,
    Color? cardColor,
    BuildContext context,
  ) {
    final details = [
      {
        'title': AppLocalizations.of(context)!.startDate,
        'value': startDate,
        'icon': Icons.calendar_today,
      },
      {
        'title': AppLocalizations.of(context)!.endDate,
        'value': endDate,
        'icon': Icons.event_available,
      },
      {
        'title': AppLocalizations.of(context)!.durationStat,
        'value': duration,
        'icon': Icons.schedule,
      },
      {
        'title': AppLocalizations.of(context)!.levelLabel,
        'value': level,
        'icon': Icons.signal_cellular_alt,
      },
      {
        'title': AppLocalizations.of(context)!.languageLabel,
        'value': language,
        'icon': Icons.language,
      },
      {
        'title': AppLocalizations.of(context)!.statusLabel,
        'value': status,
        'icon': Icons.info_outline,
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10, // Reduced from 12
        mainAxisSpacing: 10, // Reduced from 12
        childAspectRatio: 1.5, // Increased from 1.4 to make cards shorter
      ),
      itemCount: details.length,
      itemBuilder: (context, index) {
        final detail = details[index];
        return Container(
          padding: const EdgeInsets.all(12), // Reduced from 16
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10), // Reduced from 12
            boxShadow: [
              BoxShadow(
                color: isDark ? Colors.black26 : Colors.grey.shade200,
                blurRadius: 4, // Reduced from 6
                offset: const Offset(0, 1), // Reduced from 2
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    detail['icon'] as IconData,
                    color: primaryColor,
                    size: 16, // Reduced from 20
                  ),
                  const SizedBox(width: 6), // Reduced from 8
                  Expanded(
                    child: Text(
                      detail['title'] as String,
                      style: TextStyle(
                        fontSize: 11, // Reduced from 13
                        fontWeight: FontWeight.w600,
                        color: subTextColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6), // Reduced from 8
              Expanded(
                child: Text(
                  detail['value'] as String,
                  style: TextStyle(
                    fontSize: 13, // Reduced from 15
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInstructorSection(
    String instructor,
    bool isDark,
    Color primaryColor,
    Color textColor,
    Color subTextColor,
    Color? cardColor,
    BuildContext context,
  ) {
    // Sample instructor data - in real app this would come from API
    final instructorData = {
      'name': instructor,
      'bio':
          'Experienced educator with over 8 years of teaching experience. Specializes in modern language learning techniques and interactive teaching methods.',
      'rating': 4.8,
      'totalStudents': 1250,
      'coursesOffered': 12,
      'experience': 8, // Just the number, UI will add localized text
      'language': course['language'] ?? 'English', // Just the language name
      'avatar': '', // Would be URL in real app
    };

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black26 : Colors.grey.shade200,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Icon(Icons.person_outline, color: primaryColor, size: 18),
              const SizedBox(width: 6),
              Text(
                AppLocalizations.of(context)!.meetYourInstructor,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Instructor Info
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Avatar
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: instructorData['avatar']?.toString().isEmpty == true
                    ? Icon(Icons.person, color: Colors.white, size: 30)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          instructorData['avatar']!.toString(),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Icon(Icons.person, color: Colors.white, size: 30),
                        ),
                      ),
              ),
              const SizedBox(width: 12),

              // Instructor Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name and Verification
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            instructorData['name']!.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(Icons.verified, size: 16, color: primaryColor),
                      ],
                    ),
                    const SizedBox(height: 2),

                    // Rating
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 14),
                        const SizedBox(width: 2),
                        Text(
                          '${instructorData['rating']}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          AppLocalizations.of(context)!.instructorStudents(
                            instructorData['totalStudents'] as int,
                          ),
                          style: TextStyle(fontSize: 11, color: subTextColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),

                    // Experience and Education
                    Text(
                      '${AppLocalizations.of(context)!.experienceYears(instructorData['experience'].toString())} • ${AppLocalizations.of(context)!.expertInLanguage(instructorData['language'] as String)}',
                      style: TextStyle(fontSize: 11, color: subTextColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Bio
          Text(
            AppLocalizations.of(context)!.aboutInstructor,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            instructorData['bio']!.toString(),
            style: TextStyle(fontSize: 12, color: subTextColor, height: 1.4),
          ),

          const SizedBox(height: 12),

          // Stats Row
          Row(
            children: [
              Expanded(
                child: _buildInstructorStatCard(
                  AppLocalizations.of(context)!.instructorCourses,
                  '${instructorData['coursesOffered']}',
                  Icons.book,
                  primaryColor,
                  isDark,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInstructorStatCard(
                  AppLocalizations.of(context)!.studentsLabel,
                  '${instructorData['totalStudents']}',
                  Icons.people,
                  primaryColor,
                  isDark,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInstructorStatCard(
                  AppLocalizations.of(context)!.instructorRating,
                  '${instructorData['rating']}',
                  Icons.star,
                  Colors.amber,
                  isDark,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInstructorStatCard(
    String label,
    String value,
    IconData icon,
    Color color,
    bool isDark,
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 14),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              color: isDark ? Colors.grey.shade400 : Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildEnrollmentStatus(
    String status,
    Color primaryColor,
    BuildContext context,
  ) {
    Color statusColor;
    IconData statusIcon;
    String statusText;

    switch (status.toLowerCase()) {
      case 'completed':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        statusText = AppLocalizations.of(context)!.courseCompleted;
        break;
      case 'active':
        statusColor = primaryColor;
        statusIcon = Icons.play_circle;
        statusText = AppLocalizations.of(context)!.currentlyEnrolled;
        break;
      case 'upcoming':
        statusColor = Colors.orange;
        statusIcon = Icons.schedule;
        statusText = AppLocalizations.of(context)!.enrollmentConfirmed;
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = Icons.info;
        statusText = AppLocalizations.of(context)!.enrollmentStatus;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16), // Reduced from 20
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        border: Border.all(color: statusColor, width: 1.5), // Reduced from 2
        borderRadius: BorderRadius.circular(12), // Reduced from 16
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(statusIcon, color: statusColor, size: 22), // Reduced from 28
          const SizedBox(width: 8), // Reduced from 12
          Text(
            statusText,
            style: TextStyle(
              fontSize: 15, // Reduced from 18
              fontWeight: FontWeight.bold,
              color: statusColor,
            ),
          ),
        ],
      ),
    );
  }
}
