package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    List<Ad> all();
    Long insert(Ad ad);
    Ad findAdByTitle(String title);
    Ad findAdById(Long id);
    void deleteAds(Long id);
    void updateAds(Long id);

}
