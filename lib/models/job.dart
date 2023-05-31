class Job {
  String? employerName;
  String? employerLogo;
  String? employerWebsite;
  String? employerCompanyType;
  String? jobPublisher;
  String? jobId;
  String? jobEmploymentType;
  String? jobTitle;
  String? jobApplyLink;
  bool? jobApplyIsDirect;
  double? jobApplyQualityScore;
  String? jobDescription;
  bool? jobIsRemote;
  int? jobPostedAtTimestamp;
  String? jobPostedAtDatetimeUtc;
  String? jobCity;
  String? jobState;
  String? jobCountry;
  double? jobLatitude;
  double? jobLongitude;
  // Null? jobBenefits;
  String? jobGoogleLink;
  String? jobOfferExpirationDatetimeUtc;
  int? jobOfferExpirationTimestamp;
  JobRequiredExperience? jobRequiredExperience;
  List<String>? jobRequiredSkills;
  JobRequiredEducation? jobRequiredEducation;
  bool? jobExperienceInPlaceOfEducation;
  int? jobMinSalary;
  int? jobMaxSalary;
  String? jobSalaryCurrency;
  String? jobSalaryPeriod;
  JobHighlights? jobHighlights;
  // Null? jobJobTitle;
  String? jobPostingLanguage;
  String? jobOnetSoc;
  String? jobOnetJobZone;

  Job(
      {this.employerName,
      this.employerLogo,
      this.employerWebsite,
      this.employerCompanyType,
      this.jobPublisher,
      this.jobId,
      this.jobEmploymentType,
      this.jobTitle,
      this.jobApplyLink,
      this.jobApplyIsDirect,
      this.jobApplyQualityScore,
      this.jobDescription,
      this.jobIsRemote,
      this.jobPostedAtTimestamp,
      this.jobPostedAtDatetimeUtc,
      this.jobCity,
      this.jobState,
      this.jobCountry,
      this.jobLatitude,
      this.jobLongitude,
      // this.jobBenefits,
      this.jobGoogleLink,
      this.jobOfferExpirationDatetimeUtc,
      this.jobOfferExpirationTimestamp,
      this.jobRequiredExperience,
      this.jobRequiredSkills,
      this.jobRequiredEducation,
      this.jobExperienceInPlaceOfEducation,
      this.jobMinSalary,
      this.jobMaxSalary,
      this.jobSalaryCurrency,
      this.jobSalaryPeriod,
      this.jobHighlights,
      // this.jobJobTitle,
      this.jobPostingLanguage,
      this.jobOnetSoc,
      this.jobOnetJobZone});

  Job.fromJson(Map<String, dynamic> json) {
    employerName = json['employer_name'];
    employerLogo = json['employer_logo'];
    employerWebsite = json['employer_website'];
    employerCompanyType = json['employer_company_type'];
    jobPublisher = json['job_publisher'];
    jobId = json['job_id'];
    jobEmploymentType = json['job_employment_type'];
    jobTitle = json['job_title'];
    jobApplyLink = json['job_apply_link'];
    jobApplyIsDirect = json['job_apply_is_direct'];
    jobApplyQualityScore = json['job_apply_quality_score'];
    jobDescription = json['job_description'];
    jobIsRemote = json['job_is_remote'];
    jobPostedAtTimestamp = json['job_posted_at_timestamp'];
    jobPostedAtDatetimeUtc = json['job_posted_at_datetime_utc'];
    jobCity = json['job_city'];
    jobState = json['job_state'];
    jobCountry = json['job_country'];
    jobLatitude = json['job_latitude'];
    jobLongitude = json['job_longitude'];
    // jobBenefits = json['job_benefits'];
    jobGoogleLink = json['job_google_link'];
    jobOfferExpirationDatetimeUtc = json['job_offer_expiration_datetime_utc'];
    jobOfferExpirationTimestamp = json['job_offer_expiration_timestamp'];
    jobRequiredExperience = json['job_required_experience'] != null
        ? new JobRequiredExperience.fromJson(json['job_required_experience'])
        : null;
    if (json['job_required_skills'] != null) {
      jobRequiredSkills = List<String>.from(json['job_required_skills']);
    } else {
      jobRequiredSkills = [];
    }
    jobRequiredEducation = json['job_required_education'] != null
        ? new JobRequiredEducation.fromJson(json['job_required_education'])
        : null;
    jobExperienceInPlaceOfEducation =
        json['job_experience_in_place_of_education'];
    jobMinSalary = json['job_min_salary'];
    jobMaxSalary = json['job_max_salary'];
    jobSalaryCurrency = json['job_salary_currency'];
    jobSalaryPeriod = json['job_salary_period'];
    jobHighlights = json['job_highlights'] != null
        ? new JobHighlights.fromJson(json['job_highlights'])
        : null;
    // jobJobTitle = json['job_job_title'];
    jobPostingLanguage = json['job_posting_language'];
    jobOnetSoc = json['job_onet_soc'];
    jobOnetJobZone = json['job_onet_job_zone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employer_name'] = this.employerName;
    data['employer_logo'] = this.employerLogo;
    data['employer_website'] = this.employerWebsite;
    data['employer_company_type'] = this.employerCompanyType;
    data['job_publisher'] = this.jobPublisher;
    data['job_id'] = this.jobId;
    data['job_employment_type'] = this.jobEmploymentType;
    data['job_title'] = this.jobTitle;
    data['job_apply_link'] = this.jobApplyLink;
    data['job_apply_is_direct'] = this.jobApplyIsDirect;
    data['job_apply_quality_score'] = this.jobApplyQualityScore;
    data['job_description'] = this.jobDescription;
    data['job_is_remote'] = this.jobIsRemote;
    data['job_posted_at_timestamp'] = this.jobPostedAtTimestamp;
    data['job_posted_at_datetime_utc'] = this.jobPostedAtDatetimeUtc;
    data['job_city'] = this.jobCity;
    data['job_state'] = this.jobState;
    data['job_country'] = this.jobCountry;
    data['job_latitude'] = this.jobLatitude;
    data['job_longitude'] = this.jobLongitude;
    // data['job_benefits'] = this.jobBenefits;
    data['job_google_link'] = this.jobGoogleLink;
    data['job_offer_expiration_datetime_utc'] =
        this.jobOfferExpirationDatetimeUtc;
    data['job_offer_expiration_timestamp'] = this.jobOfferExpirationTimestamp;
    if (this.jobRequiredExperience != null) {
      data['job_required_experience'] = this.jobRequiredExperience!.toJson();
    }
    data['job_required_skills'] = this.jobRequiredSkills;
    if (this.jobRequiredEducation != null) {
      data['job_required_education'] = this.jobRequiredEducation!.toJson();
    }
    data['job_experience_in_place_of_education'] =
        this.jobExperienceInPlaceOfEducation;
    data['job_min_salary'] = this.jobMinSalary;
    data['job_max_salary'] = this.jobMaxSalary;
    data['job_salary_currency'] = this.jobSalaryCurrency;
    data['job_salary_period'] = this.jobSalaryPeriod;
    if (this.jobHighlights != null) {
      data['job_highlights'] = this.jobHighlights!.toJson();
    }
    // data['job_job_title'] = this.jobJobTitle;
    data['job_posting_language'] = this.jobPostingLanguage;
    data['job_onet_soc'] = this.jobOnetSoc;
    data['job_onet_job_zone'] = this.jobOnetJobZone;
    return data;
  }
}

