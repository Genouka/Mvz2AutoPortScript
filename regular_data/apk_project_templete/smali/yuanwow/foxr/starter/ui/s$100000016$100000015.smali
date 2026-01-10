.class Lyuanwow/foxr/starter/ui/s$100000016$100000015;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000016;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000015"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000016;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000016;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000016$100000015;->this$0:Lyuanwow/foxr/starter/ui/s$100000016;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000016$100000015;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000016$100000015;)Lyuanwow/foxr/starter/ui/s$100000016;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000016$100000015;->this$0:Lyuanwow/foxr/starter/ui/s$100000016;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 612
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000016$100000015;->val$c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    const-string v0, ".genouka_disablemenu"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 614
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method
