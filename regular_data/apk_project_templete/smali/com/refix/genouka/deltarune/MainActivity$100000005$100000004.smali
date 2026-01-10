.class Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity$100000005;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity$100000005;

.field private final synthetic val$me:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/refix/genouka/deltarune/MainActivity$100000005;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;->this$0:Lcom/refix/genouka/deltarune/MainActivity$100000005;

    iput-object p2, p0, Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;->val$me:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;)Lcom/refix/genouka/deltarune/MainActivity$100000005;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;->this$0:Lcom/refix/genouka/deltarune/MainActivity$100000005;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;->this$0:Lcom/refix/genouka/deltarune/MainActivity$100000005;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity$100000005;->access$0(Lcom/refix/genouka/deltarune/MainActivity$100000005;)Lcom/refix/genouka/deltarune/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/refix/genouka/deltarune/MainActivity;->access$S1000004(Lcom/refix/genouka/deltarune/MainActivity;Z)V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000005$100000004;->val$me:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
