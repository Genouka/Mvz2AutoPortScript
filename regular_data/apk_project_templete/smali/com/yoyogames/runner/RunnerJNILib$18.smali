.class final Lcom/yoyogames/runner/RunnerJNILib$18;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->InputString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$sDefault:Ljava/lang/String;

.field final synthetic val$sMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$sDefault:Ljava/lang/String;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$sMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1537
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    const v2, 0x10302d1

    invoke-direct {v1, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1538
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/EditText;

    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1539
    .local v2, "input":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$sDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1541
    iget-object v3, p0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$sMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1542
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/yoyogames/runner/RunnerJNILib$18$1;

    invoke-direct {v5, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib$18$1;-><init>(Lcom/yoyogames/runner/RunnerJNILib$18;Landroid/widget/EditText;)V

    .line 1543
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1549
    const-string v3, "Cancel"

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$18$2;

    invoke-direct {v4, p0}, Lcom/yoyogames/runner/RunnerJNILib$18$2;-><init>(Lcom/yoyogames/runner/RunnerJNILib$18;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1557
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1558
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1559
    return-void
.end method
