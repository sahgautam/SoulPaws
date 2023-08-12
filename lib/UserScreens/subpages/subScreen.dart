final data = FavoriteDogModel(
  userId: "1",
  dogId: '1',
  dogName: widget.dogName!,
  imageUrl: widget.imageLink!,
  breed: widget.breed!,
);

db.collection("adopt").add(data.toJson()).then((value) {
print("Added Data with ID: ${value.id}");
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
content: Text(
"Dog Applied for Adoption",
style: TextStyle(color: Colors.white),
)));
});
}

@override
void initState() {
_dogViewModel = Provider.of<DogViewModel>(context, listen: false);
_dogViewModel.getDog();
print("The Final Place -->${_dogViewModel.getDog()}");
super.initState();
pageController.addListener(() {
setState(() {
_currentPageValue = pageController.page!;
});
});
}

@override
Widget build(BuildContext context) {
var dog = context.watch<DogViewModel>().dog;
return SafeArea(
child: Scaffold(
body: Stack(children: [
Positioned(
left: 0,
right: 0,
child: Container(
width: double.maxFinite,
//takes all available width
height: MediaQuery.of(context).size.height / 2.2,
decoration: BoxDecoration(
image: DecorationImage(
fit: BoxFit.contain,
image: NetworkImage(widget.imageLink!))))),
Positioned(
top: MediaQuery.of(context).size.width * 0.1,
left: MediaQuery.of(context).size.width * 0.04,
right: MediaQuery.of(context).size.width * 0.03,
child: InkWell(
child: Row(
children: [
AppIcon(icon: Icons.arrow_back),
],
),
onTap: () {
Navigator.of(context).pop("/SubPage");
// MyConstants.holdNavigatePlaceDetails = null;
// Navigator.of(context).pop("/SubPages");
},
)),
Positioned(
left: 0,
right: 0,
bottom: 0,
top: MediaQuery.of(context).size.height / 2.5,
child: Container(
padding: EdgeInsets.only(
left: MediaQuery.of(context).size.height * 0.04,
right: MediaQuery.of(context).size.height * 0.03,
top: MediaQuery.of(context).size.height * 0.03,
),
decoration: BoxDecoration(
borderRadius: BorderRadius.only(
topRight: Radius.circular(40),
topLeft: Radius.circular(40)),
color: Colors.white),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
"Personality",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 5,
),
Expanded(
child: SingleChildScrollView(
child: ExpandableTextWidget(
Des_text: widget.dogDescription!,
),
),
),
Center(
child: AppColumn(
Name: widget.dogName!,
price: widget.price!,
color: widget.color!,
breed: widget.breed!,
),
),
SizedBox(
height: 15,
),
]))),
]),
