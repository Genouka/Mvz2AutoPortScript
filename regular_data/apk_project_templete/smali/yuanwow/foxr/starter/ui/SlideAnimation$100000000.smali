.class Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;
.super Ljava/lang/Object;
.source "SlideAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/SlideAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final synthetic val$contentView:Landroid/view/View;

.field private final synthetic val$screenWidth:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;->val$contentView:Landroid/view/View;

    iput p2, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;->val$screenWidth:I

    return-void
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

    .line 53
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;->val$contentView:Landroid/view/View;

    iget v1, p0, Lyuanwow/foxr/starter/ui/SlideAnimation$100000000;->val$screenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
