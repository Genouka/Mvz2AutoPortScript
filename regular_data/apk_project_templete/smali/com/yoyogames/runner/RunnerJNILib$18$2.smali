.class Lcom/yoyogames/runner/RunnerJNILib$18$2;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$18;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$18;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$18;

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$18$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$18$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$18;

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$sDefault:Ljava/lang/String;

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    .line 1552
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$18$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$18;

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1553
    return-void
.end method
