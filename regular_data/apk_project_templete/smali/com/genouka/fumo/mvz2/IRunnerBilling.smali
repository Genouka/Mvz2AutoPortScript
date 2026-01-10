.class public abstract Lcom/genouka/fumo/mvz2/IRunnerBilling;
.super Ljava/lang/Object;
.source "IRunnerBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/IRunnerBilling$IBillingCallback;,
        Lcom/genouka/fumo/mvz2/IRunnerBilling$PurchaseDetails;
    }
.end annotation


# static fields
.field public static final BILLING_PURCHASE_FAILED:I = -0x3

.field public static final BILLING_PURCHASE_SUCCEEDED:I

.field public static eStoreLoadFailure:I

.field public static eStoreLoadSuccess:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/genouka/fumo/mvz2/IRunnerBilling;->eStoreLoadSuccess:I

    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/genouka/fumo/mvz2/IRunnerBilling;->eStoreLoadFailure:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 90
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 93
    .local v0, "a":[B
    array-length v4, v0

    .line 94
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    shl-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 97
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    aget-byte v6, v0, v3

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 106
    .end local v0    # "a":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v6

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 106
    const-string v6, "not_encoded"

    goto :goto_1
.end method


# virtual methods
.method public abstract Destroy()V
.end method

.method protected PurchaseFailureNotification(ILjava/lang/String;I)V
    .locals 5
    .param p1, "_responseCode"    # I
    .param p2, "_productId"    # Ljava/lang/String;
    .param p3, "_purchaseIndex"    # I

    .prologue
    .line 167
    move-object v0, p2

    .line 168
    .local v0, "productId":Ljava/lang/String;
    move v2, p1

    .line 169
    .local v2, "responseCode":I
    move v1, p3

    .line 171
    .local v1, "purchaseIndex":I
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;-><init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method protected PurchaseSuccessNotification(ILjava/lang/String;I)V
    .locals 5
    .param p1, "_responseCode"    # I
    .param p2, "_productId"    # Ljava/lang/String;
    .param p3, "_purchaseIndex"    # I

    .prologue
    .line 145
    move-object v0, p2

    .line 146
    .local v0, "productId":Ljava/lang/String;
    move v2, p1

    .line 147
    .local v2, "responseCode":I
    move v1, p3

    .line 149
    .local v1, "purchaseIndex":I
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/genouka/fumo/mvz2/IRunnerBilling$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/genouka/fumo/mvz2/IRunnerBilling$2;-><init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public abstract consumeCatalogItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public enableInAppPurchases([Ljava/lang/String;)V
    .locals 3
    .param p1, "_productIds"    # [Ljava/lang/String;

    .prologue
    .line 115
    move-object v0, p1

    .line 116
    .local v0, "productIds":[Ljava/lang/String;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;

    invoke-direct {v2, p0, v0}, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;-><init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public abstract getCatalogItemDetails(Ljava/lang/String;)V
.end method

.method protected abstract getContentPurchasedKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadStore([Ljava/lang/String;)V
.end method

.method public abstract purchaseCatalogItem(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method protected registerContentPurchased(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 130
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->getContentPurchasedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "contentKey":Ljava/lang/String;
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public abstract restorePurchasedItems()V
.end method