class JobRequiredExperience {
  bool? noExperienceRequired;
  int? requiredExperienceInMonths;
  bool? experienceMentioned;
  bool? experiencePreferred;

  JobRequiredExperience(
      {this.noExperienceRequired,
      this.requiredExperienceInMonths,
      this.experienceMentioned,
      this.experiencePreferred});

  JobRequiredExperience.fromJson(Map<String, dynamic> json) {
    noExperienceRequired = json['no_experience_required'];
    requiredExperienceInMonths = json['required_experience_in_months'];
    experienceMentioned = json['experience_mentioned'];
    experiencePreferred = json['experience_preferred'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['no_experience_required'] = this.noExperienceRequired;
    data['required_experience_in_months'] = this.requiredExperienceInMonths;
    data['experience_mentioned'] = this.experienceMentioned;
    data['experience_preferred'] = this.experiencePreferred;
    return data;
  }
}

class JobRequiredEducation {
  bool? postgraduateDegree;
  bool? professionalCertification;
  bool? highSchool;
  bool? associatesDegree;
  bool? bachelorsDegree;
  bool? degreeMentioned;
  bool? degreePreferred;
  bool? professionalCertificationMentioned;

  JobRequiredEducation(
      {this.postgraduateDegree,
      this.professionalCertification,
      this.highSchool,
      this.associatesDegree,
      this.bachelorsDegree,
      this.degreeMentioned,
      this.degreePreferred,
      this.professionalCertificationMentioned});

  JobRequiredEducation.fromJson(Map<String, dynamic> json) {
    postgraduateDegree = json['postgraduate_degree'];
    professionalCertification = json['professional_certification'];
    highSchool = json['high_school'];
    associatesDegree = json['associates_degree'];
    bachelorsDegree = json['bachelors_degree'];
    degreeMentioned = json['degree_mentioned'];
    degreePreferred = json['degree_preferred'];
    professionalCertificationMentioned =
        json['professional_certification_mentioned'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postgraduate_degree'] = this.postgraduateDegree;
    data['professional_certification'] = this.professionalCertification;
    data['high_school'] = this.highSchool;
    data['associates_degree'] = this.associatesDegree;
    data['bachelors_degree'] = this.bachelorsDegree;
    data['degree_mentioned'] = this.degreeMentioned;
    data['degree_preferred'] = this.degreePreferred;
    data['professional_certification_mentioned'] =
        this.professionalCertificationMentioned;
    return data;
  }
}

class JobHighlights {
  List<String>? qualifications;
  List<String>? responsibilities;
  List<String>? benefits;

  JobHighlights({this.qualifications, this.responsibilities, this.benefits});

  JobHighlights.fromJson(Map<String, dynamic> json) {
    if (json['Qualifications'] != null) {
      qualifications = List<String>.from(json['Qualifications']);
    } else {
      qualifications = [];
    }
    if (json['Responsibilities'] != null) {
      responsibilities = List<String>.from(json['Responsibilities']);
    } else {
      responsibilities = [];
    }
    if (json['Benefits'] != null) {
      benefits = List<String>.from(json['Benefits']);
    } else {
      benefits = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Qualifications'] = this.qualifications;
    data['Responsibilities'] = this.responsibilities;
    data['Benefits'] = this.benefits;
    return data;
  }
}
