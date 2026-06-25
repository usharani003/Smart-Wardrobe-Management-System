package com.smartwardrobe.model;

public class Recommendation {

    private int recommendationId;

    private int userId;

    private String recommendationType;

    private String recommendationText;

    private String weather;
    private String occasion;
    private String musicMood;
    private String recommendedOutfit;
    private String generatedDate;

    public int getRecommendationId() {
        return recommendationId;
    }

    public void setRecommendationId(int recommendationId) {
        this.recommendationId = recommendationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getRecommendationType() {
        return recommendationType;
    }

    public void setRecommendationType(String recommendationType) {
        this.recommendationType = recommendationType;
    }

    public String getRecommendationText() {
        return recommendationText;
    }

    public void setRecommendationText(String recommendationText) {
        this.recommendationText = recommendationText;
    }

    public String getWeather() {
        return weather;
    }

    public void setWeather(String weather) {
        this.weather = weather;
    }

    public String getOccasion() {
        return occasion;
    }

    public void setOccasion(String occasion) {
        this.occasion = occasion;
    }

    public String getMusicMood() {
        return musicMood;
    }

    public void setMusicMood(String musicMood) {
        this.musicMood = musicMood;
    }

    public String getRecommendedOutfit() {
        return recommendedOutfit;
    }

    public void setRecommendedOutfit(String recommendedOutfit) {
        this.recommendedOutfit = recommendedOutfit;
    }

    public String getGeneratedDate() {
        return generatedDate;
    }

    public void setGeneratedDate(String generatedDate) {
        this.generatedDate = generatedDate;
    }
}
