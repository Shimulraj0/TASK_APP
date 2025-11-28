import '../static_img/static_img.dart';

class StaticString {
  // RegExp
  static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final passRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{6,}$');
  // RegExp
  // Login Text start
  static final String logIn = 'Log In';
  static final String student = 'Student';
  static final String learnova = 'Learnova';
  static final String teacher = 'Teacher';
  static final String email = 'Email';
  static final String emailHeint = 'Enter your Email';
  static final String passwordHeint = 'Enter your Password';
  static final String password = 'Password';
  static final String loginGoogle = 'Login with Google';
  static final String loginsub = 'Login with Google';
  static final String createNew = 'New to Learnova?';
  static final String cAccount = 'Create an Account';
  static final String fPass = 'Forgot password?';
  static final String confirmPass = 'Confirm password';
  // Login Text end
  // Create Account Text Start
  static final String cAccountP = 'Create Account';
  static final String name = 'Name';
  static final String nameHent = 'Enter your Name';
  static final String already = 'Already have an account? ';
  // Create Account Text end

  // course Text Start
  static final String courseHed = 'Personalizing course  ';
  static final String courseSubHed = 'according to your profile ';
  static final String schoolName = 'current school ';
  static final String schoolFHent = 'Enter your school Name';
  static final String subjectFHent = 'Enter your Subject Name';
  static final String subject = 'Elective Subject';
  static final String gradeFHent = 'Enter your Current Grade';
  static final String grade = 'Current Grade';
  static final String howA = 'How Did you Hear about us ?';
  static final String friends = 'Friends';
  static final String gStarted = 'Get Started';
  static final String primary1 = 'primary 1';
  static final String primary2 = 'primary 2';
  static final String primary3 = 'primary 3';
  static final String primary4 = 'primary 4';
  static final String primary5 = 'primary 5';
  static final String f1 = 'Form 1';
  static final String f2 = 'Form 2';
  static final String f3 = 'Form 3';
  static final String f4 = 'Form 4';
  static final String f5 = 'Form 5';
  static final String instagram = 'Instagram';
  static final String medium = 'Medium';
  static final String others = 'Others';
  static final String school = 'School';
  static final String threads = 'Threads';

  static final List<Map<String, dynamic>> getS = [
    {
      'title': schoolName,
      'sibtitle': schoolFHent,

    },
    {
      'title': subject,
      'sibtitle': subjectFHent,

    },

  ];static final List<Map<String, dynamic>> getS2 = [
    {
      'title': grade,
      'sibtitle': gradeFHent,

    },
    {
      'title': howA,
      'sibtitle':friends,

    },

  ];static final List<Map<String, dynamic>> quPageList = [
    {
      'title': qOp1,
      'op': qOpL1,

    }, {
      'title': qOp2,
      'op': qOpL2,

    }, {
      'title': qOp3,
      'op': qOpL3,

    }, {
      'title': qOp4,
      'op': qOpL4,

    },


  ];static final List<Map<String, dynamic>> profilePro = [
    {
      'count': inPCoun,
      'title': inP,

    },    {
      'count': completedCun,
      'title':completed ,

    },    {
      'count':followingCun ,
      'title': following,

    },


  ];static final List<Map<String, dynamic>> homeimgeView = [
    {

      'title': ti1,
      "img":StaticImg.p1

    },
  {

      'title': ti2,
      "img":StaticImg.p2

    },
  {

      'title': ti3,
      "img":StaticImg.p3

    },
  {

      'title': ti4,
      "img":StaticImg.p4

    },
  {

      'title': ti1,
      "img":StaticImg.p1

    },
  {

      'title': ti2,
      "img":StaticImg.p2

    },


  ];



  static final List< String> gradelist = [
    primary1,
    primary2,
    primary3,
    primary4,
    primary5,
    f1,
    f2,
    f3,
    f4,
    f5,

  ] ;
  static final List< String> aboutlist = [
   instagram,medium,threads,friends,school,teacher,others



  ];
  static final List< String> homrcatagorylist = [
    tysCh,
    tysEn,
    tyMaths,
    tyChemistry,



  ];


  //course Text end

  //home Text Start
  static final String homeHea = 'Learn Through Watching Reels';
  static final String tp1 = 'Trending';
  static final String tp2 = 'New';
  static final String tp3 = 'Following';
  static final String all = 'All';
  static final String tysCh = '中文';
  static final String tysEn = 'English';
  static final String tyMaths = 'Maths';
  static final String tyChemistry = 'Chemistry';
  static final String ti1 = 'Vocabulary 101';
  static final String subTi1 = 'Jessica Roy';
  static final String ti2 = 'English Listening';
  static final String ti3 = 'Trigonometry Basic';
  static final String ti4 = 'Geometry Advance';

  //home Text end
  //|Search Text end
  static final String search = 'Search';
  static final String searchfHen = 'Enter Your Search';
  static final String searchHen1 = 'Trigonometry';
  static final String searchHen2 = 'Vocabulary';
  static final String searchHen3 = 'Grammar';
  static final String searchHen4 = 'Geography';
  static final String searchHen5 = 'XXX';


  static  final List<String> items = [searchHen1, searchHen2, searchHen3, searchHen4,searchHen5];
  //|Search Text end
  //|view Text Start
  static final String back = 'Back';
  static final String follow = 'Follow';
  static final String followed = 'Followed';
  static final String vHead = 'Start Learning Vocabulary Today!';
  static final String vSubHead =
      'So what is the necessary to learn vocabulary in today world. Everyone is learn.....';
  static final String readMore = 'read more';
  //|view Text end
  // understanding!Text end
  static final String vHeadPage2 = 'Let’s test your understanding!';
  static final String vocabulary = 'Vocabulary';
  static final String time = '23.03s';
  static final String q1 = 'Q. My dog is a little __ , especially when around other dogs. ';
  static final String qOp1 = 'Scared ';
  static final String qOp2 = 'Frightening';
  static final String qOp3 = 'Timid';
  static final String qOp4 = 'Concerned';
  static final String qOpL1 = 'A ';
  static final String qOpL2 = 'B';
  static final String qOpL3 = 'C';
  static final String qOpL4 = 'D';
  static final String next = 'Next';

  // understanding!
// QDeletesText Start
  static final String wDone = 'Well done! Here is the Explanation';
  static final String timid = 'Timid (膽小)';
  static final String continueT = 'Continue';
  static final String dot = '.';
  static final String explanation = 'Explanation';
  static final String explanationH = 'Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述一隻狗在其他狗的周圍表現出的從屬或緊張的行為。';
  static final String explanation1 = ' Scary (可怕) 和Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。';
  static final String explanation2 = '.Concerned (擔憂) 通常不用來描述狗與其他狗相處時感到壓力的反應。';

  // profile Text start
  // profile Text end
  static final String nameF = 'Jessica Roy';
  static final String fSuName = 'Joined since - Jun 2024';
  static final String inP = 'In progress';
  static final String inPCoun = '05';
  static final String completed = 'Completed';
  static final String completedCun = '01';
  static final String following = 'Following';
  static final String followingCun = '50';
  static final String myCou = 'My courses';
  static final String cousTi = 'English Tenses';
  static final String cousSubTi = 'Level - Intermediate';
  static final String couseOnerName = 'Denisa Ozel';
  static final String courseDet = 'Course Details';
  static final String getBac = 'Get back to it';
  static final String couseUploTime = '32 mins ago';

  // QDeletesText end

}
