.class final Lcom/yoyogames/runner/RunnerJNILib$15;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->SendHighScore(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lb:Ljava/lang/String;

.field final synthetic val$sc:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$15;->val$lb:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$15;->val$sc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 993
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 995
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 997
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/ISocial;

    if-eqz v1, :cond_0

    .line 998
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/ISocial;

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$15;->val$lb:Ljava/lang/String;

    iget v3, p0, Lcom/yoyogames/runner/RunnerJNILib$15;->val$sc:I

    invoke-interface {v1, v2, v3}, Lcom/genouka/fumo/mvz2/ISocial;->PostScore(Ljava/lang/String;I)V

    .line 995
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
