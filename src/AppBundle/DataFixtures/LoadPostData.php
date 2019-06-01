<?php

namespace AppBundle\DataFixtures;

use AppBundle\Entity\Post;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class LoadPostData extends Fixture
{

    public function load(ObjectManager $manager)
    {

        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 20; $i++) {

            $post = new Post();
            $post->setTitle($faker->sentence(4));
            $post->setLead($faker->text(200));
            $post->setContent($faker->text(1500));
            $post->setCreatedAt($faker->dateTimeThisMonth);
            $post->setPhoto($faker->imageUrl($width=750, $height=450, 'nature'));

            $manager->persist($post);
        }

        $manager->flush();
    }
}