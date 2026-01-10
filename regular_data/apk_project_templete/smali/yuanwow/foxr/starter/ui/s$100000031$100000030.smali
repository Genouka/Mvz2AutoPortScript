.class Lyuanwow/foxr/starter/ui/s$100000031$100000030;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000031;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000030"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000031;

.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$items:Ljava/util/List;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000031;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->this$0:Lyuanwow/foxr/starter/ui/s$100000031;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$c:Landroid/app/Activity;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$items:Ljava/util/List;

    iput p4, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$position:I

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000031$100000030;)Lyuanwow/foxr/starter/ui/s$100000031;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->this$0:Lyuanwow/foxr/starter/ui/s$100000031;

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

    .line 1158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$c:Landroid/app/Activity;

    :try_start_0
    const-string v2, "com.refix.genouka.deltarune.MainActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1159
    const-string v1, "genouka"

    const-string v2, "editsave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    iget-object v1, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$items:Ljava/util/List;

    iget v2, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    iget-object v1, p0, Lyuanwow/foxr/starter/ui/s$100000031$100000030;->val$c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1158
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
