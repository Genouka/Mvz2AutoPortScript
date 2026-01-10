.class Lcom/genouka/fumo/mvz2/RunnerActivity$3;
.super Ljava/lang/Object;
.source "RunnerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 386
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$3;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$3;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 392
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$3;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 394
    return-void
.end method
