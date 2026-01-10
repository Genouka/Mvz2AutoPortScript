.class Lcom/genouka/fumo/mvz2/IRunnerBilling$1;
.super Ljava/lang/Object;
.source "IRunnerBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/IRunnerBilling;->enableInAppPurchases([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

.field final synthetic val$productIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/IRunnerBilling;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/IRunnerBilling;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;->this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;->val$productIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "yoyo"

    const-string v1, "BILLING: Loading services..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;->this$0:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IRunnerBilling$1;->val$productIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->loadStore([Ljava/lang/String;)V

    .line 121
    return-void
.end method
