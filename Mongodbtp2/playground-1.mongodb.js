/* global use, db */
// MongoDB Playground
// To disable this template go to Settings | MongoDB | Use Default Template For Playground.
// Make sure you are connected to enable completions and to be able to run a playground.
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.
// The result of the last command run in a playground is shown on the results panel.
// By default the first 20 documents will be returned with a cursor.
// Use 'console.log()' to print to the debug output.
// For more documentation on playgrounds please refer to
// https://www.mongodb.com/docs/mongodb-vscode/playgrounds/

// Select the database to use.
use("dm");

// db.getCollection('restaurants').count()

// db.getCollection('restaurants').find().count()

// db.getCollection("restaurants").aggregate([
//     { $project: { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 } },
// ])

// db.getCollection("restaurants").aggregate([
//     { $project: { _id: 0, restaurant_id: 1, name: 1, borough: 1, cuisine: 1 } },
// ]);

// db.getCollection("restaurants").aggregate([
//     { $project: { _id: 0, restaurant_id: 1, name: 1, borough: 1, 'address.zipcode': 1 } },
// ]);

// db.getCollection("restaurants").find({
//     borough: 'Bronx'
// }).count()

// db.getCollection("restaurants").find({
//     borough: 'Bronx'
// }).limit(5).count()

// db.getCollection("restaurants").find({
//     borough: 'Bronx'
// }).skip(5).limit(5).count()

// db.getCollection("restaurants").find({
//     "grades.score": {$gt: 90}
// }).count()

// db.getCollection("restaurants").find({
//     "grades.score": {$gt: 80, $lt: 100}
// }).count()

// db.getCollection("restaurants").find({
//     cuisine: { $ne: "American" },
//     "grades.score": { $gt: 70 },
//     "address.coord.1": { $lt: -95.754168 }
// }).count()

// db.getCollection("restaurants").find({
//     cuisine: { $ne: "American" },
//     "grades.score": { $gt: 70 },
//     "address.coord.1": { $lt: -65.754168 }
// }).count()

// db.getCollection("restaurants").find({
// 	cuisine: { $ne: "American" },
// 	"grades.score": { $gt: 70 },
// 	"address.coord.0": { $lt: -65.754168 }
// }).count()

// db.getCollection("restaurants").find({
//     cuisine: { $ne: "American" },"grades.grade": "A",borough: { $ne: "Brooklyn" }
// }).sort({ cuisine: -1 }).count()

// db.getCollection("restaurants").find({
//     name: { $regex: '^Wil' }
// }, {
//     restaurant_id: 1,
//     name: 1,
//     borough: 1,
//     cuisine: 1
// }).count()

// db.getCollection("restaurants").find({
//     $or: [{ "grades.score": 2 },{ "grades.score": 6 }]
// }).count()

// db.getCollection("restaurants").find({
//     $and: [{
//         $or: [{ "grades.score": 2 },{ "grades.score": 6 }
//         ]},
//         { borough: "Manhattan" }
//     ]
// }).count()

// db.getCollection("restaurants").aggregate([
//     {
//         $group: {_id: "$cuisine",averageScore: { $avg: { $avg: "$grades.score" } }}
//     }
// ]).count()

// db.getCollection("restaurants").aggregate([
//     {
//         $unwind: "$grades"
//     },
//     {
//         $group: {_id: "$cuisine",highestScore: { $max: "$grades.score" }}
//     },
//     {
//         $sort: { highestScore: -1 }
//     }
// ])

// db.getCollection("restaurants").aggregate([
//     {
//         $unwind: "$grades"
//     },
//     {
//         $group: {_id: "$cuisine",lowestScore: { $min: "$grades.score" }}
//     },
//     {
//         $sort: { lowestScore: 1 }
//     }
// ])

