package com.smartwardrobe.dao;


public class RecommendationDAO {

    // WEATHER RECOMMENDATION
    public String getWeatherRecommendation(String weather) {

        String suggestion = "";

        if (weather.equalsIgnoreCase("Hot")) {

            suggestion
                    = "Wear cotton clothes and light colors.";

        } else if (weather.equalsIgnoreCase("Rainy")) {

            suggestion
                    = "Wear jackets and waterproof footwear.";

        } else if (weather.equalsIgnoreCase("Winter")) {

            suggestion
                    = "Wear hoodies, sweaters and warm clothes.";
        }

        return suggestion;
    }

    // OCCASION RECOMMENDATION
    public String getOccasionRecommendation(String occasion) {

        String suggestion = "";

        if (occasion.equalsIgnoreCase("Party")) {

            suggestion
                    = "Party wear and stylish outfits recommended.";

        } else if (occasion.equalsIgnoreCase("Office")) {

            suggestion
                    = "Formal shirts and trousers recommended.";

        } else if (occasion.equalsIgnoreCase("Wedding")) {

            suggestion
                    = "Traditional or ethnic wear recommended.";
        }

        return suggestion;
    }

    // MUSIC MOOD RECOMMENDATION
    public String getMusicMoodRecommendation(String mood) {

        String suggestion = "";

        if (mood.equalsIgnoreCase("Workout")) {

            suggestion
                    = "Gym wear and sports shoes recommended.";

        } else if (mood.equalsIgnoreCase("Calm")) {

            suggestion
                    = "Casual and comfortable outfits recommended.";

        } else if (mood.equalsIgnoreCase("Party")) {

            suggestion
                    = "Trendy party outfits recommended.";

        } else if (mood.equalsIgnoreCase("Romantic")) {

            suggestion
                    = "Date outfits with matching colors recommended.";
        }

        return suggestion;
    }

    // COLOR MATCHING
    public String getColorRecommendation(String color) {

        String suggestion = "";

        if (color.equalsIgnoreCase("Black")) {

            suggestion
                    = "Black matches with white, grey and blue.";

        } else if (color.equalsIgnoreCase("Blue")) {

            suggestion
                    = "Blue matches with white and black.";

        } else if (color.equalsIgnoreCase("Red")) {

            suggestion
                    = "Red matches with black and white.";
        }

        return suggestion;
    }

    
}
