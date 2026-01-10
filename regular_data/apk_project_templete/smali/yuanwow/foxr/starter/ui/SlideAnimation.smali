.class Lyuanwow/foxr/starter/ui/SlideAnimation;
.super Landroid/view/animation/Animation;
.source "SlideAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;,
        Lyuanwow/foxr/starter/ui/SlideAnimation$100000001;,
        Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;
    }
.end annotation


# instance fields
.field private fromX:I

.field private toX:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->view:Landroid/view/View;

    .line 20
    iput p2, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->fromX:I

    .line 21
    iput p3, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->toX:I

    .line 22
    invoke-virtual {p0, p4, p5}, Lyuanwow/foxr/starter/ui/SlideAnimation;->setDuration(J)V

    return-void
.end method

.method public static dismissPopupWithAnimation(Landroid/widget/PopupWindow;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 66
    new-instance v7, Lyuanwow/foxr/starter/ui/SlideAnimation;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v3, v0

    const/16 v0, 0x12c

    int-to-long v4, v0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lyuanwow/foxr/starter/ui/SlideAnimation;-><init>(Landroid/view/View;IIJ)V

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Lyuanwow/foxr/starter/ui/SlideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    new-instance v0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000001;

    invoke-direct {v0, p0}, Lyuanwow/foxr/starter/ui/SlideAnimation$100000001;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v0}, Lyuanwow/foxr/starter/ui/SlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 35
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40
    neg-int v1, v0

    const v2, 0x800033

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    .line 44
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 47
    new-instance p1, Lyuanwow/foxr/starter/ui/SlideAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v6, v1

    const/4 v7, 0x0

    const/16 v1, 0x12c

    int-to-long v8, v1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lyuanwow/foxr/starter/ui/SlideAnimation;-><init>(Landroid/view/View;IIJ)V

    .line 48
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Lyuanwow/foxr/starter/ui/SlideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    new-instance v1, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;

    invoke-direct {v1, p0, v0}, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private test(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-static {p1, p2}, Lyuanwow/foxr/starter/ui/SlideAnimation;->showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 92
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 93
    const-string p3, "\u53d6\u6d88"

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance p3, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;

    invoke-direct {p3, p0, p1}, Lyuanwow/foxr/starter/ui/SlideAnimation$100000002;-><init>(Lyuanwow/foxr/starter/ui/SlideAnimation;Landroid/widget/PopupWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/view/animation/Transformation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 28
    iget p2, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->fromX:I

    int-to-float v0, p2

    iget v1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->toX:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    float-to-int p1, v0

    .line 29
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/SlideAnimation;->view:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
