.class Lcom/genouka/fumo/mvz2/DemoRenderer$2;
.super Ljava/lang/Object;
.source "DemoRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/DemoRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/DemoRenderer;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/DemoRenderer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/DemoRenderer;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$2;->this$0:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "needstart":Z
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-direct {v1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;-><init>()V

    sput-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    .line 572
    const/4 v0, 0x1

    .line 574
    :cond_0
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$2;->val$url:Ljava/lang/String;

    iput-object v2, v1, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    .line 576
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->DestPath:Ljava/lang/String;

    .line 578
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_1

    .line 580
    const/4 v0, 0x1

    .line 583
    :cond_1
    if-eqz v0, :cond_2

    .line 585
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$2;->val$url:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    const-string v1, "yoyo"

    const-string v2, "Done execute downloadtask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_2
    return-void
.end method
