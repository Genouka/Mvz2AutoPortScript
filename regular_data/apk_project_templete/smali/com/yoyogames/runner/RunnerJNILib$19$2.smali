.class Lcom/yoyogames/runner/RunnerJNILib$19$2;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yoyogames/runner/RunnerJNILib$19;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$19;

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$19$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$19$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$19;

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$19;->val$sDefault:Ljava/lang/String;

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    .line 1597
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$19$2;->this$0:Lcom/yoyogames/runner/RunnerJNILib$19;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$19;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->InputResult(Ljava/lang/String;II)V

    .line 1598
    return-void
.end method
