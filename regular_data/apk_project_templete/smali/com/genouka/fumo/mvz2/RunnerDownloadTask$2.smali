.class Lcom/genouka/fumo/mvz2/RunnerDownloadTask$2;
.super Ljava/lang/Object;
.source "RunnerDownloadTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->onPreExecute()V
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
    .line 84
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$2;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    const-class v2, Lcom/genouka/fumo/mvz2/RunnerPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "settingsActivity":Landroid/content/Intent;
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$2;->this$0:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    sget-object v2, Lcom/genouka/fumo/mvz2/DownloadStatus;->SettingsChanged:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->access$100(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    .line 89
    return-void
.end method
