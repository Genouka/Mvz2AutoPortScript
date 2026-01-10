.class Lcom/yoyogames/runner/RunnerJNILib$17$1;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$17;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$17;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$17;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$17$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1515
    const-string v0, "OK"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$17$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$17;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$17;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->InputResult(Ljava/lang/String;II)V

    .line 1516
    return-void
.end method
