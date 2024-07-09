package com.example.JobPortal.Service;

import java.util.List;

import com.example.JobPortal.Repo.JobRepo;
import com.example.JobPortal.models.JobPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class JobService {
    @Autowired
    public JobRepo repo;



    //method to return all JobPosts
    public List<JobPost> returnAllJobPosts() {
        return repo.returnAllJobPosts();


    }

    // method to add a jobPost
    public void addJobPost(JobPost jobPost) {
        repo.addJobPost(jobPost);

    }


}