// db.getCollection("restaurants").find({
//     "grades": {$elemMatch: {
//         "grade": "A",
//         "score": 11,
//         "date": ISODate("2014-08-11T00:00:00Z")
//         }
//     }
// },{
//     "restaurant_id": 1,
//     "name": 1,
//     "grades": 1
// })

db.getCollection("restaurants").aggregate([
    {
      $match: {
        cuisine: "Turkish"
      }
    },
    {
      $unwind: "$grades"
    },
    {
      $group: {
        _id: "$_id",
        restaurant_id: { $first: "$restaurant_id" },
        name: { $first: "$name" },
        borough: { $first: "$borough" },
        cuisine: { $first: "$cuisine" },
        averageScore: { $avg: "$grades.score" }
      }
    },
    {
      $sort: {
        averageScore: -1
      }
    },
    {
      $limit: 1
    }
  ])

// db.getCollection("restaurants").aggregate([
//     {
//       $unwind: "$grades"
//     },
//     {
//       $group: {
//         _id: "$_id",
//         restaurant_id: { $first: "$restaurant_id" },
//         name: { $first: "$name" },
//         borough: { $first: "$borough" },
//         cuisine: { $first: "$cuisine" },
//         totalScore: { $sum: "$grades.score" }
//       }
//     },
//     {
//       $sort: {
//         totalScore: -1
//       }
//     },
//     {
//       $limit: 1
//     }
// ])

// db.getCollection("restaurants").find({
//     cuisine: "Chinese",
//     borough: "Brooklyn"
// })

// db.getCollection("restaurants").aggregate([
//     {
//       $unwind: "$grades"
//     },
//     {
//       $sort: {
//         "grades.date": -1
//       }
//     },
//     {
//       $limit: 1
//     }
//   ])

// db.getCollection("restaurants").aggregate([
//     {
//       $unwind: "$grades"
//     },
//     {
//       $group: {
//         _id: {
//           cuisine: "$cuisine",
//           restaurant_id: "$restaurant_id",
//           name: "$name"
//         },
//         averageScore: { $avg: "$grades.score" }
//       }
//     },
//     {
//       $sort: {
//         "_id.cuisine": 1,
//         averageScore: -1
//       }
//     },
//     {
//       $group: {
//         _id: "$_id.cuisine",
//         restaurants: {
//           $push: {
//             restaurant_id: "$_id.restaurant_id",
//             name: "$_id.name",
//             averageScore: "$averageScore"
//           }
//         }
//       }
//     },
//     {
//       $project: {
//         _id: 0,
//         cuisine: "$_id",
//         restaurants: { $slice: ["$restaurants", 5] }
//       }
//     }
//   ])

// db.getCollection("restaurants").aggregate([
//     {
//       $match: {
//         "grades.grade": "A"
//       }
//     },
//     {
//       $group: {
//         _id: {
//           borough: "$borough",
//           restaurant_id: "$restaurant_id",
//           name: "$name"
//         },
//         totalAgrades: { $sum: 1 }
//       }
//     },
//     {
//       $sort: {
//         "_id.borough": 1,
//         totalAgrades: -1
//       }
//     },
//     {
//       $group: {
//         _id: "$_id.borough",
//         topRestaurants: {
//           $push: {
//             restaurant_id: "$_id.restaurant_id",
//             name: "$_id.name",
//             totalAgrades: "$totalAgrades"
//           }
//         }
//       }
//     },
//     {
//       $project: {
//         _id: 0,
//         borough: "$_id",
//         topRestaurants: { $slice: ["$topRestaurants", 5] }
//       }
//     }
//   ])

// db.getCollection("restaurants").aggregate([
//     {
//       $match: {
//         "grades.grade": "A",
//         "grades.score": { $gte: 90 }
//       }
//     },
//     {
//       $group: {
//         _id: "$borough",
//         count: { $sum: 1 }
//       }
//     },
//     {
//       $sort: {
//         count: -1
//       }
//     },
//     {
//       $limit: 1
//     }
//   ])
