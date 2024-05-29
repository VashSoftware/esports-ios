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
                            Text("Team 1: \(match.id)")
                            Text("0")
                        }
                        
                        Spacer()
                            .padding()
                        
                        VStack {
                            Text("Team 2: \(match.id)")
                            Text("0")
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
                .select()
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
