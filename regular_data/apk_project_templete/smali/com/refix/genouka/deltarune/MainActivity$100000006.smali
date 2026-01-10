.class Lcom/refix/genouka/deltarune/MainActivity$100000006;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/refix/genouka/deltarune/MainActivity$100000006$100000005;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity;

.field private final synthetic val$me:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/refix/genouka/deltarune/MainActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$100000006;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    iput-object p2, p0, Lcom/refix/genouka/deltarune/MainActivity$100000006;->val$me:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$100000006;)Lcom/refix/genouka/deltarune/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000006;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 272
    const/16 v0, 0x7530

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000006;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    new-instance v1, Lcom/refix/genouka/deltarune/MainActivity$100000006$100000005;

    iget-object v2, p0, Lcom/refix/genouka/deltarune/MainActivity$100000006;->val$me:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcom/refix/genouka/deltarune/MainActivity$100000006$100000005;-><init>(Lcom/refix/genouka/deltarune/MainActivity$100000006;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/refix/genouka/deltarune/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
