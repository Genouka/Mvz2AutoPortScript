.class public Lcom/genouka/fumo/mvz2/RunnerApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "RunnerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    invoke-static {p0}, Lyuanwow/foxr/starter/gutmt/patcher;->ss(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 30
    sget-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->Init()V

    .line 51
    :cond_0
    return-void
.end method
