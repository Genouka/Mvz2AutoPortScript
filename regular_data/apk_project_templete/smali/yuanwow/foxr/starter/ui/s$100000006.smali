.class Lyuanwow/foxr/starter/ui/s$100000006;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000006$100000005;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000006;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000006;->val$c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 285
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000006;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 286
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lyuanwow/foxr/starter/ui/s$100000006$100000005;

    iget-object v1, p0, Lyuanwow/foxr/starter/ui/s$100000006;->val$c:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lyuanwow/foxr/starter/ui/s$100000006$100000005;-><init>(Lyuanwow/foxr/starter/ui/s$100000006;Landroid/app/Activity;)V

    const/16 v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
