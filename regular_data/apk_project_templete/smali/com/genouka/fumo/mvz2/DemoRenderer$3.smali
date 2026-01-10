.class Lcom/genouka/fumo/mvz2/DemoRenderer$3;
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


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/DemoRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/DemoRenderer;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer$3;->this$0:Lcom/genouka/fumo/mvz2/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->doSetup(Ljava/lang/String;)V

    .line 642
    return-void
.end method
