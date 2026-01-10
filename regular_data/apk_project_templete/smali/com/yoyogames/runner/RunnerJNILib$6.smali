.class final Lcom/yoyogames/runner/RunnerJNILib$6;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->AchievementShow(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$numarg:I

.field final synthetic val$optarg:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 714
    iput p1, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$type:I

    iput-object p2, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$optarg:Ljava/lang/String;

    iput p3, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$numarg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 716
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 720
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/ISocial;

    if-eqz v1, :cond_0

    .line 721
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/ISocial;

    iget v2, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$type:I

    iget-object v3, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$optarg:Ljava/lang/String;

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$6;->val$numarg:I

    invoke-interface {v1, v2, v3, v4}, Lcom/genouka/fumo/mvz2/ISocial;->Show(ILjava/lang/String;I)V

    .line 718
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
