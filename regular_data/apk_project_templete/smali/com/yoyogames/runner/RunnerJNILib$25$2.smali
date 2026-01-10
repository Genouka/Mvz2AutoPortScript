.class Lcom/yoyogames/runner/RunnerJNILib$25$2;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$25;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$25;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$25;

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$25$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2014
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$25$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$25;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$25;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->LoginResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2015
    return-void
.end method
