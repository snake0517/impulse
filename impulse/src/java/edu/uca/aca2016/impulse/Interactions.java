/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uca.aca2016.impulse;

import java.io.Serializable;

/**
 *
 * @author brela
 */
public class Interactions implements Serializable {

    private int ClientId;
    private int InteracionId;
    private int Clientid;
    private String OccuredOn;
    private String ContactPerson;
    private String ContactType;
    private String Notes;

    public int getClientId() {
        return ClientId;
    }

    public void setClientId(int ClientId) {
        this.ClientId = ClientId;
    }

    public int getInteracionId() {
        return InteracionId;
    }

    public void setInteracionId(int InteracionId) {
        this.InteracionId = InteracionId;
    }

    public int getClientid() {
        return Clientid;
    }

    public void setClientid(int Clientid) {
        this.Clientid = Clientid;
    }

    public String getOccuredOn() {
        return OccuredOn;
    }

    public void setOccuredOn(String OccuredOn) {
        this.OccuredOn = OccuredOn;
    }

    public String getContactPerson() {
        return ContactPerson;
    }

    public void setContactPerson(String ContactPerson) {
        this.ContactPerson = ContactPerson;
    }

    public String getContactType() {
        return ContactType;
    }

    public void setContactType(String ContactType) {
        this.ContactType = ContactType;
    }

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String Notes) {
        this.Notes = Notes;
    }

}
