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
        'title' => "Index",
        ]);
    }

    /**
     * @Route("/cv", name="cv")
     */
    public function cv()
    {
        return $this->render('cv.html.twig', [
        'title' => "CV",
        ]);
    }

     /**
     * @Route("/portfolio", name="portfolio")
     */
    public function portfolio()
    {
        return $this->render('portfolio.html.twig', [
        'title' => "Portfolio",
        ]);
    }

     /**
     * @Route("/loisir", name="loisir")
     */
    public function loisir()
    {
        return $this->render('loisir.html.twig', [
        'title' => "Loisir",
        ]);
    }
}