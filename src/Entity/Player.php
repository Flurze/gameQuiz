<?php

namespace App\Entity;

use App\Repository\PlayerRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlayerRepository::class)]
class Player extends User
{
    #[ORM\Column(length: 150)]
    private ?string $username = null;

    #[ORM\Column]
    private ?bool $isHost = null;

    public function getUsername(): ?string
    {
        return $this->username;
    }

    public function setUsername(string $username): static
    {
        $this->username = $username;

        return $this;
    }

    public function isHost(): ?bool
    {
        return $this->isHost;
    }

    public function setIsHost(bool $isHost): static
    {
        $this->isHost = $isHost;

        return $this;
    }
}
