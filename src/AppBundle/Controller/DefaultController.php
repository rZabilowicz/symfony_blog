<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Post;
use AppBundle\Entity\Comment;
use AppBundle\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\Form\Extension\Core\Type\TextareaType;
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
            7
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
        $form = null;

        if ($user = $this->getUser()) {
            $comment = new Comment();
            $comment->setPost($post);
            $comment->setUser($user);

            $form = $this->createFormBuilder($comment)
            ->add('content', TextareaType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'Write your comment here...',
                    'style' => 'height: 70px; resize: none;'
                ] 
            ])
            ->add('save', SubmitType::class, [
                'label' => 'Send', 
                'attr' => [
                    'class' => 'btn btn-primary float-right'
                ]
            ])
            ->getForm();
    
            $form->handleRequest($request);
    
            if ($form->isSubmitted() && $form->isValid()) {
                $entityM = $this->getDoctrine()->getManager();
                $entityM->persist($comment);
                $entityM->flush();
        
                $this->addFlash('success', 'Comment added corectly');
                return $this->redirectToRoute('post_show',array('id'=>$post->getId()));
            }
        }
    
        return $this->render('default/show.html.twig', array(
            'post'=> $post,
            'form'=>is_null($form) ? $form : $form->createView()
        ));
    }
}
