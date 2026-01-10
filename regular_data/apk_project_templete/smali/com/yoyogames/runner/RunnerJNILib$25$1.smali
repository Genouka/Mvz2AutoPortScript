.class Lcom/yoyogames/runner/RunnerJNILib$25$1;
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

.field final synthetic val$passwordEditText:Landroid/widget/EditText;

.field final synthetic val$userNameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yoyogames/runner/RunnerJNILib$25;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yoyogames/runner/RunnerJNILib$25;

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$25;

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->val$userNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->val$passwordEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->val$userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->val$passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->val$userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$25$1;->this$0:Lcom/yoyogames/runner/RunnerJNILib$25;

    iget v2, v2, Lcom/yoyogames/runner/RunnerJNILib$25;->val$idDialog:I

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->LoginResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2010
    return-void
.end method
