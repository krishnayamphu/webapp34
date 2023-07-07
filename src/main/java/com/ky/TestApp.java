package com.ky;

import com.ky.dao.UserDAO;
import com.ky.models.User;
import org.apache.commons.codec.digest.DigestUtils;

import java.util.ArrayList;

public class TestApp {
    public static void main(String[] args) {
        System.out.println(DigestUtils.sha256Hex("hello"));
    }
}
