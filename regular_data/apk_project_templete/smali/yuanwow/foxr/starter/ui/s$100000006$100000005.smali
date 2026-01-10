.class Lyuanwow/foxr/starter/ui/s$100000006$100000005;
.super Ljava/util/TimerTask;
.source "s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000006;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000006$100000005$100000004;
    }
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000006;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000006;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000006$100000005;->this$0:Lyuanwow/foxr/starter/ui/s$100000006;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000006$100000005;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000006$100000005;)Lyuanwow/foxr/starter/ui/s$100000006;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000006$100000005;->this$0:Lyuanwow/foxr/starter/ui/s$100000006;

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

    .line 289
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000006$100000005;->val$c:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000006$100000005$100000004;

    invoke-direct {v1, p0, v0}, Lyuanwow/foxr/starter/ui/s$100000006$100000005$100000004;-><init>(Lyuanwow/foxr/starter/ui/s$100000006$100000005;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
