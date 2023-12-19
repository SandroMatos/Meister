<?php

/**declare(strict_types=1);**/

namespace Application\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\View\Model\ViewModel;

class AdminController extends AbstractActionController
{
    
    public function dashboardAction()
    {
        return new ViewModel();
    }
}
