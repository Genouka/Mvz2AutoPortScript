.class Lcom/yoyogames/runner/RunnerJNILib$19$1;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$19;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$19;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$19$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$19;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$19$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/yoyogames/runner/RunnerJNILib$19$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    .line 1591
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$19$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$19;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$19;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->InputResult(Ljava/lang/String;II)V

    .line 1592
    return-void
.end method
