.class Lcom/genouka/fumo/mvz2/DemoRenderer$1$1;
.super Ljava/lang/Object;
.source "DemoRenderer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/DemoRenderer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genouka/fumo/mvz2/DemoRenderer$1;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/DemoRenderer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/genouka/fumo/mvz2/DemoRenderer$1;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$1$1;->this$1:Lcom/genouka/fumo/mvz2/DemoRenderer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 423
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->finish()V

    .line 424
    return-void
.end method
