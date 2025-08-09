/// Learner Provider - State management for learner-related operations
/// Handles learner profile, follower relationships, and UI state

import 'package:flutter/material.dart';
import '../../lib/models/models.dart';
import '../../lib/data/data.dart';

class LearnerProvider extends ChangeNotifier {
  final LearnerRepository _repository = LearnerRepository();

  // Current learner state
  Learner? _currentLearner;
  List<Follower> _followers = [];
  List<Follower> _following = [];
  List<Learner> _searchResults = [];

  // Loading states
  bool _isLoading = false;
  bool _isFollowersLoading = false;
  bool _isFollowingLoading = false;
  bool _isSearching = false;

  // Error state
  String? _error;

  // Getters
  Learner? get currentLearner => _currentLearner;
  List<Follower> get followers => _followers;
  List<Follower> get following => _following;
  List<Learner> get searchResults => _searchResults;
  bool get isLoading => _isLoading;
  bool get isFollowersLoading => _isFollowersLoading;
  bool get isFollowingLoading => _isFollowingLoading;
  bool get isSearching => _isSearching;
  String? get error => _error;

  // Computed properties
  int get followerCount => _followers.length;
  int get followingCount => _following.length;
  bool get hasError => _error != null;

  // =============================
  // LEARNER PROFILE OPERATIONS
  // =============================

  /// Load learner by ID
  Future<void> loadLearner(String id) async {
    _setLoading(true);
    _clearError();

    try {
      final learner = await _repository.getLearnerById(id);
      _currentLearner = learner;
      notifyListeners();
    } catch (e) {
      _setError('Failed to load learner: $e');
    } finally {
      _setLoading(false);
    }
  }

  /// Load learner by email
  Future<Learner?> getLearnerByEmail(String email) async {
    _setLoading(true);
    _clearError();

    try {
      final learner = await _repository.getLearnerByEmail(email);
      return learner;
    } catch (e) {
      _setError('Failed to load learner by email: $e');
      return null;
    } finally {
      _setLoading(false);
    }
  }

  /// Load learner by username
  Future<Learner?> getLearnerByUsername(String username) async {
    _setLoading(true);
    _clearError();

    try {
      final learner = await _repository.getLearnerByUsername(username);
      return learner;
    } catch (e) {
      _setError('Failed to load learner by username: $e');
      return null;
    } finally {
      _setLoading(false);
    }
  }

