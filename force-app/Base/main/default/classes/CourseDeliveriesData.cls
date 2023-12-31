public without sharing class CourseDeliveriesData {

	public static Map<String, Course_Delivery__c> loadTheData (Map<String, User> users, Map<String, Course__c> courses) {
	
		Map<String, Course_Delivery__c> deliveries = new Map<String, Course_Delivery__c>{
			'DELIVERY-00000' => new Course_Delivery__c(LOCATION__C='Tokyo, Japan',        REGION__C='APAC', START_DATE__C=System.today()-200,STATUS__C='Delivered',INSTRUCTOR__c=users.get('AKATO').Id,   COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00001' => new Course_Delivery__c(LOCATION__C='San Francisco, United States',REGION__C='NAMER',START_DATE__C=System.today()-90, STATUS__C='Delivered',INSTRUCTOR__c=users.get('RMONTOYA').Id,COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00002' => new Course_Delivery__c(LOCATION__C='Paris, France',        REGION__C='EMEA', START_DATE__C=System.today()-170,STATUS__C='Cancelled',INSTRUCTOR__c=users.get('VBOUDIN').Id, COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00003' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()-160,STATUS__C='Cancelled',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00004' => new Course_Delivery__c(LOCATION__C='London, United Kingdom',       REGION__C='EMEA', START_DATE__C=System.today()-180,STATUS__C='Delivered',INSTRUCTOR__c=users.get('HROSEN').Id,  COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00005' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()-190,STATUS__C='Delivered',INSTRUCTOR__c=users.get('SVINCENT').Id,COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00007' => new Course_Delivery__c(LOCATION__C='Toronto, Canada',      REGION__C='NAMER',START_DATE__C=System.today()-120,STATUS__C='Delivered',INSTRUCTOR__c=users.get('PHUGHES').Id, COURSE__C=courses.get('[103] AWCA Security').Id),
			'DELIVERY-00008' => new Course_Delivery__c(LOCATION__C='Tokyo, Japan',        REGION__C='APAC', START_DATE__C=System.today()-200,STATUS__C='Cancelled',INSTRUCTOR__c=users.get('AKATO').Id,   COURSE__C=courses.get('[201] AWCP Server').Id),
			'DELIVERY-00009' => new Course_Delivery__c(LOCATION__C='Paris, France',        REGION__C='EMEA', START_DATE__C=System.today()-150,STATUS__C='Cancelled',INSTRUCTOR__c=users.get('VBOUDIN').Id, COURSE__C=courses.get('[202] AWCP Network').Id),
			'DELIVERY-00010' => new Course_Delivery__c(LOCATION__C='Tokyo, Japan',        REGION__C='APAC', START_DATE__C=System.today()-160,STATUS__C='Delivered',INSTRUCTOR__c=users.get('AKATO').Id,   COURSE__C=courses.get('[203] AWCP Security').Id),
			'DELIVERY-00011' => new Course_Delivery__c(LOCATION__C='Berlin, Germany',       REGION__C='EMEA', START_DATE__C=System.today()-160,STATUS__C='Cancelled',INSTRUCTOR__c=users.get('EPETERS').Id, COURSE__C=courses.get('[301] AWCM Server').Id),
			'DELIVERY-00012' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()-60, STATUS__C='Delivered',INSTRUCTOR__c=users.get('SVINCENT').Id,COURSE__C=courses.get('[401] Data Recovery').Id),
			'DELIVERY-00013' => new Course_Delivery__c(LOCATION__C='London, United Kingdom',       REGION__C='EMEA', START_DATE__C=System.today()-120,STATUS__C='Delivered',INSTRUCTOR__c=users.get('HROSEN').Id,  COURSE__C=courses.get('[402] Managing Network Load').Id),
			'DELIVERY-00014' => new Course_Delivery__c(LOCATION__C='Toronto, Canada',      REGION__C='NAMER',START_DATE__C=System.today()-100,STATUS__C='Delivered',INSTRUCTOR__c=users.get('PHUGHES').Id, COURSE__C=courses.get('[301] AWCM Server').Id),
			'DELIVERY-00015' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()-100,STATUS__C='Delivered',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[302] AWCM Network').Id),
			'DELIVERY-00016' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()-90, STATUS__C='Delivered',INSTRUCTOR__c=users.get('SVINCENT').Id,COURSE__C=courses.get('[303] AWCM Security').Id),
			'DELIVERY-00017' => new Course_Delivery__c(LOCATION__C='Paris, France',        REGION__C='EMEA', START_DATE__C=System.today()-90, STATUS__C='Delivered',INSTRUCTOR__c=users.get('VBOUDIN').Id, COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00018' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()-80, STATUS__C='Delivered',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00019' => new Course_Delivery__c(LOCATION__C='London, United Kingdom',       REGION__C='EMEA', START_DATE__C=System.today()-90, STATUS__C='Delivered',INSTRUCTOR__c=users.get('HROSEN').Id,  COURSE__C=courses.get('[201] AWCP Server').Id),
			'DELIVERY-00020' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()-90, STATUS__C='Delivered',INSTRUCTOR__c=users.get('SVINCENT').Id,COURSE__C=courses.get('[202] AWCP Network').Id),
			'DELIVERY-00021' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()-80, STATUS__C='Cancelled',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[203] AWCP Security').Id),
			'DELIVERY-00022' => new Course_Delivery__c(LOCATION__C='Toronto, Canada',      REGION__C='NAMER',START_DATE__C=System.today()-60, STATUS__C='Delivered',INSTRUCTOR__c=users.get('PHUGHES').Id, COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00023' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()-60, STATUS__C='Delivered',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[103] AWCA Security').Id),
			'DELIVERY-00024' => new Course_Delivery__c(LOCATION__C='Toronto, Canada',      REGION__C='NAMER',START_DATE__C=System.today()-30, STATUS__C='Cancelled',INSTRUCTOR__c=users.get('PHUGHES').Id, COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00025' => new Course_Delivery__c(LOCATION__C='London, United Kingdom',       REGION__C='EMEA', START_DATE__C=System.today()+20, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('HROSEN').Id,  COURSE__C=courses.get('[101] AWCA Server').Id),
			'DELIVERY-00026' => new Course_Delivery__c(LOCATION__C='Berlin, Germany',       REGION__C='EMEA', START_DATE__C=System.today()+20, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('EPETERS').Id, COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00027' => new Course_Delivery__c(LOCATION__C='San Francisco, United States',REGION__C='NAMER',START_DATE__C=System.today()+30, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('RMONTOYA').Id,COURSE__C=courses.get('[103] AWCA Security').Id),
			'DELIVERY-00028' => new Course_Delivery__c(LOCATION__C='San Francisco, United States',REGION__C='NAMER',START_DATE__C=System.today()+30, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('RMONTOYA').Id,COURSE__C=courses.get('[201] AWCP Server').Id),
			'DELIVERY-00029' => new Course_Delivery__c(LOCATION__C='Tokyo, Japan',        REGION__C='APAC', START_DATE__C=System.today()+40, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('AKATO').Id,   COURSE__C=courses.get('[202] AWCP Network').Id),
			'DELIVERY-00030' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()+40, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('SVINCENT').Id,COURSE__C=courses.get('[301] AWCM Server').Id),
			'DELIVERY-00031' => new Course_Delivery__c(LOCATION__C='London, United Kingdom',       REGION__C='EMEA', START_DATE__C=System.today()+50, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('HROSEN').Id,  COURSE__C=courses.get('[303] AWCM Security').Id),
			'DELIVERY-00032' => new Course_Delivery__c(LOCATION__C='Singapore, Singapore',    REGION__C='APAC', START_DATE__C=System.today()+60, STATUS__C='Scheduled',INSTRUCTOR__c=users.get('KTRAN').Id,   COURSE__C=courses.get('[401] Data Recovery').Id),
			'DELIVERY-00033' => new Course_Delivery__c(LOCATION__C='',                 REGION__C='',                                      STATUS__C='Scheduled',                                       COURSE__C=courses.get('[102] AWCA Network').Id),
			'DELIVERY-00034' => new Course_Delivery__c(LOCATION__C='Chicago, United States',      REGION__C='NAMER',START_DATE__C=System.today()+40, STATUS__C='Scheduled',                                       COURSE__C=courses.get('[101] AWCA Server').Id)
		};
		insert deliveries.values();
		
		return deliveries;
	}
}