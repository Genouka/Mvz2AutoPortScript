.class Lcom/yoyogames/runner/RunnerJNILib$21$2;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$21;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$21;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$21;

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$21$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1668
    const-string v0, "0"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$21$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$21;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$21;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->InputResult(Ljava/lang/String;II)V

    .line 1669
    return-void
.end method
