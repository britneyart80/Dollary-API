# Dollary API

### Technologies used
<li>Ruby on Rails</li>
<li>PostgreSQL</li>
<li>Bootstrap</li>


## Introduction

This is a back-end api server build with Ruby on Rails and was build to support my project, <a href="https://britneyart80.github.io/Dollary/">Dollary</a> (Click to check it out!). It utilizes SQL databases, Ruby and the Ruby on Rails server to build entity relationships and tables. There are 4 entities at the moment within the database table.

User -|--< Envelopes -|--< Spendings >--|- Categories

- A User has many envelopes, while an envelope belongs to a user.
- Envelopes belong to Users and have many spendings.
- Spendings belong to an envelope and a category
- Catories have many spendings

## Development Process

To develop this back-end API, I first planned out exactly what I wanted my app to do and what entities it would need. I utilized an ERD, Entity relationship diagram, to map out what fields and columns each entity would have as well as their relationships to one another. After having a clear image in my head, I scaffolded the necessary tables and started on my UI. I continued to make changes to my API and I realized more things that needed to be added.

## Problem Solving Strategy

For all of the problems I encountered, I made sure to carefully read error messages as they gave big hints as to where the bug was. Once I located the bug, I found that utilizing binding.pry in my CLI was extremely helpful and I could see exactly what data was being passed through as what was going wrong.

## Additions

If I were to further the capabilities of this API, I would make the relationship between spendings and a category a Many to Many relationship, as spendings can have many categories and categories can also have many spendings. This will allow users to organize their spendings even more accurately.

## ERD

<p align="center">
<img src="https://i.imgur.com/dwghXrU.jpg" alt="Wireframe Image" height="500">
</p>
