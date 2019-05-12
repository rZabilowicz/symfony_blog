<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Post;
use AppBundle\Entity\Comment;
use AppBundle\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $qb = $this->getDoctrine()
            ->getManager()->createQueryBuilder()->from('AppBundle:Post','p')
            ->select('p');

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $qb,
            $request->query->get('page', 1),
            5
        );

        return $this->render('default/index.html.twig', array(
            'posts'=>$pagination
        ));
    }

    /**
     * @Route("/article/{id}", name="post_show")
     */
    public function showAction(Post $post, Request $request) 
    {
       // $form = $this->createForm(new CommentType());
        $comment = new Comment();
        $comment->setPost($post);
    
        $form = $this->createFormBuilder($comment)
        ->add('content', TextType::class)
        ->add('save', SubmitType::class, ['label' => 'Send'])
        ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // $form->getData() holds the submitted values
            // but, the original `$task` variable has also been updated
            // $comment = $form->getData();
            // $comment->setCreatedAt(new \DateTime('H:i d/m/Y'));

    
            // ... perform some action, such as saving the task to the database
            // for example, if Task is a Doctrine entity, save it!
            $entityM = $this->getDoctrine()->getManager();
            $entityM->persist($comment);
            $entityM->flush();
    
            $this->addFlash('success', 'Comment added corectly');
            return $this->redirectToRoute('post_show',array('id'=>$post->getId()));
        }
    

        return $this->render('default/show.html.twig', array(
            'post'=> $post,
            'form'=>$form->createView()
        ));
    }
}
