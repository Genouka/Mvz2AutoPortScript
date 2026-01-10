.class final Lcom/yoyogames/runner/RunnerJNILib$13;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->SendAchievement(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ach:Ljava/lang/String;

.field final synthetic val$incval:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$13;->val$ach:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$13;->val$incval:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 941
    new-array v0, v3, [Ljava/lang/Object;

    .line 942
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$13;->val$ach:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 943
    const/4 v1, 0x1

    iget v2, p0, Lcom/yoyogames/runner/RunnerJNILib$13;->val$incval:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 945
    const-string v1, "GooglePlayServicesExtension"

    const-string v2, "onPostAchievement"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    return-void
.end method
