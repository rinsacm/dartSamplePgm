class TechLearnersAndMentors{
  String name;
  String role;
  var interests=[];
  var timeFrom;
  var timeTo;
  //constructor
  TechLearnersAndMentors(String name){
    this.name=name;
  }
  void setMentorOrLearner(String role){
    this.role=role;
  }
  void addStacks(var lst)
  {
    this.interests.add(lst);
  }
  void setAvailableTime(var from,var to)
  {
    if(this.role=="Mentor")
    {
      this.timeFrom=from;
      this.timeTo=to;
    }
  }
  List getMentor(var stack,var timeBeg,var timeEnd,var ls)
  {
    List mentors=[];
    for(int i=0;i<ls.length;i++)
    {
      if(ls[i].role=="Mentor")
      {
        for(int j=0;j<this.interests.length;j++)
        {
          if(this.interests[j]==stack)
          {
            if(this.timeFrom.compareTo(timeBeg)<=0 && this.timeTo.compareTo(timeEnd)>=0)
              mentors.add(this.name);
          }
            
        }
      }
    }
      
    return mentors;
  }
}
main(){
  var ls=[];
  var obj=new TechLearnersAndMentors("Joel");
  obj.setMentorOrLearner("Mentor");
  print(obj.role);
  obj.addStacks("java");
  print(obj.interests);
  obj.setAvailableTime(new DateTime(2020,3,10,12),new DateTime(2020,3,20,12));
  print(obj.timeFrom);
  print(obj.timeTo);
  ls.add(obj);
  print(obj.getMentor("java",DateTime(2020,3,10,13),new DateTime(2020,3,20,12),ls));
  
}
