/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class BanHistory {
    public String id, bannedUserId, adminId, banReason, banDate, isRevorked;

    public BanHistory() {
    }

    public BanHistory(String id, String bannedUserId, String adminId, String banReason, String banDate, String isRevorked) {
        this.id = id;
        this.bannedUserId = bannedUserId;
        this.adminId = adminId;
        this.banReason = banReason;
        this.banDate = banDate;
        this.isRevorked = isRevorked;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBannedUserId() {
        return bannedUserId;
    }

    public void setBannedUserId(String bannedUserId) {
        this.bannedUserId = bannedUserId;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getBanReason() {
        return banReason;
    }

    public void setBanReason(String banReason) {
        this.banReason = banReason;
    }

    public String getBanDate() {
        return banDate;
    }

    public void setBanDate(String banDate) {
        this.banDate = banDate;
    }

    public String getIsRevorked() {
        return isRevorked;
    }

    public void setIsRevorked(String isRevorked) {
        this.isRevorked = isRevorked;
    }
    
    
}
