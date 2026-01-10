.class Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;
.super Ljava/lang/Object;
.source "SlideAnimation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/SlideAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/SlideAnimation;

.field private final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/SlideAnimation;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;->this$0:Lyuanwow/foxr/starter/ui/SlideAnimation;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;->val$popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;)Lyuanwow/foxr/starter/ui/SlideAnimation;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;->this$0:Lyuanwow/foxr/starter/ui/SlideAnimation;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 97
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/SlideAnimation;->dismissPopupWithAnimation(Landroid/widget/PopupWindow;)V

    return-void
.end method
