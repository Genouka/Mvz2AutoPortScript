.class Lcom/genouka/fumo/mvz2/AdvertisingBase$2;
.super Ljava/lang/Object;
.source "AdvertisingBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/AdvertisingBase;->move(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

.field final synthetic val$h:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;IIIILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/AdvertisingBase;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iput p2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$w:I

    iput p3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$h:I

    iput p4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$x:I

    iput p5, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$y:I

    iput-object p6, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 218
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$w:I

    iget v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$h:I

    iget v3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$x:I

    iget v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 220
    .local v0, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iget-boolean v1, v1, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_usetestads:Z

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 229
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;->val$view:Landroid/view/View;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
