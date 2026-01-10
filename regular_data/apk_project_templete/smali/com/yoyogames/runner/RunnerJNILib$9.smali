.class final Lcom/yoyogames/runner/RunnerJNILib$9;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->AchievementLoadLeaderboard(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filter:I

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$maxindex:I

.field final synthetic val$minindex:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$id:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$minindex:I

    iput p3, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$maxindex:I

    iput p4, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$filter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 782
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 784
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 786
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/ISocial;

    if-eqz v1, :cond_0

    .line 787
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/ISocial;

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$id:Ljava/lang/String;

    iget v3, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$minindex:I

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$maxindex:I

    iget v5, p0, Lcom/yoyogames/runner/RunnerJNILib$9;->val$filter:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/genouka/fumo/mvz2/ISocial;->LoadLeaderboard(Ljava/lang/String;III)V

    .line 784
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
