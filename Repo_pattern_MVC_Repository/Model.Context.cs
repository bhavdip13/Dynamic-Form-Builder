﻿

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace Repo_Pattern_MVC_Model.Model
{

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;


public partial class Repo_Pattern_MVCEntities : DbContext
{
    public Repo_Pattern_MVCEntities()
        : base("name=Repo_Pattern_MVCEntities")
    {

    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }


    public virtual DbSet<Form_Master> Form_Master { get; set; }

    public virtual DbSet<Form_Data_Master> Form_Data_Master { get; set; }

}

}

