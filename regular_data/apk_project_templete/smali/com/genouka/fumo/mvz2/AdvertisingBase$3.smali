.class Lcom/genouka/fumo/mvz2/AdvertisingBase$3;
.super Ljava/lang/Object;
.source "AdvertisingBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/AdvertisingBase;->disable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/AdvertisingBase;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->val$view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 254
    .local v0, "vp":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_viewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    return-void
.end method
