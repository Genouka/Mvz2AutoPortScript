.class public Lcom/genouka/fumo/mvz2/NullBilling;
.super Lcom/genouka/fumo/mvz2/IRunnerBilling;
.source "NullBilling.java"


# static fields
.field public static final EmptyString:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/IRunnerBilling;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public consumeCatalogItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public getCatalogItemDetails(Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected getContentPurchasedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public loadStore([Ljava/lang/String;)V
    .locals 2
    .param p1, "productIds"    # [Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public purchaseCatalogItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "_purchaseIndex"    # I

    .prologue
    .line 40
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public restorePurchasedItems()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public revokeCatalogItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "purchaseId"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "yoyo"

    const-string v1, "NULL-BILLING: Store is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
