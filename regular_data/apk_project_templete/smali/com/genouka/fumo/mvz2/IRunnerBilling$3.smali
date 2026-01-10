.class Lcom/genouka/fumo/mvz2/IRunnerBilling$3;
.super Ljava/lang/Object;
.source "IRunnerBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/IRunnerBilling;->PurchaseFailureNotification(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$purchaseIndex:I

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/IRunnerBilling;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$productId:Ljava/lang/String;

    iput p3, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$responseCode:I

    iput p4, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$purchaseIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ \"productId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \"response\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \"purchaseIndex\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$3;->val$purchaseIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \"purchaseState\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "json":Ljava/lang/String;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BILLING: Purchase failed => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->IAPProductPurchaseEvent(Ljava/lang/String;)V

    .line 180
    return-void
.end method
