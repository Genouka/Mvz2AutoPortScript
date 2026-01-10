.class Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000018"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;->this$0:Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;)Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;->this$0:Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 669
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019$100000018;->val$c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
