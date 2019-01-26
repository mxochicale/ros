#include <iostream>
#include <string>

using namespace std;

struct Robot_Struct
{
	int id;
	int no_wheels;
	string robot_name;
};

class Robot_Class
{
public:	
	int id;
	int no_wheels;
	string robot_name;
	
	void move_robot();
	void stop_robot();
};

void Robot_Class::move_robot()
{
	cout << "Moving Robot" << endl;
}

void Robot_Class::stop_robot()
{
	cout << "Stopping Robot" << endl;
}


int main()
{
	Robot_Struct robot1;
	Robot_Class robot2;

	robot1.id=1;
	robot1.robot_name="Mobile robot";

	robot2.id=2;
	robot2.robot_name="Humanoid robot";

	Robot_Class *robot3;
	robot3= new Robot_Class;
	robot3->id=3;
	robot3->robot_name="Drone";



	cout<<"ID="<<robot1.id<<"\t"<<"Robot Name: "
		<<robot1.robot_name<<endl;
	cout<<"ID="<<robot2.id<<"\t"<<"Robot Name: "
		<<robot2.robot_name<<endl;

	robot2.move_robot();
	robot2.stop_robot();

	cout<<"ID="<<robot3->id<<"\t"<<"Robot Name: "
		<<robot3->robot_name<<endl;

	robot3->move_robot();
	robot3->stop_robot();


	return 0;

}


