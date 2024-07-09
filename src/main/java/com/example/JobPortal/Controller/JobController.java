package com.example.JobPortal.Controller;


import com.example.JobPortal.Repo.JobRepo;
import com.example.JobPortal.models.JobPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobRepo service;

    @GetMapping({"/","/home"})
    public String home() {
        return "home";
    }


    @GetMapping({"/addJob"})
    public String addJob() {
        return "addJob";
    }

    @RequestMapping({"/deleteJob"})
    public void DeleteJob(@RequestParam("id") int id) {
        JobRepo jobRepo = new JobRepo();
        jobRepo.deleteJobPost(id);
    }

    @RequestMapping("/viewalljobs")
    public String viewJobs(Model model) {

        List<JobPost> jobPosts = service.returnAllJobPosts();
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
    }


    @RequestMapping("/handleForm")
    public String handleForm(JobPost jobPost, Model model) {
        model.addAttribute("jobPost", jobPost);
        service.addJobPost(jobPost);
        System.out.println(jobPost);
        return "success";
    }


    @RequestMapping("/contactus")
    public String contactUs(){
        return "contactus";
    }

}
