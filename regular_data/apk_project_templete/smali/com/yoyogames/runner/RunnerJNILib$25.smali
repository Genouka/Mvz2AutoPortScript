.class final Lcom/yoyogames/runner/RunnerJNILib$25;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->ShowLogin(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$idDialog:I

.field final synthetic val$sDefaultPassword:Ljava/lang/String;

.field final synthetic val$sDefaultUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$25;->val$sDefaultUserName:Ljava/lang/String;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$25;->val$sDefaultPassword:Ljava/lang/String;

    iput p3, p0, Lcom/yoyogames/runner/RunnerJNILib$25;->val$idDialog:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1997
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const v2, 0x10302d1

    invoke-direct {v1, v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1998
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2000
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v6, 0x7f030011

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2001
    .local v4, "textEntryView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2002
    const v6, 0x7f090045

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2003
    .local v5, "userNameEditText":Landroid/widget/EditText;
    const v6, 0x7f090047

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2004
    .local v3, "passwordEditText":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/yoyogames/runner/RunnerJNILib$25;->val$sDefaultUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2005
    iget-object v6, p0, Lcom/yoyogames/runner/RunnerJNILib$25;->val$sDefaultPassword:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    new-instance v8, Lcom/yoyogames/runner/RunnerJNILib$25$1;

    invoke-direct {v8, p0, v5, v3}, Lcom/yoyogames/runner/RunnerJNILib$25$1;-><init>(Lcom/yoyogames/runner/RunnerJNILib$25;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 2007
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2012
    const-string v6, "Cancel"

    new-instance v7, Lcom/yoyogames/runner/RunnerJNILib$25$2;

    invoke-direct {v7, p0}, Lcom/yoyogames/runner/RunnerJNILib$25$2;-><init>(Lcom/yoyogames/runner/RunnerJNILib$25;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2018
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2019
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2020
    return-void
.end method
