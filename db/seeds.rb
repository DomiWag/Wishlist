# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
    [
        {
            name: 'Example User',
            email: 'user@example.com',
            password: 'test1234'
        }
    ]
)

tags = Tag.create(
    [
        {
            name: 'application'
        },
        {
            name: 'expensive'
        },
        {
            name: 'software'
        },
        {
            name: 'cheap'
        },
        {
            name: 'hardware'
        }
    ]
)

gifts = Gift.create(
    [
        {
            title: 'IDA Pro',
            description: 'IDA is a Windows, Linux or Mac OS X hosted multi-processor disassembler and debugger that offers so many features it is hard to describe them all. Just grab an evaluation version if you want a test drive.

An executive summary is provided for the non-technical user.',
            url: 'https://www.hex-rays.com/products/ida/index.shtml',
            image: 'https://www.hex-rays.com/products/ida/pix/pc1.gif',
            all_tags: 'application,expensive,software'
        },
        {
            title: 'Cerbero Profiler',
            description: 'Cerbero Profiler is a tool designed primarily for malware and forensic analysis. It supports a huge number of file formats (listed below) on which it performs analysis and lets the user inspect their internal layout. Profiler is often used to identify 0-day threats and personal information inside of files. However, given the scale of the project, it has many other uses and we encourage you to visit our blog in order to see Profiler in action.',
            url: 'http://cerbero.io/profiler/',
            image: 'http://cerbero.io/static/images/profiler/header.png',
            user: User.find_by_email('user@example.com'),
            all_tags: 'application,cheap,software'
        },
        {
            title: 'Bread cutter',
            all_tags: 'expensive,hardware'
        },
        {
            title: 'Game collection',
            description: 'A collection of games including Nine Men\'s Morris, chess, etc',
            all_tags: 'cheap,hardware'
        }
    ]
)

