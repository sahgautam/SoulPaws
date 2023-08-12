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

