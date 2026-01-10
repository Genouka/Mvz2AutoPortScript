.class final Lcom/yoyogames/runner/RunnerJNILib$2;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->LeaveRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sNo:Ljava/lang/String;

.field final synthetic val$sText:Ljava/lang/String;

.field final synthetic val$sUrl:Ljava/lang/String;

.field final synthetic val$sYes:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sText:Ljava/lang/String;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sYes:Ljava/lang/String;

    iput-object p3, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 627
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 629
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sYes:Ljava/lang/String;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$2$2;

    invoke-direct {v4, p0}, Lcom/yoyogames/runner/RunnerJNILib$2$2;-><init>(Lcom/yoyogames/runner/RunnerJNILib$2;)V

    .line 630
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yoyogames/runner/RunnerJNILib$2;->val$sNo:Ljava/lang/String;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$2$1;

    invoke-direct {v4, p0}, Lcom/yoyogames/runner/RunnerJNILib$2$1;-><init>(Lcom/yoyogames/runner/RunnerJNILib$2;)V

    .line 636
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 642
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 643
    return-void
.end method
