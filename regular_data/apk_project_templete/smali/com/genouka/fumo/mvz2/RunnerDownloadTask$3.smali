.class Lcom/genouka/fumo/mvz2/RunnerDownloadTask$3;
.super Ljava/lang/Object;
.source "RunnerDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$3;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$3;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-static {v0}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->access$000(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 120
    return-void
.end method
