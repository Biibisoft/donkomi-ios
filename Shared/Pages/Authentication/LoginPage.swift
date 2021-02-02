
import SwiftUI

struct LoginPage: View {
	@State var text = ""
	var body: some View {
		VStack{
			Spacer()
				.frame(height:130)
			VStack{
				Image.appLogo
					.resizable()
					.frame(width:100, height:70)
				Text("Sign Into Your Account")
					.fontWeight(.semibold)
					.foregroundColor(Color.appBlue)
					.padding()
				
				TextBox(text: $text, placeholder: "Email")
				TextBox(text: $text, placeholder: "Password")
			}
			Spacer()
			VStack{
				LongButton(text:"LOGIN")
				LongButton(text:"WITH GOOGLE", backgroundColor: Color.appRed)
			}
		}.padding([.leading,.trailing])
		
	}
}


struct LongButton : View {
	var text  = "Button Text"
	var backgroundColor = Color.appBlue
	var textColor = Color.white
	var body : some View {
		Button(action:{}, label:{
			Text(text)
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				.font(.system(size:18))
				.padding()
				.frame(maxWidth:.infinity)
				.background(backgroundColor)
				.foregroundColor(textColor)
		})
		
	}
}

struct TextBox : View {
	@Binding var text: String
	var  placeholder : String  = "Text"
	var  secure : Bool = false
	var body : some View {
		if secure {
			SecureField(placeholder, text: $text)
				.padding()
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(Color.appBlue)
				)
				.foregroundColor(Color.appBlue)
		}else{
			TextField(placeholder, text: $text)
				.padding()
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(Color.appBlue)
				)
				.foregroundColor(Color.appBlue)
		}
	}
	
}

struct LoginPage_Previews: PreviewProvider {
	static var previews: some View {
		LoginPage()
	}
}
