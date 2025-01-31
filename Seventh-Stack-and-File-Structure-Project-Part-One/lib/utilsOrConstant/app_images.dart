// Consider it This picture is your appLogo and used in multiple screens at the top

// Variable based 
// String appLogo = "assets/images/natural_image.jpg"; //avoid it, this is  accessed by > global variable 

// make a class,with static to avoid making object,
// to access images rather than defining in global
// variable


// This is Classs Based, and best Approch to define Images bath in This class based approch
class AppImages {
  static const String appLogo = "assets/images/natural_imagee.jpg";
}

// All images paths added here it is easy to access them through a class name AppImages list down all images path

//static yaha par is liya use keya hai ke object na banana bare
// is class ka  like this >[] Myobj = new Myobj;