# RatingProject
## Project description at the bottom

> Commit
> Test Coverage

## Test Coverage

After conscientiously creating tests for the application, my focus shifted towards establishing thorough "test coverage." This metric measures the percentage of the source code covered by unit tests. Its significance lies in its ability to identify sections of untested code and evaluate the overall quality and stability of the application.

### Result:

Exciting news! Project has successfully achieved a flawless `100% test coverage`. This milestone underscores my dedication to producing a resilient and top-tier software product.

![Test-Coverage](https://github.com/KacperMajcher/rating/assets/142928291/b3a7cf94-122a-4d98-ac94-732eff5870a8)
![Tests](https://github.com/KacperMajcher/rating/assets/142928291/47d52dee-73fc-4cac-aeaf-d056ac283e6b)

> Commit
> [Add new DeadlineRepository tests](https://github.com/KacperMajcher/rating/commit/4fcb2659af31df3fc5c8f076535bbc860c6755b8)
> Nov 13, 2023, 10:59 AM

# DeadlineRepository Tests Documentation

## Test Scopes
### 1. **getDeadlineData() Function**
   - **Test 1:** Retrieving a stream of DeadlineItems.
    - Verifies that the `getDeadlineData` function returns a stream of DeadlineItems when valid data is provided.
  
### 2. **add() Function**
   - **Test 1:** Calling addDeadline once with provided parameters.
    - Ensures that the `add` function calls `addDeadline` on the remote data source once with the provided parameters.
   - **Test 2:** Throwing exception if addDeadline on remote data source throws.
    - Verifies that the `add` function throws an exception if `addDeadline` on the remote data source throws.

### 3. **setAsDone() Function**
   - **Test 1:** Calling setAsDone with ID once.
    - Ensures that the `setAsDone` function calls `setAsDone` with the provided ID once.

### 4. **filterItems() Function**
   - **Test 1:** Retrieving a list of DeadlineItems.
    - Verifies that the `filterItems` function returns a list of DeadlineItems when valid data is provided.
   
### 5. **remove() Function**
   - **Test 1:** Calling delete() with ID once.
    - Ensures that the `remove` function calls `delete` with the provided ID once.

> Commit
> [Add new HomeCubit tests](https://github.com/KacperMajcher/rating/commit/e4ab4afff915b3422c86785e20a96b27833c0ad6)
> Nov 13, 2023, 10:07 AM

# HomeCubit Tests Documentation

## Test Scopes
### 1. **getDeadlineItems() Function**
   - **Test 1:** Checking the loading and success states with valid deadline items.
    - Verifies that the `getDeadlineItems` function emits loading and success states when valid deadline items are fetched.
   - **Test 2:** Checking the loading and error states when an error occurs during fetching.
    - Ensures that the `getDeadlineItems` function emits loading and error states when an error occurs during the fetch operation.

### 2. **filterItems() Function**
   - **Test 1:** Checking the return of deadlines when no keyword is entered.
    - Verifies that the `filterItems` function returns all deadlines when no keyword is provided.
   - **Test 2:** Checking the return of filtered deadlines when a keyword is entered.
    - Ensures that the `filterItems` function returns the correct filtered deadlines when a keyword is provided.
   - **Test 3:** Checking the return of filtered deadlines when no items match the keyword.
    - Verifies that the `filterItems` function returns an empty list when no deadlines match the provided keyword.

### 3. **remove() Function**
   - **Test 1:** Checking the correct removal of an element from the list.
    - Ensures that the `remove` function removes the specified deadline from the list.

### 4. **toggleCheckBox() Function**
   - **Test 1:** Checking the success status after calling the `setAsDone` method.
    - Verifies that the `toggleCheckBox` function emits a success status after successfully calling the `setAsDone` method.

> Commit
> [Implement getIt in add page](https://github.com/KacperMajcher/rating/commit/930ad4afda3d2946be0724a5ce0e978715b31eb9)
> Nov 11, 2023, 3:54 PM

> Commit
> [Test PodcasterRepository](https://github.com/KacperMajcher/rating/commit/11b3d1fd7c44eee2d066523e467a199d834295c0)
> Nov 11, 2023, 2:40 PM

## The PodcasterRepository tests have been added
### The getPodcasterModel() function has received tests:
- Checking if the remoteDataSource.getPodcasterData() method is called.
- Checking the return of the list of podcasters.

> Commit
> [Test PodcasterModel](https://github.com/KacperMajcher/rating/commit/1ac341e83d8c6efc65f266fe42b069a225cd3970)
> Nov 11, 2023, 2:26 PM

## The PodcasterModel tests have been added
### The PodcasterModel.fromJson() method has received tests:
- Checking if the provided map supplies the desired PodcasterModel.
  - Verifies that the expected PodcasterModel is correctly created from the provided map.

> Commit
> [Test PodcastersCubit](https://github.com/KacperMajcher/rating/commit/54f80c01641686614c9bc77dd43dac77001b3f6a)
> Nov 11, 2023, 2:06 PM

## The PodcastersCubit tests have been added
### The getPodcasterModels() function has received tests:
- Checking the method call to getPodcasterModel() once at the start.
- Checking the successful emission of Status.loading followed by Status.success with results.
- Checking the emission of Status.loading followed by Status.error with an error message.

> Commit
> [Test AddCubit](https://github.com/KacperMajcher/rating/commit/fc7017658216ce6258bc45a86847006a99ba088c)
> Nov 11, 2023, 12:17 PM

## The AddCubit tests have been added
### The AddCubit has been tested for:
- Successful addition, returning Status.success after adding a deadline.
- Unsuccessful addition, returning Status.error and the appropriate error message after a failed attempt to add a deadline.

> Commit
> [Test DeadlineModel](https://github.com/KacperMajcher/rating/commit/f2336f68043e9406b30659cc6d5dddb40a64759b)
> Nov 11, 2023, 11:28 AM

## The DeadlineModel tests have been added
### Test scopes:
### Constructor and Serialization
- Verify that the constructor creates a DeadlineItem with correct data.
- Confirm that serialized data matches expectations.
### Default Values
- Check if default values are set correctly.
### daysLeft() Method
- Ensure the daysLeft method returns the correct number of days.
### deadlineDateFormatted() Method
- Check if the deadlineDateFormatted method returns a correctly formatted date.
### TimeStampSerializer Tests
- Test serialization/deserialization with TimeStampSerializer.
- Confirm that fromJson converts a timestamp to DateTime.
- Confirm that toJson converts DateTime to a timestamp.

> Commit
> [Update ArtistModel Tests](https://github.com/KacperMajcher/rating/commit/d510607ed5919379c50d168d8b81d1cc853e9616)
> Nov 11, 2023, 10:31 AM

> Commit
> [Test DeadlineRepository](https://github.com/KacperMajcher/rating/commit/5bfbe8b8eddd434ee57f3770510d411a5b453975)
> Nov 11, 2023, 10:26 AM

## The DeadlineRepository test have been added
 ### The getDeadlineData() function has received test:
- Checking the correct list of deadlines is returned

> Commit
> [Test HomeCubit](https://github.com/KacperMajcher/rating/commit/9d550866c0a4368ca0ee772b38916b880f12c373)
> Nov 11, 2023, 9:41 AM

## The HomeCubit tests have been added
### Test scopes:
### The filterItems() function has received tests:
-  Checking the return of deadlines when no keyword is entered.
-  Checking the return of filtered deadlines when a keyword is entered.
-  Checking the return of filtered deadlines when no items match the keyword.
### The remove() function has received tests:
- Checking the correct removal of an element from the list.
 ### The toggleCheckBox() function has received tests:
- Checking the success status after calling the setAsDone method.

> Commit
> [Standardize error handling](https://github.com/KacperMajcher/rating/commit/37f52caffe83861d0afb1264af9ccfcefd998297)
> Nov 11, 2023, 9:27 AM

## Error handling has been standardized. The entire application now utilizes a single method

> Commit
> [Add podcasters section](https://github.com/KacperMajcher/rating/commit/3debc05d5e54121306ebce0be613458dea71aad6)
> Nov 10, 2023, 1:38 PM

## A top podcasters section has been added to the project
## Users can now confidently discover which of their favorites have made it to the top rankings and explore details about other creators. Within the application, they can access biographies, top songs/podcasts, and titles for each artist. Additionally, visually appealing graphics are showcased throughout the application for a more immersive experience!

# Current appearance of the application

https://github.com/KacperMajcher/rating/assets/142928291/fd321f37-fb1d-4498-8a50-c6b1f7b0337d

> Commit
> [Update the graphics database in the application](https://github.com/KacperMajcher/rating/commit/fd56a41ec69990a741c52d509922effcfc76bb6f)
> Nov 10, 2023, 12:34 PM

## The graphics database in the application has been expanded
## Previous graphics have been removed and replaced with better-looking and more relevant graphics generated by AI
## Within the artist model, a recent addition includes the introduction of the 'coverNumber' variable, serving the purpose of presenting the fitting album cover for each record
## New graphics have been introduced for podcast screens, hinting at the upcoming launch of this section later today
## For podcasters, the 'coverNumber' variable is used to display the podcast cover

> Commit
> [Remove the reference to remoteDataSource from Cubit for the remove method](https://github.com/KacperMajcher/rating/commit/699ab97befe17764d58adb37bd0d1c1b2e868040)
> Nov 9, 2023, 6:37 PM

> Commit
> [Wrap deadlines in generators](https://github.com/KacperMajcher/rating/commit/7324f576b59cf3709e945d6c82d28ffe2e9ad33e)
> Nov 9, 2023, 4:59 PM

## To the home/deadlines part, the following features have been added: freezed, json serializable and injectable
## This has resulted in the creation of generating and simplifying code methods
## Thanks to freezed, I will also be able to start testing this part of the application

> Commit
> [Add flavors](https://github.com/KacperMajcher/rating/commit/eeb71050e7c7535a9547737e73a62823445c9285)
> Nov 9, 2023, 9:59 AM

## Various configuration options (flavors) have been added to the application
## Currently, their functionality supports production and development configurations
## A new file, 'main_production.dart,' has been created, which is invoked when the production version is launched
## Notably, this file does not include the 'debug' bar in the upper right corner of the screen
## Regardless of the chosen flavor, we have also implemented a hardcoded link to the API server for different application flavors. If necessary, these links can be modified in one central location, ensuring the correct functioning of the entire application

> Commit
> [Improve the functionality of the daysLeft() function](https://github.com/KacperMajcher/rating/commit/cb893fe119c0e3db6b733db101fbf7ba7e373590)
> Nov 8, 2023, 7:26 PM

## The function daysLeft() has been improved
## It now correctly displays the number of days remaining until the deadline


> Commit
> [Optimize the performance of the 'remove' method](https://github.com/KacperMajcher/rating/commit/10cf5ffd6f791eb1695eb4fa855fc698c761a6d5)
> Nov 8, 2023, 7:16 PM

> Commit
> [Fix searchBar in DeadlinePage](https://github.com/KacperMajcher/rating/commit/2cd60e624f1dd8845febb15caf743c8bee986adb)
> Nov 8, 2023, 5:43 PM

## The search bar on the deadline page has been fixed
## Cubit retrieves a method from the data source

> Commit
> [Add real-time checkbox toggler](https://github.com/KacperMajcher/rating/commit/7131b71675e056ce15e0c8cad743ebd045ce6f0d)
> Nov 8, 2023, 5:28 PM

## The method responsible for changing the state of deadlines has been updated
## The method now sends a signal directly to Firebase
## Cubit retrieves a method from the data source

> Commit
> [Move the method of adding tasks to data source](https://github.com/KacperMajcher/rating/commit/5f50989ef0712cc9b701efcae7c493a7330b9fd2)
> Nov 8, 2023, 5:00 PM

## The method for adding a new task to the Firebase database has been moved to the deadline data source file

> Commit
> [Pop-up add page screen after saving](https://github.com/KacperMajcher/rating/commit/4c9d16cb41297d5cdda6301989b67183b41e3e32)
> Nov 7, 2023, 3:03 PM

## The screen is popped up after saving thanks to the Bloc Consumer

> Commit
> [Change the date display format](https://github.com/KacperMajcher/rating/commit/cd5cbf8b5df471439b1db2324b1222712078f1a8)
> Nov 7, 2023, 2:51 PM

## The date display format in the Add Page has been changed to be more readable

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/bea8cf92-5312-4b6c-b84d-bae4617b0ea2)

> Commit
> [Change the color palette of the date picker](https://github.com/KacperMajcher/rating/commit/cf3cb4bb8572bc5c6fccf4a81fe4bbd71c797306)
> Nov 7, 2023, 2:45 PM

## The color palette of the date picker has been changed to match the application's visual style

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/1811db21-0030-41ea-8ab0-210159e154b3)

> Commit
> [Add Add Page](https://github.com/KacperMajcher/rating/commit/f31bbce0ff2bb140d2515476bd7adb34752a5968)
> Nov 7, 2023, 2:19 PM

## An "Add Page" has been added to the application, accessible via an Elevated Button on the Home Page
## The tasks added in it are connected to the Firebase database, which refreshes after each action
## The "isDone" parameter for task completion is set to false by default
## The ability to confirm adding a task is only possible when both a deadline date and a task have been provided. In that case, the check icon button changes color and becomes clickable
## The deadline date can be set up to a maximum of 5 years in advance

https://github.com/KacperMajcher/rating/assets/142928291/3fcc11ea-e39c-4bc0-87af-03436857b3b9

> Commit
> [Add Dismissible to the deadlines](https://github.com/KacperMajcher/rating/commit/f9f2a20051c04a37a2593be06c327f9e1b046163)
> Nov 7, 2023, 10:59 AM

## A dismissible feature has been added to manage deadlines
## It is linked to the "remove" function, which communicates with the Firebase database and immediately removes the corresponding item from the list
## An interesting aspect is that the task is only deleted when it is swiped to the left; otherwise, it won't work
## In the background, on the left side of the screen, a trash can icon appears to indicate that this action will result in the removal of the task from the list

https://github.com/KacperMajcher/rating/assets/142928291/6bd10009-ea74-4a58-a374-4ce3e9eafa86

> Commit
> [Integrate the application with Firebase to display deadlines](https://github.com/KacperMajcher/rating/commit/cc99967fe57f149ea9e78ee06b59838f440eefad)
> Nov 6, 2023, 5:39 PM

## The application has been integrated with Firebase Firestore, where deadlines are stored
## The application retrieves them in real-time using StreamSubscription, and a newly created deadline data source operates on a stream
## The fromJson method has been added to the DeadlineModel
## Some minor adjustments have been applied to the DeadlineItemWidget
## Many new deadlines have been added to the list

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/5680583b-29b8-4d77-b403-0c84556b46a1)

> Commit
> [Test ArtistCubit](https://github.com/KacperMajcher/rating/commit/cf4439fe5628a0bd42dee5a8724c3965a09f4e6e)
> Nov 6, 2023, 2:25 PM

## The ArtistCubit has been equipped with its own set of tests
## The bloc_test plugin has also been used to simplify the process of testing blocs

## The tests for ArtistCubit within the project serve the following purposes:

### 1. Verifying that the getArtistModel method is invoked precisely once.
### 2. Confirming that the getArtistModel method emits the correct states when there is a success or error scenario.

> Commit
> [Test the getArtistModel method in the artists repository](https://github.com/KacperMajcher/rating/commit/90a8ac3aca8d6184095e2f82ef14a324a6d837ce)
> Nov 6, 2023, 1:16 PM

## Tests for the artist repository have been added to the project
## Their role is to confirm the proper operation of the getArtistModel method. These tests aim to ensure that the method is invoked correctly and that it returns the expected list of artists
## These tests need to work offline to ensure consistent results, so an expectedArtists list was created, containing mock data that is used in the test
## In the code, you can also notice a separation into three parts. This ensures that in the first part of the test, we provide the appropriate data, in the second part, we call the method we want to test, and in the third part, we use expect to make assertions

> Commit
> [Test ArtistModel .fromJson method](https://github.com/KacperMajcher/rating/commit/28406a8ecf96f64ea606720403b46949776982f8)
> Nov 6, 2023, 12:59 PM

## The test artist model has been added to the project
## The test verifies whether the .fromJson method correctly transforms the provided map into a model.

> Commit
> [Create a complete project documentation](https://github.com/KacperMajcher/rating/commit/8765576bef5bfd5ba300507bcfdaff0dcbb17f65)
> Nov 5, 2023, 4:07 PM

## The detailed documentation has been added to the readme file

> Commit
> [Implement auto registering for injectable](https://github.com/KacperMajcher/rating/commit/2a2663155eaaad8d63655505d6b34a62c71efdb2)
> Oct 30, 2023, 8:36 PM

## Automatic registration for injectable has been added in both the cubit and repository

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/1f7b8892-8236-41c0-8b07-aaeca3e02d12)

> Commit
> [Add field rename to remove @jsonkey's from code](https://github.com/KacperMajcher/rating/commit/be95466f9eb21021e2a04ce731d9cdaa8b6a44fc)
> Oct 30, 2023, 8:29 PM

## Field rename has been added to the project. Due to its design, it automatically converts parameters in the factory constructor

> Commit
> [Implement injectable (auto get_it)](https://github.com/KacperMajcher/rating/commit/46582af16ed6c7091ad394cebaf545868c318eca)
> Oct 30, 2023, 8:14 PM

## Automatic registration of elements to get_it has been added

> Commit
> [Implement get_it](https://github.com/KacperMajcher/rating/commit/16b6c01fb84e231112efa1410d8fa0cf02bdc025)
> Oct 30, 2023, 7:51PM

## References to Dio, repository, and data source have been removed from the ArtistPage (UI part of the application)

> Commit
> [Add Retrofit](https://github.com/KacperMajcher/rating/commit/51bd999e257a769fb4d5cefda3071518a351a697)
> Oct 30, 2023, 7:21 PM

## Retrofit implementation has been added to the project
## This has simplified the code. Retrofit returns the expected model.
## Retrofit is a file generator for Dio. In the next commit, references to Dio from the UI layer of the application will be removed

> Commit
> [Implement freezed to the project](https://github.com/KacperMajcher/rating/commit/a4f3f65d650db4b9e85f0a79d7a7da3a779964e7)
> Oct 30, 2023, 6:59 PM

## Freezed implementation has been added to the project
## This has simplified the code and made it printable
## Freezed was used in both the artist model and bloc

> Commit
> [Add Json Serailizable](https://github.com/KacperMajcher/rating/commit/214c4e398f0eed90f021ffa25da2c4fbe9e740a4)
> Oct 30, 2023, 2:19 PM

## Json Serializable has been added to the project. It allows for the automatic generation of the .fromJson() method.
## New deadlines with tasks related to generators have been added to the project

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/2732d66e-86f5-4527-b1d9-46774a561565)

# Current appearance of the application

https://github.com/KacperMajcher/rating/assets/142928291/31a2c3b7-c17f-4352-b702-b87e44c8721d

> Commit
> [Add Dio handling errors](https://github.com/KacperMajcher/rating/commit/0f67c2214fa45cf1b7987f2f4e0a9e1ad236e01b)
> Oct 29, 2023, 6:46 PM

## Add Dio handling errors

> Commit
> [Create ArtistsRemoteDioDataSource](https://github.com/KacperMajcher/rating/commit/c9e6097da8b9476eaa90fd8a81a47fc65c0e0912)
> Oct 29, 2023, 6:41 PM

## A Json API database has been added to the application in the ArtistsRemoteDioDataSource

> Commit
> [Convert Bloc Listener and Bloc Builder to Bloc Consumer](https://github.com/KacperMajcher/rating/commit/43b670b1e0b13e2d25c898c7bb92f850a67493ec)
> Oct 29, 2023, 6:21 PM

> Commit
> [Implement handling error to artist page](https://github.com/KacperMajcher/rating/commit/eeffbf641b11b856aae4a9621c2e11fbd3d44122)
> Oct 29, 2023, 6:14 PM

> Commit
> [Display data using .fromJson method](https://github.com/KacperMajcher/rating/commit/4456cdacaedb6193a35f4342d34feaf12f39ef78)
> Oct 29, 2023, 11:38 AM

## The model has been converted into a JSON list
## The data is displayed using the .fromJson method

> Commit
> [Improve artists details page look](https://github.com/KacperMajcher/rating/commit/f94487d98f45a9553adbc6aa4b0587bebfb960af)
> Oct 27, 2023, 4:43 PM

## The appearance of the Artists Details Page screen has been improved
## The best songs of the artists, their sample album covers (generated by AI), and the number of views for the songs have been provided for each of the screens
## A new deadline has been added

https://github.com/KacperMajcher/rating/assets/142928291/59af7740-a8ab-4728-a035-0e272c024a0d

> Commit
> [Create a suffix to optimize the display of 'day(s) left' in the DeadlineItemWidget](https://github.com/KacperMajcher/rating/commit/b96196dc12d09fde455b100bb1f3bb1b21ed460e)
> Oct 27, 2023, 12:04 AM

## In the main screen of the application, a suffix has been added to improve code readability. It is responsible for displaying an appropriate phrase related to the remaining days to complete a task from the list.
## The deadline list has been updated

![Check-for-changes](https://github.com/KacperMajcher/rating/assets/142928291/d23a0471-eaf3-4bab-9705-8e0783a50c02)

> Commit
> [Improve the display of deadlines](https://github.com/KacperMajcher/rating/commit/ad18e45541b93c73fb8e31abef8fb6206eff46f1)
> Oct 27, 2023, 11:47 AM

## The display of deadlines has been improved

> Commit
> [Implement prototype of artist details page](https://github.com/KacperMajcher/rating/commit/e67b7cda3792c50243ffd2923aa6c1142ce225e7)
> Oct 27, 2023, 11:11 AM

## The new data has been passed and displayed in the ArtistDetailsPage screen prototype

![Check-for-changes](https://github.com/KacperMajcher/rating/assets/142928291/7a2ff67d-7a41-4475-b5d7-fb41a1c2ce09)

> Commit
> [Add a new model to the ArtistModel](https://github.com/KacperMajcher/rating/commit/20889bc7edeff2935209f6714d13d43196d40e81)
> Oct 27, 2023, 11:04 AM

## The ArtistModel has been updated with a new model called TopSongs
## It contains data about the top 3 songs of the artist participating in the competition

> Commit
> [Add artists details page](https://github.com/KacperMajcher/rating/commit/b476b7d34177c93cbb74453d71f50ca69a75c9c7)
> Oct 26, 2023, 10:38 PM

## An artist details page has been added to the project, which will store more information about the listed artist in the future
## Using the onTap parameter in InkWell, clicking on an artist will navigate us to the artist details page screen
## New deadlines have been added to the list

> Commit
> [Add navigation to the main page in drawer](https://github.com/KacperMajcher/rating/commit/41b7e6ecfe4090b76911f333bb5eaf5776c6220c)
> Oct 25, 2023, 10:32 PM

## Navigation to the main page in drawer is added

![Check-for-changes](https://github.com/KacperMajcher/rating/assets/142928291/02c078e6-881e-4843-a8ec-849269f40c97)

> Commit
> [Improve artists page look](https://github.com/KacperMajcher/rating/commit/56a4a156e284333d5b2d579ebdc7362331bb5eca)
> Oct 25, 2023, 10:21 PM

## The appearance of the artist page has been improved
## New images (generated by artificial intelligence) will be used as avatars for the artists

### Check for changes

https://github.com/KacperMajcher/rating/assets/142928291/d0fd1560-4067-497f-8a29-0d0ee0d96ddf

> Commit
> [Add AI-generated images to the project](https://github.com/KacperMajcher/rating/commit/52168fdb8c57d1b5e5b7e79a671ce2875949a893)
> Oct 25, 2023, 10:16 PM

## The project has had AI-generated images added, which serve as avatars for artists in the listing

> Commit
> [Create artist page prototype](https://github.com/KacperMajcher/rating/commit/15c1323ef271f9ba1b1d289fe8eaf11b2f9290d4)
> Oct 25, 2023, 6:12 PM

## A prototype of the artist page has been created
## The screen is divided into parts - there's a header, a search bar, and a list of containers where rankings are entered (each window represents one artist)
## The data is fetched in the same way

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/4a973c64-cbd3-4528-9533-032b63a2f949)

> Commit
> [Create mocked data source and convert model to models list](https://github.com/KacperMajcher/rating/commit/ebbafb924afdb1b066b9eba7a352a0d898ef7d17)
> Oct 25, 2023, 4:17 PM

## The remote data source for the artist page has been added to the project
## A list of sample artists has been included in the remote data source
## Artists from the remote data source are displayed on the artist page
## The artists on the homepage are displayed using the artistItemWidget in a listView

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/16ab726d-d570-4b35-ab5a-5159ad6468c1)

> Commit
> [Create artist repository](https://github.com/KacperMajcher/rating/commit/2bd922da73326e7d329b025006d743b3f25d6fbb)
> Oct 25, 2023, 3:17 PM

## An artist repository has been created
## Using the getArtistItems function, elements from the artistmodel are passed to Cubit, and then they are displayed on the artist page

> Commit
> [Create artist model](https://github.com/KacperMajcher/rating/commit/caf25ff8f79ef4a8879f5fb0387ec87bf97fe012)
> Oct 25, 2023, 3:06 PM

## An artist model was developed
## This model is integrated into the Cubic system. More specifically, this model is used within the "getArtistItems" function, where particular author is assigned to the model
## The model, along with its assigned author, is presented and showcased on a web page

> Commit
> [Build BLoC for articles page](https://github.com/KacperMajcher/rating/commit/c49fccc20ad8700ee15cbd0d9f756ea3b446d80d)
> Oct 25, 2023, 12:52 PM

## Implement BLoC for articles page
## Pass data from Cubit to the view

> Commit
> [Display sample data on the artist page](https://github.com/KacperMajcher/rating/commit/14c2104e77486d87e2907a74594f953f70df1693)
> Oct 25, 2023, 12:01 PM

## Display sample data on the artist page

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/57a86635-ae25-4cba-a7c7-ba2a64e1f042)

> Commit
> [Handle errors in home with switch](https://github.com/KacperMajcher/rating/commit/da26dc5563f8cb4c1463238879edd431a5818732)
> Oct 25, 2023, 11:30 AM

## Using the added enum, the switch function allows for controlling the states in the home

## status.initial
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/0ae090cf-10d6-4800-840c-e0ea37098745)

## status.loading
https://github.com/KacperMajcher/rating/assets/142928291/88892d6b-1db6-4c9d-9655-8b0b30a33226

## status.error
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/4adf5173-b10b-49bc-a44a-850a5acda2ea)

## status.success
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/6e28fadc-935a-4efe-8723-76ace2e6889f)

> Commit
> [Add enums](https://github.com/KacperMajcher/rating/commit/a4707cff0299da3110e3a8ef2cfa452dc0e5b338)
> Oct 25, 2023, 11:23 AM

## Enums has been added to the project

> Commit
> [Fix transparent searchbox background](https://github.com/KacperMajcher/rating/commit/0cb33282ba6f5cd95c3eae773c4c075ba8767e26)
> Oct 25, 2023, 9:41 AM

## The semi-transparent tile color on the homepage behind the search bar has been concealed by a container using a stack
### The issue was with the widgets in a ListView that extended beyond the expanded area. They have been covered by a container and are now invisible
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/c93b9f50-2749-4095-88c3-40179a553ce8)
### After cutting the tile color
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/d46111dd-8f60-4607-b975-6553aef71f3c)
## Final (with stack)
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/714d99d4-bcc7-426d-9dee-f720ad148d60)

> Commit
> [Integrate BLoC with main app view](https://github.com/KacperMajcher/rating/commit/d0532bb59e1892a1a7c3f7ab5fa4e5221f7aad9a)
> Oct 25, 2023, 6:41 AM

## The block has been integrated into the main application view (including the item filtering function and task completion value modification)

![Check-progress-here](https://github.com/adamsmaka/cantwait28/assets/142928291/3aaa30c0-3226-4aa9-8042-e2f6c503f93c)

> Commit
> [Connect repository and home page through BLoC](https://github.com/KacperMajcher/rating/commit/b995723edd46c9b61e21df5ab23123659c69c005)
> Oct 24, 2023, 8:37 AM

## Items from the repository were passed to the homepage through a block

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/6b9c2aca-d97b-43ff-b645-9003de088d95)

> Commit
> [Implement BLoC](https://github.com/KacperMajcher/rating/commit/5eaaafaa1553f62edc27bb07bfdb7a951e6159f1)
> Oct 24, 2023, 8:08 AM

## BLoC has been added to the project
## The HomePage received a Cubit, and the first hardcoded data has been passed to a sample view

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/56e1334b-6f62-42f7-87ea-3035fd54a5cd)

> Commit
> [Add deadline repository](https://github.com/KacperMajcher/rating/commit/7ed13f4b1b77bdbae3e90b1835ca16ad82919ea9)
> Oct 24, 2023, 7:37 AM

## Deadline repository has been added to the project, storing all the deadlines in the application
## New deadlines have been added to the list

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/5467ae16-9e5a-417b-bae3-cf7d36c89bb8)

> Commit
> [Implement Flutterfire UI](https://github.com/KacperMajcher/rating/commit/a51efcb3ee01cbb801f275b2cf450553409b80ef)
> Oct 21, 2023, 7:34 PM

## The application now features the capability to allow users to log in via email and Google accounts
## The application utilizes the FlutterFire UI module
## A user screen has been added, accessible by clicking the "your profile" button in the drawer

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/bdb9b1da-890c-47e3-abf4-9d78fc2c038b)

> Commit
> [Organize files](https://github.com/KacperMajcher/rating/commit/b36a0cb9d80c56419196343563194cf92250e004)
> Oct 21, 2023, 6:24 PM

> Commit
> [Add podcasters and artists page](https://github.com/KacperMajcher/rating/commit/a33bc9ce7b0946b0b275c3011629b357c99fc30c)
> Oct 20, 2023, 8:16 PM

## Artists and Podcasters pages have been added to the project
## Artists and Podcasters pages are accessible from the drawer by Navigator.push
## The drawer has become the rating page
## New tasks have been added to the deadline list

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/eb4ce211-060c-47e1-a979-90192e3eb163)

> Commit
> [Improve drawer's look](https://github.com/KacperMajcher/rating/commit/7c27814ed7c2959f64488b53c5daa6ce7a125316)
> Oct 20, 2023, 7:45 PM

## The appearance of the drawer has been improved
## The drawer has been moved to a new file in the 'widgets' folder
## References to the user page, artists, and podcasters pages have been added 
## The drawer displays an avatar of a sample user and greets them by name
## New icons have been added to the project
## The avatar of the sample user displayed in the drawer has been generated by artificial intelligence

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/78f2e9cb-b34d-4cc9-a163-be9437e274e7)

> Commit
> [Add navigation drawer to home page](https://github.com/KacperMajcher/rating/commit/7b97765ad7900980d57839473b547e94440f22e2)
> Oct 20, 2023, 11:55 AM

## In the project, a drawer has been added to open a menu with screens
## They have been described, and icons have been assigned to them
## Icons have been imported into the project and placed in the 'assets' folder
## New deadline tasks have also been added to the project

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/d2b51a46-bca3-4595-b0d3-9b298d9493c4)

> Commit
>[Add searchbox functionality](https://github.com/KacperMajcher/rating/commit/c31c372ad28197ef2e972382349b70f0f3eeaf35)
> Oct 19, 2023, 7:25 PM

## Add searchbox functionality 

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/83954ac6-7f74-487a-b62b-50f15f17d43c)
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/cce3d248-2076-4c08-9521-1567b402aa3c)

> Commit
> [Add checkboxes functionality](https://github.com/KacperMajcher/rating/commit/ab743d56d550c0957009ac00ed322cff2763643d)
> Oct 19, 2023, 6:24 PM

## Add checkboxes functionality 
After clicking the container, the text gets crossed out, and the checkbox fills in - this only works within the application; the code in the model and isChecked do not change. After refreshing the emulator, we return to the initial state - this will be fixed with the implementation of Firebase in the project.

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/1fa803f2-1ecb-4efb-9377-1696d95185a7)

> Commit
> [Install firebase core](https://github.com/KacperMajcher/rating/commit/326eba4633adb55c0ca923c622f36161366b4564)
> Oct 19, 2023, 1:13 PM

## Install firebase core

> Commit
> [Create deadline model](https://github.com/KacperMajcher/rating/commit/2bc1735b2094b82baebf014a0a381b2e12e49031)
> Oct 19, 2023, 12:08 AM

## Create deadline model
## Deadline item moved into a new folder
## Displaying deadline items using a for loop

> Commit
> [Implement search box](https://github.com/KacperMajcher/rating/commit/731b2bb36fba2984d0d0bafe000de51471b7be21)
> Oct 19, 2023, 10:20 AM

## Implement search box
## Add new deadlines for today

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/b13d94a8-9ada-4751-b8ca-70779b083988)

> Commit
> [Add a function checking if the number of days is singular](https://github.com/KacperMajcher/rating/commit/7d22172db885fc5948a0f4f3f2eb24678c0956cd)
> Oct 19, 2023, 10:05 AM

## Transparency from the "app planner" container when scrolling through tasks is removed. 
## The deadlines have been equipped with a function to check whether the number of remaining days until the deadline is singular or plural, allowing for the display of "day(s) left" in the appropriate format.

![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/eeadeddd-c3a6-417d-a020-383eea4495bf)

> Commit
> [Improve home_page look](https://github.com/KacperMajcher/rating/commit/037ace3302b35bc7ce2f07553c4a4a093f4daaaa)
> Oct 18, 2023, 2:54 PM

# Improve home page look
![Check-progress-here](https://github.com/KacperMajcher/rating/assets/142928291/b2d6c0b9-e005-49f4-8e54-7225d9e9acda)

> Commit
>  [Add home_page](https://github.com/KacperMajcher/rating/commit/198b76f701b097810f478a71b67aded1a63e5934)
>  Oct 17, 2023, 8:31 PM

 # I've placed the home screen into the "features" and added the first three tasks to it. 
 # I'm working on the "feature" branch to maintain code cleanliness.


> === Changes ===
> [Initialize project](https://github.com/KacperMajcher/rating/commit/0eb226fbee0f3cb1d1260fb34a9272c189f7f548)
> Oct 17, 2023, 08:06 PM


# --- Project Description ---

RatingProject is a project that fulfills one of my deepest dreams. It represents my approach to creating an application from scratch and, at the same time, provides an excellent opportunity to showcase my programming skills.

This application will evolve as the project progresses, fully demonstrating the extent of my capabilities. One of its main components will be the "Deadlines" screen, which will serve as a preview, allowing users to peek into the future and discover what's coming next for the application in the following weeks. The deadlines accompanying these previews will serve as evidence of my commitment and diligence in working on the project, always ensuring the timely delivery of solutions.

What exactly will this application be?
My goal is to explore all the possibilities offered by Flutter and create complex and appealing screens. I plan to create a "To-Do List" module, which will not only help users organize their tasks but also provide a preview of what's coming soon in the application.

Additionally, the project will include a module that fetches data from an external REST API. This module will introduce users to two exciting categories: "Artists" and "Podcasters." Each of these categories will take them into the world of the top 5 artists or podcasters in the current rankings. Users will be able to discover their episodes, music tracks, podcasts, and learn more about each of them through available details.

It's worth noting that the database used by the application is not real but generated by advanced artificial intelligence. These data will then be converted into JSON format and implemented in the application, creating an attractive and dynamic interface.

An essential part of the project will be the user login module. Initially, I will use a ready-made module from Firebase, but my long-term goal is to create a unique module tailored specifically to the needs of this application, showcasing my skills in authentication and user data management.

All of these elements together paint a complete picture of the RatingProject, which is both a personal challenge for me and proof of my skills in the field of advanced mobile application development.

From time to time, there will be updates in this document to reflect what has changed in the application.
