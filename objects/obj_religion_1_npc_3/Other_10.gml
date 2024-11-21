dialogue = "I believe I am making the most out of my life, but at some point this life will end, and then what? I don't really know what lies ahead for me, but my colleagues all believe that there isn't anything after death, and that scares me.";
choices = [];
conversation_type = 1;
if global.spoke_to_mystery {
	choices = ["Someone wise told me that what lies after is up to you. If practicing a religion gives you peace of mind, then go ahead."];
	special_choices = [true];
}