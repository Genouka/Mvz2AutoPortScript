.class Lcom/yoyogames/runner/RunnerJNILib$20$1;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$20;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$20;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$20;

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$20$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1623
    const/4 v0, 0x1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ShowQuestionYesNo:I

    .line 1624
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$20$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$20;

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$20;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1625
    return-void
.end method
