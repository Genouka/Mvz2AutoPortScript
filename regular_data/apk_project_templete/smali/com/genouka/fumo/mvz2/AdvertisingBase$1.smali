.class Lcom/genouka/fumo/mvz2/AdvertisingBase$1;
.super Ljava/lang/Object;
.source "AdvertisingBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/AdvertisingBase;->enable(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

.field final synthetic val$h:I

.field final synthetic val$iad:Lcom/genouka/fumo/mvz2/IAdvertising;

.field final synthetic val$index:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;ILandroid/view/View;IIIILcom/genouka/fumo/mvz2/IAdvertising;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/AdvertisingBase;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iput p2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$index:I

    iput-object p3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$w:I

    iput p5, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$h:I

    iput p6, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$x:I

    iput p7, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$y:I

    iput-object p8, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$iad:Lcom/genouka/fumo/mvz2/IAdvertising;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 178
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding view for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_viewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$w:I

    iget v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$h:I

    iget v3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$x:I

    iget v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 186
    .local v0, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->this$0:Lcom/genouka/fumo/mvz2/AdvertisingBase;

    iget-boolean v1, v1, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_usetestads:Z

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 194
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$iad:Lcom/genouka/fumo/mvz2/IAdvertising;

    iget v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$index:I

    invoke-interface {v1, v2}, Lcom/genouka/fumo/mvz2/IAdvertising;->refresh(I)V

    .line 196
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;->val$view:Landroid/view/View;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
