import 'package:jobs_bd/core/base/base_ui_state.dart';
import 'package:jobs_bd/data/dummy_data_model/ad_ids_model.dart';
import 'package:jobs_bd/data/dummy_data_model/job_category_model.dart';
import 'package:jobs_bd/data/dummy_data_model/job_model.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required super.isLoading,
    required super.userMessage,
    required this.categoryList,
    required this.jobListByCategory,
    required this.allJobList,
    required this.todayPostsCount,
    required this.todayDeadlinesCount,
    required this.tomorrowDeadlinesCount,
    required this.isAdsLoaded, // Add isAdsLoaded property
    required this.adIdsList, // Add adIdsList property
  });

  factory HomeUiState.empty() {
    return HomeUiState(
      isLoading: false,
      userMessage: '',
      categoryList: const [],
      jobListByCategory: const [],
      allJobList: const [],
      todayPostsCount: 0,
      todayDeadlinesCount: 0,
      tomorrowDeadlinesCount: 0,
      isAdsLoaded: false, // Initialize isAdsLoaded to false
      adIdsList: AdIdsModel(
        banneradsId1: '',
        banneradsId2: '',
        intadsId1: '',
        intadsId2: '',
        videoAdsid: '',
      ), // Initialize adIdsList to empty
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        userMessage,
        categoryList,
        jobListByCategory,
        allJobList,
        todayPostsCount,
        todayDeadlinesCount,
        tomorrowDeadlinesCount,
        adIdsList, // Include adIdsList in props
        isAdsLoaded, // Include isAdsLoaded in props
      ];

  final List<JobCategoryModel> categoryList;
  final List<JobModel> allJobList;
  final List<JobModel> jobListByCategory;
  final AdIdsModel adIdsList; // Add adIdsList property
  final int todayPostsCount;
  final int todayDeadlinesCount;
  final int tomorrowDeadlinesCount;
  final bool isAdsLoaded; // Define the isAdsLoaded property

  HomeUiState copyWith({
    bool? isLoading,
    String? message,
    List<JobCategoryModel>? categoryList,
    List<JobModel>? jobListByCategory,
    List<JobModel>? allJobList,
    int? todayPostsCount,
    int? todayDeadlinesCount,
    int? tomorrowDeadlinesCount,
    bool? isAdsLoaded, // Add isAdsLoaded to copyWith method
    AdIdsModel? adIdsList, // Add adIdsList to copyWith method
  }) {
    return HomeUiState(
      isLoading: isLoading ?? super.isLoading,
      userMessage: message ?? super.userMessage,
      categoryList: categoryList ?? this.categoryList,
      jobListByCategory: jobListByCategory ?? this.jobListByCategory,
      allJobList: allJobList ?? this.allJobList,
      todayPostsCount: todayPostsCount ?? this.todayPostsCount,
      todayDeadlinesCount: todayDeadlinesCount ?? this.todayDeadlinesCount,
      tomorrowDeadlinesCount:
          tomorrowDeadlinesCount ?? this.tomorrowDeadlinesCount,
      isAdsLoaded:
          isAdsLoaded ?? this.isAdsLoaded, // Include isAdsLoaded in copyWith
      adIdsList: adIdsList ?? this.adIdsList, // Include adIdsList in copyWith
    );
  }
}
