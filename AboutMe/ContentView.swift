//
//  ContentView.swift
//  AboutMe
//
//  Created by azizah ahmed alshami on 20/07/1445 AH.
//

import SwiftUI

struct CVModel {
    var name: String?
    var email: String?
    var phone: String?
    var linkedin: String?
    var github: String?
    var location: String?
    var education: String?
    var graduationYear: String?
    var objective: String?
    var achievements: [String]?
    var experiences: [String]?
    var courses: [String]?
}

struct ContentView: View {
    var cvModel = CVModel(
        name: "Azizah Alshami",
        email: "Azizah.alshami@hotmail.com",
        phone: "+966-599 15847",
        linkedin: "https://www.linkedin.com/in/azizah-alshami",
        github: "https://github.com/azizah110",
        location: "Saudi Arabia, Riyadh",
        education: "Bachelor of Computer Science\nUniversity of Tabuk\nClass of 2020",
        graduationYear: "2020",
        objective: """
        I am seeking a challenging position in a dynamic and ambitious environment to further enhance my knowledge and skills. As a self-learner with a passion for acquiring new skills, I am particularly interested in opportunities within the Technology sector related to my major. I aim to contribute to my team's success by leveraging my skills and experiences to achieve our collective vision and goals.
        """,
        achievements: [
            " - Team Lead (Front-End/Machine Learning and Design) for Apple Academy Macro Challenge 2023.",
            " - Created a Machine Learning model.",
            " - Established and managed my own perfume brand from 2016 to 2024.",
            " - Picto app idea selected from 4,000 ideas for the Social Investment Challenge presented by the National Center for the Nonprofit Sector. Qualified for the final stage with the best 29 ideas."
        ],
        experiences: [
            "6 months of marketing experience.",
            "1 year of experience in data collection.",
            "3 months of programming experience.",
            "Experience in building artificial intelligence."
        ],
        courses: [
            "- English Course at GATD.",
            "- NEOM English Language Skills Course.",
            "- Misk, Career Path Essentials Program.",
            "- Course in Artificial Intelligence Forum.",
            "- Microsoft Office Courses (Excel, Word, PowerPoint, Outlook).",
            "- Course in Cybersecurity Risks.",
            "- Apple Developer Academy - iOS Developer Internship."
        ]
    )
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(red: 0.944, green: 0.905, blue: 0.905))
                .ignoresSafeArea()
                .padding(.top, -30)
                .padding(.top, 1.0)
            
            
            ScrollView {
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(cvModel.name ?? "")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.387, green: 0.372, blue: 0.368))
                    Image("azizah")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
        
                    Text("Contact:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    Text("Email: \(cvModel.email ?? "")")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    Text("Phone: \(cvModel.phone ?? "")")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    Text("LinkedIn: \(cvModel.linkedin ?? "")")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    Text("GitHub: \(cvModel.github ?? "")").font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    Text("Location: \(cvModel.location ?? "")").font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    
                }
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Education:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    
                    Text(cvModel.education ?? "")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    
                    Divider()
                    Text("Objective:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    Text(cvModel.objective ?? "")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                    
                    Divider()
                    Text("Key Achievements:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.961, saturation: 0.648, brightness: 0.652))
                    
                    ForEach(cvModel.achievements ?? [], id: \.self) { achievement in
                        Text(achievement)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.983, saturation: 0.22, brightness: 0.305))
                        
        .background(Color(red: 0.902, green: 0.878, blue: 0.874))
                            .ignoresSafeArea()
                        
                    }
                    
                }.padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Working Experiences:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    
                    ForEach(cvModel.experiences ?? [], id: \.self) { experience in
                        Text(experience)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                            .ignoresSafeArea()
                        
                    }
                    
                    
                    Text("Courses & Certificates:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    ForEach(cvModel.courses ?? [], id: \.self) { course in
                        Text(course)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.28, green: 0.221, blue: 0.227))
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                            .ignoresSafeArea()
                        
                        
                        
                        
                    }
                    
                    
                    Text("Skills :")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.645, green: 0.222, blue: 0.322))
                    
                    ScrollView(.horizontal){
                        
                        
                        HStack{
                 
                            VStack{
                                
                                
                                Image("Priority")
                                    .frame(width: 100,height: 60)
                                Text("Priority management")
                                    .frame(width: 100,height: 40)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                  
                                
                            }
                            VStack{
                                Image("Time")
                                    .frame(width: 100,height: 60)
                                Text("Time Management")
                                    .frame(width: 100,height: 40)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            
                            }
                            VStack{
                                Image("Effective")
                                    .frame(width: 100,height: 60)
                                Text("Effective communication ")
                                    .frame(width: 100,height: 40)
                                    .font(.caption)
                                    .fontWeight(.semibold)
    
                            }
                           
                            VStack{
                                Image("Problem")
                                    .frame(width: 100,height: 60)
                                Text("Problem solving and decision making")
                                    .frame(width: 100,height: 40)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                
                            }
                            VStack{
                                Image("Work")
                                    .frame(width: 100,height:60)
                                Text("Work under pressure")
                                    .frame(width: 100,height: 40)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                
                            }
                         
                                VStack{
                                    Image("Teamwork")
                                        .frame(width: 100,height: 60)
                                    Text("Teamwork")
                                        .frame(width: 100,height: 40)
                                        .font(.caption)
                                        .fontWeight(.semibold)
                               
                            }
                               
                        }
                        
                    }
                }.padding()
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
