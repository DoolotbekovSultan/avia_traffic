import 'package:aviatraffic/home/features/stories/data/datasources/i_stories_remote_datasource.dart';
import 'package:aviatraffic/home/features/stories/data/models/story_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoriesRemoteDatasource)
class StoriesRemoteDatasources implements IStoriesRemoteDatasource {
  final Dio dio;
  StoriesRemoteDatasources({required this.dio});

  @override
  Future<List<StoryModel>> getStories() async {
    final response = await dio.get('/base/stories');

    final jsonList = response.data as List<dynamic>;
    final stories = jsonList.map((json) => StoryModel.fromJson(json)).toList();

    return stories;
  }

  @override
  Future<StoryModel> getStoryById(int id) async {
    final response = await dio.get('/base/stories/$id');
    final json = response.data;
    return StoryModel.fromJson(json);
  }
}
