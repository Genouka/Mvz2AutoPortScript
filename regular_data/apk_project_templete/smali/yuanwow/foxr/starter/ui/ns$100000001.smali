.class Lyuanwow/foxr/starter/ui/ns$100000001;
.super Ljava/lang/Object;
.source "ns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/ns$100000001$100000000;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$outputDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$c:Landroid/app/Activity;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$outputDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 36
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$c:Landroid/app/Activity;

    const-string v1, "saves.ext"

    iget-object v2, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$outputDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lyuanwow/foxr/starter/ui/AssetZipUtil;->unzipFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 37
    sget-object v1, Lorg/hndteam/deltarune/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;

    iget-object v3, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$c:Landroid/app/Activity;

    iget-object v4, p0, Lyuanwow/foxr/starter/ui/ns$100000001;->val$outputDir:Ljava/io/File;

    invoke-direct {v2, p0, v0, v3, v4}, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;-><init>(Lyuanwow/foxr/starter/ui/ns$100000001;ZLandroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
