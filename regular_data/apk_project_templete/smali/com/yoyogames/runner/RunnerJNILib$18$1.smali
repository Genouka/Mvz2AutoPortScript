.class Lcom/yoyogames/runner/RunnerJNILib$18$1;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$18;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$18;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$18$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$18;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$18$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$18$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    .line 1546
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$18$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$18;

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$18;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1547
    return-void
.end method
