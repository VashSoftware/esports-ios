import SwiftUI

struct MatchView: View {
    @State private var match: Match?
    @State private var error: Error?
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            if let error = error {
                Text("Error: \(error.localizedDescription)")
                    .foregroundColor(.red)
            } else if let match = match {
                VStack {
                    HStack {
                        VStack {
                            AsyncImage(url: URL(string: "https://mdixwlzweijevgjmcsmt.supabase.co/storage/v1/object/public/team_icons/1")) { image in
                                                            image
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fit)
                                                                .frame(width: 100, height: 100)
                                                                .clipShape(RoundedRectangle(cornerRadius: 100 / 4))
                                                        } placeholder: {
                                                            ProgressView()
                                                        }
                            Text("Team 1: \(match.match_participants[0].participants.id)")
                                .font(.custom("Times New Roman", size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("0")
                                .font(.custom("Times New Roman", size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                            .padding()
                        
                        VStack {
                            AsyncImage(url: URL(string: "https://mdixwlzweijevgjmcsmt.supabase.co/storage/v1/object/public/team_icons/2")) { image in
                                                            image
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fit)
                                                                .frame(width: 100, height: 100)
                                                                .clipShape(RoundedRectangle(cornerRadius: 100 / 4))
                                                        } placeholder: {
                                                            ProgressView()
                                                        }
                            Text("Team 2: \(match.match_participants[1].participants.id)")
                                .font(.custom("Times New Roman", size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("0")
                                .font(.custom("Times New Roman", size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .foregroundColor(.white)
            } else {
                ProgressView("Loading match data...")
                    .foregroundColor(.white)
            }
        }
        .preferredColorScheme(.dark)
        .task {
            await fetchMatch()
        }
    }
    
    func fetchMatch() async {
        do {
            error = nil
            self.match = try await SupabaseManager.shared.supabaseClient
                .database
                .from("matches")
                .select("*, match_participants(*, participants(*))")
                .eq("id", value: "3")
                .single()
                .execute()
                .value
            
        } catch {
            self.error = error
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
