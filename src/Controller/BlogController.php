<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BlogController extends AbstractController
{
    /**
     * @Route("/index", name="index")
     */
    public function index()
    {
        return $this->render('index.html.twig', [
        'title' => "Menu",
        ]);
    }

    /**
     * @Route("/sheet/cv", name="cv")
     */
    public function cv()
    {
        return $this->render('sheet/cv.html.twig', [
        'title' => "CV",
        ]);
    }
}