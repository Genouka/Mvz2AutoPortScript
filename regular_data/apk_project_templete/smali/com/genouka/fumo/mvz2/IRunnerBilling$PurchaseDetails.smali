.class public Lcom/genouka/fumo/mvz2/IRunnerBilling$PurchaseDetails;
.super Ljava/lang/Object;
.source "IRunnerBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/IRunnerBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PurchaseDetails"
.end annotation


# instance fields
.field public mProductId:Ljava/lang/String;

.field public mPurchaseIndex:I

.field final synthetic this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/IRunnerBilling;
    .param p2, "_productId"    # Ljava/lang/String;
    .param p3, "_purchaseIndex"    # I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$PurchaseDetails;->this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$PurchaseDetails;->mProductId:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$PurchaseDetails;->mPurchaseIndex:I

    .line 59
    return-void
.end method