  /// Create new learner profile
  Future<bool> createLearner(Learner learner) async {
    _setLoading(true);
    _clearError();

    try {
      final newLearner = await _repository.createLearner(learner);
      _currentLearner = newLearner;
      notifyListeners();
      return true;
    } catch (e) {
      _setError('Failed to create learner: $e');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  /// Update learner profile
  Future<bool> updateLearner(Map<String, dynamic> updates) async {
    _setLoading(true);
    _clearError();

    try {
      if (_currentLearner == null) {
        _setError('No learner loaded');
        return false;
      }
      final updatedLearner = await _repository.updateLearner(
        _currentLearner!.copyWith(
          id: _currentLearner!.id,
          profileImage:
              updates['profile_image'] ?? _currentLearner!.profileImage,
          name: updates['name'] ?? _currentLearner!.name,
          email: updates['email'] ?? _currentLearner!.email,
          username: updates['username'] ?? _currentLearner!.username,
          dateOfBirth: updates['date_of_birth'] != null
              ? DateTime.parse(updates['date_of_birth'])
              : _currentLearner!.dateOfBirth,
          gender: updates['gender'] ?? _currentLearner!.gender,
          country: updates['country'] ?? _currentLearner!.country,
          bio: updates['bio'] ?? _currentLearner!.bio,
          nativeLanguage:
              updates['native_language'] ?? _currentLearner!.nativeLanguage,
          learningLanguage:
              updates['learning_language'] ?? _currentLearner!.learningLanguage,
          languageLevel:
              updates['language_level'] ?? _currentLearner!.languageLevel,
          interests: updates['interests'] != null
              ? List<String>.from(updates['interests'])
              : _currentLearner!.interests,
          createdAt: updates['created_at'] != null
              ? DateTime.parse(updates['created_at'])
              : _currentLearner!.createdAt,
        ),
      );
      _currentLearner = updatedLearner;
      notifyListeners();
      return true;
    } catch (e) {
      _setError('Failed to update learner: $e');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  /// Delete learner profile
  Future<bool> deleteLearner(String id) async {
    _setLoading(true);
    _clearError();

    try {
      await _repository.deleteLearner(id);
      _currentLearner = null;
      notifyListeners();
      return true;
    } catch (e) {
      _setError('Failed to delete learner: $e');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // =============================
  // SEARCH OPERATIONS
  // =============================

  /// Search learners by name or username
  Future<void> searchLearners(String query) async {
    if (query.trim().isEmpty) {
      _searchResults = [];
      notifyListeners();
      return;
    }

    _isSearching = true;
    _clearError();
    notifyListeners();

    try {
      final results = await _repository.searchLearners(query);
      _searchResults = results;
    } catch (e) {
      _setError('Failed to search learners: $e');
    } finally {
      _isSearching = false;
      notifyListeners();
    }
  }

  /// Get learners by learning language
  Future<List<Learner>> getLearnersByLanguage(String language) async {
    _clearError();

    try {
      return await _repository.getLearnersByLanguage(language);
    } catch (e) {
      _setError('Failed to get learners by language: $e');
      return [];
    }
  }

  /// Clear search results
  void clearSearch() {
    _searchResults = [];
    notifyListeners();
  }

  // =============================
  // FOLLOWER OPERATIONS
  // =============================

  /// Load followers for learner
  Future<void> loadFollowers(String learnerId) async {
    _isFollowersLoading = true;
    _clearError();
    notifyListeners();

    try {
      _followers = await _repository.getFollowers(learnerId);
    } catch (e) {
      _setError('Failed to load followers: $e');
    } finally {
      _isFollowersLoading = false;
      notifyListeners();
    }
  }

  /// Load following for learner
  Future<void> loadFollowing(String learnerId) async {
    _isFollowingLoading = true;
    _clearError();
    notifyListeners();

    try {
      _following = await _repository.getFollowing(learnerId);
    } catch (e) {
      _setError('Failed to load following: $e');
    } finally {
      _isFollowingLoading = false;
      notifyListeners();
    }
  }

  /// Follow a learner
  Future<bool> followLearner(String followerId, String followedId) async {
    _clearError();

    try {
      await _repository.followLearner(followerId, followedId);
      // Refresh following list
      await loadFollowing(followerId);
      return true;
    } catch (e) {
      _setError('Failed to follow learner: $e');
      return false;
    }
  }

  /// Unfollow a learner
  Future<bool> unfollowLearner(String followerId, String followedId) async {
    _clearError();

    try {
      await _repository.unfollowLearner(followerId, followedId);
      // Refresh following list
      await loadFollowing(followerId);
      return true;
    } catch (e) {
      _setError('Failed to unfollow learner: $e');
      return false;
    }
  }

  /// Check if user is following another user
  Future<bool> isFollowing(String followerId, String followedId) async {
    try {
      return await _repository.isFollowing(followerId, followedId);
    } catch (e) {
      _setError('Failed to check following status: $e');
      return false;
    }
  }

  /// Get follower count
  Future<int> getFollowerCount(String learnerId) async {
    try {
      return await _repository.getFollowerCount(learnerId);
    } catch (e) {
      _setError('Failed to get follower count: $e');
      return 0;
    }
  }

  /// Get following count
  Future<int> getFollowingCount(String learnerId) async {
    try {
      return await _repository.getFollowingCount(learnerId);
    } catch (e) {
      _setError('Failed to get following count: $e');
      return 0;
    }
  }

  // =============================
  // UTILITY METHODS
  // =============================

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String error) {
    _error = error;
    notifyListeners();
  }

  void _clearError() {
    _error = null;
  }

  /// Clear all data
  void clear() {
    _currentLearner = null;
    _followers = [];
    _following = [];
    _searchResults = [];
    _isLoading = false;
    _isFollowersLoading = false;
    _isFollowingLoading = false;
    _isSearching = false;
    _error = null;
    notifyListeners();
  }

  @override
  void dispose() {
    clear();
    super.dispose();
  }
}
