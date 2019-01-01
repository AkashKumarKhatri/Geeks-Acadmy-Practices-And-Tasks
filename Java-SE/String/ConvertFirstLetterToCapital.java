class ConvertFirstLetterToCapital {
	public static void main(String arg[]) {
		System.out.println(ConvertFirstLetterToCapital.capEachWord("    i Love my pakistan"));
	}
	static String capEachWord(String source) {
		String result = "";
		String[] splitString = source.trim().split(" ");
		for(String target : splitString){
			result += Character.toUpperCase(target.charAt(0)) + target.substring(1) + " ";
		}
		return result;
	}
}
