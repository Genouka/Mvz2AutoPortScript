.class Lcom/genouka/fumo/mvz2/RunnerActivity$6;
.super Ljava/lang/Object;
.source "RunnerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerActivity;

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 1783
    return-void
.end method
