import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:job_search_app/models/book.dart';
import 'package:job_search_app/models/job.dart';

class JobNetwork {
  Future<List<Job>> jobSearch(String jobQuery, int page, String numPages) async {
  List<Job> jobs = [];
  final url = Uri.parse(
      'https://jsearch.p.rapidapi.com/search?query=$jobQuery&page=$page&num_pages=$numPages');

  var response = await http.get(url, headers: {
    'X-RapidAPI-Host': 'jsearch.p.rapidapi.com',
    'X-RapidAPI-Key': '4118e10643msh20c6a738855d389p13af7ejsnba3b88dd0d65'
  });
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
    final data = jsonData['data'] as List<dynamic>;
    final jobs = data.map((jobData) => Job.fromJson(jobData)).toList();
    return jobs;
  } else {
    throw Exception(
        'Failed to fetch jobs. Status code: ${response.statusCode}');
  }
}


  nearByJobs(String jobQuery, int radius) async {
    final url = Uri.parse(
        'https://jsearch.p.rapidapi.com/search?query=$jobQuery&page=1&num_pages=1&radius=$radius');

    var response = await http.get(url, headers: {
      'X-RapidAPI-Host': 'jsearch.p.rapidapi.com',
      'X-RapidAPI-Key': '4118e10643msh20c6a738855d389p13af7ejsnba3b88dd0d65'
    });
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final jobs =
          jsonData.map((bookData) => Job.fromJson(bookData)).toList();
      return jobs;
    } else {
      throw Exception(
          'Failed to fetch nominated books. Status code: ${response.statusCode}');
    }
  }

  employmentType(
      String jobQuery, int page, String numPages, String employmentType) async {
    final url = Uri.parse(
        'https://jsearch.p.rapidapi.com/search?query=$jobQuery&page=$page&num_pages=$numPages&employment_type=$employmentType');

    var response = await http.get(url, headers: {
      'X-RapidAPI-Host': 'jsearch.p.rapidapi.com',
      'X-RapidAPI-Key': '4118e10643msh20c6a738855d389p13af7ejsnba3b88dd0d65'
    });
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final jobs =
          jsonData.map((bookData) => Job.fromJson(bookData)).toList();
      return jobs;
    } else {
      throw Exception(
          'Failed to fetch nominated books. Status code: ${response.statusCode}');
    }
  }

  Future<List<Book>> nominatedBooks(String genre, String year) async {
    final url =
        Uri.parse('https://hapi-books.p.rapidapi.com/nominees/$genre/$year');

    var response = await http.get(
      url,
      headers: {
        "X-RapidAPI-Host": 'hapi-books.p.rapidapi.com',
        "X-RapidAPI-Key": '4118e10643msh20c6a738855d389p13af7ejsnba3b88dd0d65'
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final nominatedBooks =
          jsonData.map((bookData) => Book.fromJson(bookData)).toList();
      return nominatedBooks;
    } else {
      throw Exception(
          'Failed to fetch nominated books. Status code: ${response.statusCode}');
    }
  }

  // jobDetails(String jobId) async {}
}
