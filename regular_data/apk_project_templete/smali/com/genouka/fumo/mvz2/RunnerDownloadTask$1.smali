.class Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;
.super Ljava/lang/Object;
.source "RunnerDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

.field final synthetic val$f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;->val$f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-static {v0}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->access$000(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;->val$f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
