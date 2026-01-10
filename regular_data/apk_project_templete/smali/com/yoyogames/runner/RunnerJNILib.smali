.class public Lcom/yoyogames/runner/RunnerJNILib;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"


# static fields
.field public static final eOF_AchievementSendFail:I = 0x3

.field public static final eOF_AchievementSendOK:I = 0x2

.field public static final eOF_HighScoreSendFail:I = 0x5

.field public static final eOF_HighScoreSendOK:I = 0x4

.field public static final eOF_UserLoggedIn:I = 0x0

.field public static final eOF_UserLoggedOut:I = 0x1

.field private static mAdNum:I

.field private static mAdX:I

.field private static mAdY:I

.field private static mPlaybackStateStored:Z

.field private static mStoredPlaybackLoop:Z

.field private static mStoredPlaybackOffset:J

.field private static mStoredPlaybackPosition:I

.field private static mStoredPlaybackSessionId:I

.field private static mStoredPlaybackSize:J

.field private static mStoredVolume:F

.field public static m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

.field public static ms_context:Landroid/content/Context;

.field public static ms_exitcalled:Z

.field public static ms_loadLibraryFailed:Z

.field public static ms_mp:Landroid/media/MediaPlayer;

.field public static ms_versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    .line 104
    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    .line 282
    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->mPlaybackStateStored:Z

    .line 288
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/yoyogames/runner/RunnerJNILib;->mStoredVolume:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AchievementEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "_id"    # Ljava/lang/String;

    .prologue
    .line 753
    move-object v0, p0

    .line 754
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yoyogames/runner/RunnerJNILib$8;

    invoke-direct {v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method

.method public static AchievementGetInfo(Ljava/lang/String;)V
    .locals 3
    .param p0, "_id"    # Ljava/lang/String;

    .prologue
    .line 688
    move-object v0, p0

    .line 690
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yoyogames/runner/RunnerJNILib$5;

    invoke-direct {v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method

.method public static AchievementLoadFriends()V
    .locals 2

    .prologue
    .line 670
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$4;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void
.end method

.method public static AchievementLoadLeaderboard(Ljava/lang/String;III)V
    .locals 6
    .param p0, "_id"    # Ljava/lang/String;
    .param p1, "_minindex"    # I
    .param p2, "_maxindex"    # I
    .param p3, "_filter"    # I

    .prologue
    .line 775
    move-object v1, p0

    .line 776
    .local v1, "id":Ljava/lang/String;
    move v3, p1

    .line 777
    .local v3, "minindex":I
    move v2, p2

    .line 778
    .local v2, "maxindex":I
    move v0, p3

    .line 780
    .local v0, "filter":I
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v5, Lcom/yoyogames/runner/RunnerJNILib$9;

    invoke-direct {v5, v1, v3, v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$9;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method public static AchievementLoadPic(Ljava/lang/String;)V
    .locals 3
    .param p0, "_id"    # Ljava/lang/String;

    .prologue
    .line 732
    move-object v0, p0

    .line 734
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yoyogames/runner/RunnerJNILib$7;

    invoke-direct {v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method

.method public static AchievementLogin()V
    .locals 2

    .prologue
    .line 907
    const-string v0, "yoyo"

    const-string v1, "AchievementLogin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$12;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    return-void
.end method

.method public static AchievementLoginStatus()I
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x1

    .line 925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static AchievementLogout()V
    .locals 2

    .prologue
    .line 879
    const-string v0, "yoyo"

    const-string v1, "AchievementLogout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$11;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 903
    return-void
.end method

.method public static AchievementShow(ILjava/lang/String;I)V
    .locals 5
    .param p0, "_type"    # I
    .param p1, "_optarg"    # Ljava/lang/String;
    .param p2, "_numarg"    # I

    .prologue
    .line 710
    move v2, p0

    .line 711
    .local v2, "type":I
    move-object v1, p1

    .line 712
    .local v1, "optarg":Ljava/lang/String;
    move v0, p2

    .line 714
    .local v0, "numarg":I
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$6;

    invoke-direct {v4, v2, v1, v0}, Lcom/yoyogames/runner/RunnerJNILib$6;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method public static AcquireInAppPurchase(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "_productId"    # Ljava/lang/String;
    .param p1, "_payload"    # Ljava/lang/String;
    .param p2, "_purchaseIndex"    # I

    .prologue
    .line 1290
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->purchaseCatalogItem(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1291
    return-void
.end method

.method public static AdsDisplayHeight(I)I
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 560
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 564
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 565
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0}, Lcom/genouka/fumo/mvz2/IAdExt;->getAdDisplayHeight(I)I

    move-result v1

    .line 571
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 562
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static AdsDisplayWidth(I)I
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 545
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 549
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 550
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0}, Lcom/genouka/fumo/mvz2/IAdExt;->getAdDisplayWidth(I)I

    move-result v1

    .line 556
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 547
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static AdsEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "_ident"    # Ljava/lang/String;

    .prologue
    .line 593
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 597
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 598
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0}, Lcom/genouka/fumo/mvz2/IAdExt;->event(Ljava/lang/String;)V

    .line 595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static AdsEventPreload(Ljava/lang/String;)V
    .locals 0
    .param p0, "_ident"    # Ljava/lang/String;

    .prologue
    .line 607
    return-void
.end method

.method public static AdsSetup(Ljava/lang/String;)V
    .locals 0
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 538
    return-void
.end method

.method public static native BackKeyLongPressEvent()V
.end method

.method public static CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "methodname"    # Ljava/lang/String;
    .param p2, "argcount"    # I
    .param p3, "dblargs"    # [D
    .param p4, "objargs"    # [Ljava/lang/Object;

    .prologue
    .line 1127
    const/4 v15, 0x0

    .line 1128
    .local v15, "retObject":Ljava/lang/Object;
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-nez v18, :cond_1

    .line 1130
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Attempting to call extension function with no extensions loaded "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    .end local v15    # "retObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v15

    .line 1134
    .restart local v15    # "retObject":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    .line 1136
    :cond_2
    if-nez p0, :cond_3

    .line 1137
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Attempting to call extension function with null classname method:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :cond_3
    if-nez p1, :cond_0

    .line 1139
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Attempting to call extension function with null methodname on class:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1148
    :cond_4
    const/4 v5, 0x0

    .line 1151
    .local v5, "ReqClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "com.genouka.travel.mvz2."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1158
    :goto_1
    if-eqz v5, :cond_0

    .line 1162
    const/4 v10, 0x0

    .end local v15    # "retObject":Ljava/lang/Object;
    .local v10, "j":I
    :goto_2
    :try_start_1
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 1164
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1166
    if-lez p2, :cond_e

    .line 1168
    move/from16 v0, p2

    new-array v6, v0, [Ljava/lang/Class;

    .line 1169
    .local v6, "cArg":[Ljava/lang/Class;
    move/from16 v0, p2

    new-array v4, v0, [Ljava/lang/Object;

    .line 1172
    .local v4, "Args":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move/from16 v0, p2

    if-ge v9, v0, :cond_6

    .line 1174
    aget-object v18, p4, v9

    if-eqz v18, :cond_5

    .line 1176
    aget-object v18, p4, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v6, v9

    .line 1177
    aget-object v18, p4, v9

    aput-object v18, v4, v9

    .line 1172
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1153
    .end local v4    # "Args":[Ljava/lang/Object;
    .end local v6    # "cArg":[Ljava/lang/Class;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .restart local v15    # "retObject":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 1155
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Extension Class not found: com.genouka.travel.mvz2."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " attempting to call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1262
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v15    # "retObject":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 1265
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception thrown trying to call method "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v18, "yoyo"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1181
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "Args":[Ljava/lang/Object;
    .restart local v6    # "cArg":[Ljava/lang/Class;
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    :cond_5
    :try_start_2
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v18, v6, v9

    .line 1182
    aget-wide v18, p3, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v4, v9

    goto :goto_4

    .line 1187
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1188
    .local v12, "methods":[Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 1189
    .local v16, "toInvoke":Ljava/lang/reflect/Method;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget-object v11, v12, v18

    .line 1191
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1189
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1194
    :cond_8
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 1195
    .local v14, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 1198
    const/4 v9, 0x0

    :goto_6
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    .line 1200
    aget-object v20, v14, v9

    aget-object v21, v6, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1203
    :cond_9
    array-length v0, v6

    move/from16 v20, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v0, v20

    if-ne v9, v0, :cond_7

    .line 1206
    move-object/from16 v16, v11

    .line 1211
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    if-eqz v16, :cond_d

    .line 1214
    :try_start_3
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v18, v18, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v15

    .line 1162
    .end local v4    # "Args":[Ljava/lang/Object;
    .end local v6    # "cArg":[Ljava/lang/Class;
    .end local v9    # "i":I
    .end local v12    # "methods":[Ljava/lang/reflect/Method;
    .end local v16    # "toInvoke":Ljava/lang/reflect/Method;
    :cond_b
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1198
    .restart local v4    # "Args":[Ljava/lang/Object;
    .restart local v6    # "cArg":[Ljava/lang/Class;
    .restart local v9    # "i":I
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "methods":[Ljava/lang/reflect/Method;
    .restart local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v16    # "toInvoke":Ljava/lang/reflect/Method;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1216
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_2
    move-exception v8

    .line 1218
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception3 thrown trying to call method "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1222
    .local v7, "classMethods":[Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    .local v17, "xx":I
    :goto_8
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1224
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found method "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v7, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1231
    .end local v7    # "classMethods":[Ljava/lang/reflect/Method;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v17    # "xx":I
    :cond_d
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to find method to invoke matching methodname:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on class:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with params:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_9
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_b

    .line 1234
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "param:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v6, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1232
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1241
    .end local v4    # "Args":[Ljava/lang/Object;
    .end local v6    # "cArg":[Ljava/lang/Class;
    .end local v9    # "i":I
    .end local v12    # "methods":[Ljava/lang/reflect/Method;
    .end local v13    # "p":I
    .end local v16    # "toInvoke":Ljava/lang/reflect/Method;
    :cond_e
    :try_start_5
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1242
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    if-nez v11, :cond_f

    .line 1244
    const-string v18, "yoyo"

    const-string v19, "Can\'t find argfree method on extension class:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_7

    .line 1249
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v8

    .line 1251
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception thrown trying to call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with no arguments:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7

    .line 1247
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :cond_f
    :try_start_7
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v18, v18, v10

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v15

    .restart local v15    # "retObject":Ljava/lang/Object;
    goto/16 :goto_7
.end method

.method public static CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "methodname"    # Ljava/lang/String;
    .param p2, "argcount"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1012
    const/4 v9, 0x0

    .line 1013
    .local v9, "retObject":Ljava/lang/Object;
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-nez v11, :cond_1

    .line 1015
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempting to call extension function with no extensions loaded "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v9    # "retObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v9

    .line 1019
    .restart local v9    # "retObject":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    .line 1021
    :cond_2
    if-nez p0, :cond_3

    .line 1022
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempting to call extension function with null classname method:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1023
    :cond_3
    if-nez p1, :cond_0

    .line 1024
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempting to call extension function with null methodname on class:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_4
    const/4 v1, 0x0

    .line 1035
    .local v1, "ReqClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.genouka.travel.mvz2."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1042
    :goto_1
    if-eqz v1, :cond_0

    .line 1045
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    :try_start_1
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v11, v11

    if-ge v7, v11, :cond_0

    .line 1047
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    if-eqz v11, :cond_8

    .line 1049
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1051
    if-lez p2, :cond_7

    .line 1053
    move/from16 v0, p2

    new-array v3, v0, [Ljava/lang/Class;

    .line 1055
    .local v3, "cArg":[Ljava/lang/Class;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move/from16 v0, p2

    if-ge v6, v0, :cond_5

    .line 1057
    aget-object v11, p3, v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v3, v6

    .line 1055
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1037
    .end local v3    # "cArg":[Ljava/lang/Class;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :catch_0
    move-exception v5

    .line 1039
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extension Class not found: com.genouka.travel.mvz2."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " attempting to call "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1114
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 1117
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception thrown trying to call method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1061
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cArg":[Ljava/lang/Class;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_5
    :try_start_2
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1063
    .local v8, "method":Ljava/lang/reflect/Method;
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Method found, attempting to invoke "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    goto/16 :goto_0

    .line 1067
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v5

    .line 1069
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception thrown calling method on extension class:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " looking for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, 0x0

    .local v2, "ac":I
    :goto_4
    move/from16 v0, p2

    if-ge v2, v0, :cond_6

    .line 1073
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Argument "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v3, v2

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1075
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1077
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1079
    .local v4, "classMethods":[Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .local v10, "xx":I
    :goto_5
    array-length v11, v4

    if-ge v10, v11, :cond_8

    .line 1081
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v4, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1079
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1091
    .end local v2    # "ac":I
    .end local v3    # "cArg":[Ljava/lang/Class;
    .end local v4    # "classMethods":[Ljava/lang/reflect/Method;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v10    # "xx":I
    :cond_7
    :try_start_4
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v11, p1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1094
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    sget-object v11, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v11, v11, v7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v9

    goto/16 :goto_0

    .line 1097
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v5

    .line 1100
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "yoyo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception thrown calling argfree method on extension class:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " looking for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1045
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public static CheckPermission(Ljava/lang/String;)I
    .locals 6
    .param p0, "_permission"    # Ljava/lang/String;

    .prologue
    .line 2026
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2030
    .local v0, "packMgmr":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {v3, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 2031
    .local v1, "permissionCheck":I
    if-nez v1, :cond_0

    .line 2033
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission granted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const/4 v3, 0x1

    .line 2048
    :goto_0
    return v3

    .line 2038
    :cond_0
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {v3, p0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 2040
    .local v2, "sshow":Z
    if-eqz v2, :cond_1

    .line 2042
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission denied but not prevented from asking: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/4 v3, 0x0

    goto :goto_0

    .line 2047
    :cond_1
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission denied and shouldn\'t be requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static ClearGamepads()V
    .locals 0

    .prologue
    .line 2216
    return-void
.end method

.method public static native CloudResultData([BII)V
.end method

.method public static native CloudResultString(Ljava/lang/String;II)V
.end method

.method public static ConsumeInAppPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_productId"    # Ljava/lang/String;
    .param p1, "_token"    # Ljava/lang/String;

    .prologue
    .line 1295
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->consumeCatalogItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public static native CreateAsynEventWithDSMap(II)V
.end method

.method public static native CreateVersionDSMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static DisableAds(I)V
    .locals 3
    .param p0, "_slot"    # I

    .prologue
    .line 576
    const-string v1, "yoyo"

    const-string v2, "DisableAds"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 582
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 583
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0}, Lcom/genouka/fumo/mvz2/IAdExt;->disable(I)V

    .line 580
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static DownloadFileTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "_urlFile"    # Ljava/lang/String;
    .param p1, "_to"    # Ljava/lang/String;

    .prologue
    .line 1307
    const/4 v6, 0x0

    .line 1309
    .local v6, "ret":Z
    :try_start_0
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadFileTo( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1312
    .local v2, "connection":Ljava/net/URLConnection;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1313
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 1314
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1315
    .local v3, "fs":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1316
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 1317
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 1318
    .local v5, "len1":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 1319
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1325
    .end local v1    # "buffer":[B
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len1":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "_e":Ljava/net/MalformedURLException;
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException on DownloadFileTo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    .end local v0    # "_e":Ljava/net/MalformedURLException;
    :goto_1
    return v6

    .line 1322
    .restart local v1    # "buffer":[B
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len1":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1323
    const/4 v6, 0x1

    goto :goto_1

    .line 1328
    .end local v1    # "buffer":[B
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len1":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 1329
    .local v0, "_e":Ljava/net/ProtocolException;
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProtocolException on DownloadFileTo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1331
    .end local v0    # "_e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v0

    .line 1332
    .local v0, "_e":Ljava/io/FileNotFoundException;
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException on DownloadFileTo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1334
    .end local v0    # "_e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1335
    .local v0, "_e":Ljava/io/IOException;
    const-string v8, "yoyo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException on DownloadFileTo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static native DsMapAddDouble(ILjava/lang/String;D)V
.end method

.method public static native DsMapAddString(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static DumpUsedMemory()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 2188
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2189
    .local v1, "memoryInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 2191
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "App Memory: Pss=%.2f MB\nPrivate=%.2f MB\nShared=%.2f MB"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2192
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2193
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 2194
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2191
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    .local v0, "memMessage":Ljava/lang/String;
    const-string v2, "yoyo"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    return-void
.end method

.method public static EnableAds(III)V
    .locals 2
    .param p0, "_x"    # I
    .param p1, "_y"    # I
    .param p2, "_num"    # I

    .prologue
    .line 521
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 525
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0, p1, p2}, Lcom/genouka/fumo/mvz2/IAdExt;->enable(III)V

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static EnableInAppBilling([Ljava/lang/String;)V
    .locals 1
    .param p0, "_productIds"    # [Ljava/lang/String;

    .prologue
    .line 1280
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->enableInAppPurchases([Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public static EnumerateGamepadDevices()V
    .locals 0

    .prologue
    .line 2373
    invoke-static {}, Lcom/genouka/fumo/mvz2/Gamepad;->EnumerateDevices()V

    .line 2374
    return-void
.end method

.method public static ExitApplication()V
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    if-nez v0, :cond_0

    .line 136
    const-string v0, "yoyo"

    const-string v1, "First exit application called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    .line 138
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$1;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public static native ExpandCompressedFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static FacebookAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    const-string v0, "facebook_accesstoken"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    const-string v0, ""

    .line 1375
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static FacebookCheckPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "_permission"    # Ljava/lang/String;

    .prologue
    .line 1390
    const-string v0, "facebook_user_id"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    const/4 v0, 0x0

    .line 1394
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->CheckPermission(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static FacebookDialog(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "dialogType"    # Ljava/lang/String;
    .param p1, "keyValuePairs"    # [Ljava/lang/String;
    .param p2, "dsMapResponse"    # I

    .prologue
    .line 1455
    const-string v0, "facebook_dialog"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1459
    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->dialog(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static FacebookGraphRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "graphPath"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "keyValuePairs"    # [Ljava/lang/String;
    .param p3, "dsMapResponse"    # I

    .prologue
    .line 1443
    const-string v0, "facebook_post_message/facebook_graph_request"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1447
    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->graphRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static FacebookInit(Ljava/lang/String;)V
    .locals 3
    .param p0, "_appID_unused"    # Ljava/lang/String;

    .prologue
    .line 1347
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getFacebookAppId()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1350
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    if-nez v1, :cond_0

    .line 1352
    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-direct {v1}, Lcom/genouka/fumo/mvz2/RunnerFacebook;-><init>()V

    sput-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    .line 1353
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v1, v0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->initFacebook(Ljava/lang/String;)V

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    const-string v1, "yoyo"

    const-string v2, "facebook_init failed: no application id supplied. Ensure facebook is enabled in Global Game Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static FacebookInviteDialog(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "dialogType"    # Ljava/lang/String;
    .param p1, "keyValuePairs"    # [Ljava/lang/String;
    .param p2, "dsMapResponse"    # I

    .prologue
    .line 1464
    const-string v0, "facebook_send_invite"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1468
    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->inviteDialog(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static FacebookLogin([Ljava/lang/String;)V
    .locals 2
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 1417
    const-string v0, "facebook_login"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    :goto_0
    return-void

    .line 1421
    :cond_0
    const-string v0, "yoyo"

    const-string v1, "Logging into Facebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->setupFacebook([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static FacebookLoginStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    const-string v0, "facebook_status"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    const-string v0, "IDLE"

    .line 1411
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->facebookLoginStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static FacebookLogout()V
    .locals 2

    .prologue
    .line 1429
    const-string v0, "facebook_logout"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    const-string v0, "yoyo"

    const-string v1, "Logging out of Facebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    if-eqz v0, :cond_0

    .line 1435
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->logout()V

    goto :goto_0
.end method

.method public static FacebookRequestPermissions([Ljava/lang/String;Z)I
    .locals 1
    .param p0, "_permissions"    # [Ljava/lang/String;
    .param p1, "_bPublishPerms"    # Z

    .prologue
    .line 1399
    const-string v0, "facebook_request_read/publish_permissions"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    const/4 v0, -0x1

    .line 1402
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0, p0, p1}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->RequestPermissions([Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public static FacebookUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    const-string v0, "facebook_user_id"

    invoke-static {v0}, Lcom/yoyogames/runner/RunnerJNILib;->checkFBInitialised(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    const-string v0, ""

    .line 1383
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static native GCMPushResult(Ljava/lang/String;IZ)V
.end method

.method public static GamepadAxesValues(I)[F
    .locals 1
    .param p0, "deviceIndex"    # I

    .prologue
    .line 2230
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GamepadButtonValues(I)[F
    .locals 1
    .param p0, "deviceIndex"    # I

    .prologue
    .line 2235
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GamepadConnected(I)Z
    .locals 1
    .param p0, "deviceIndex"    # I

    .prologue
    .line 2220
    const/4 v0, 0x0

    return v0
.end method

.method public static GamepadDescription(I)Ljava/lang/String;
    .locals 1
    .param p0, "deviceIndex"    # I

    .prologue
    .line 2225
    const-string v0, ""

    return-object v0
.end method

.method public static GamepadGMLMapping(II)I
    .locals 1
    .param p0, "deviceIndex"    # I
    .param p1, "inputId"    # I

    .prologue
    .line 2240
    const/4 v0, -0x1

    return v0
.end method

.method public static GamepadsCount()I
    .locals 1

    .prologue
    .line 2211
    const/4 v0, 0x0

    return v0
.end method

.method public static native GetAppID(I)Ljava/lang/String;
.end method

.method public static GetApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2204
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    return-object v0
.end method

.method public static GetDefaultFrameBuffer()I
    .locals 1

    .prologue
    .line 253
    sget v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_defaultFrameBuffer:I

    return v0
.end method

.method public static GetInAppPurchaseDetail(Ljava/lang/String;)V
    .locals 1
    .param p0, "_productId"    # Ljava/lang/String;

    .prologue
    .line 1300
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->getCatalogItemDetails(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method public static native GetSaveFileName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static GetUDID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2303
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2304
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2305
    const-string v0, "UDID NOT AVAILABLE"

    .line 2307
    :cond_0
    return-object v0
.end method

.method public static HasVsyncHandler()I
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static HttpGet(Ljava/lang/String;I)V
    .locals 5
    .param p0, "_url"    # Ljava/lang/String;
    .param p1, "_id"    # I

    .prologue
    .line 1696
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpGet(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    move-object v1, p0

    .line 1699
    .local v1, "url":Ljava/lang/String;
    move v0, p1

    .line 1700
    .local v0, "id":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$22;

    invoke-direct {v3, v1, v0}, Lcom/yoyogames/runner/RunnerJNILib$22;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1770
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1771
    return-void
.end method

.method private static HttpGetHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .param p0, "_conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1683
    const-string v0, ""

    .line 1684
    .local v0, "headers":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1685
    .local v1, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1686
    .local v2, "v":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1689
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "nokey: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1692
    .end local v1    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "v":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static HttpPost(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "_url"    # Ljava/lang/String;
    .param p1, "_post"    # Ljava/lang/String;
    .param p2, "_id"    # I

    .prologue
    .line 1774
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpPost(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    move-object v2, p0

    .line 1777
    .local v2, "url":Ljava/lang/String;
    move-object v1, p1

    .line 1778
    .local v1, "post":Ljava/lang/String;
    move v0, p2

    .line 1779
    .local v0, "id":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$23;

    invoke-direct {v4, v2, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib$23;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1848
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1849
    return-void
.end method

.method public static native HttpProgress([BIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public static HttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 8
    .param p0, "_url"    # Ljava/lang/String;
    .param p1, "_method"    # Ljava/lang/String;
    .param p2, "_headers"    # Ljava/lang/String;
    .param p3, "_post"    # [B
    .param p4, "_id"    # I

    .prologue
    .line 1854
    const-string v0, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttpRequest(\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    move-object v1, p0

    .line 1858
    .local v1, "url":Ljava/lang/String;
    move-object v3, p1

    .line 1859
    .local v3, "method":Ljava/lang/String;
    move-object v4, p2

    .line 1860
    .local v4, "headers":Ljava/lang/String;
    move-object v5, p3

    .line 1861
    .local v5, "post":[B
    move v2, p4

    .line 1863
    .local v2, "id":I
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/yoyogames/runner/RunnerJNILib$24;

    invoke-direct/range {v0 .. v5}, Lcom/yoyogames/runner/RunnerJNILib$24;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1978
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1980
    return-void
.end method

.method public static native HttpResult([BIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native HttpResultString(Ljava/lang/String;II)V
.end method

.method public static native IAPConsumeEvent(Ljava/lang/String;)V
.end method

.method public static native IAPProductDetailsReceived(Ljava/lang/String;)V
.end method

.method public static native IAPProductPurchaseEvent(Ljava/lang/String;)V
.end method

.method public static native IAPRestoreEvent(I)V
.end method

.method public static native IAPStoreLoadEvent(I)V
.end method

.method public static IncrementAchievement(Ljava/lang/String;F)V
    .locals 4
    .param p0, "_achievement"    # Ljava/lang/String;
    .param p1, "_incval"    # F

    .prologue
    .line 955
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    move-object v0, p0

    .line 958
    .local v0, "ach":Ljava/lang/String;
    move v1, p1

    .line 959
    .local v1, "incval":F
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$14;

    invoke-direct {v3, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib$14;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    .end local v0    # "ach":Ljava/lang/String;
    .end local v1    # "incval":F
    :goto_0
    return-void

    .line 977
    :cond_0
    const-string v2, "yoyo"

    const-string v3, "Current achievements system does not support incrementing achievements"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    :try_start_0
    const-string v1, "c++_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    const-string v1, "yoyo"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 122
    return-void

    .line 114
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfied link error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-boolean v4, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    .line 117
    sput-boolean v4, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    goto :goto_0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 0
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 127
    sput-object p0, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public static native InputResult(Ljava/lang/String;II)V
.end method

.method public static InputString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "_message"    # Ljava/lang/String;
    .param p1, "_default"    # Ljava/lang/String;

    .prologue
    .line 1529
    const-string v4, "yoyo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InputString(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object v3, p0

    .line 1532
    .local v3, "sMessage":Ljava/lang/String;
    move-object v2, p1

    .line 1533
    .local v2, "sDefault":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1534
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v5, Lcom/yoyogames/runner/RunnerJNILib$18;

    invoke-direct {v5, v2, v3, v1}, Lcom/yoyogames/runner/RunnerJNILib$18;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :goto_0
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->InputStringResult:Ljava/lang/String;

    return-object v4

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static InputStringAsync(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "_message"    # Ljava/lang/String;
    .param p1, "_default"    # Ljava/lang/String;
    .param p2, "_id"    # I

    .prologue
    .line 1573
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputStringAsync(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object v2, p0

    .line 1576
    .local v2, "sMessage":Ljava/lang/String;
    move-object v1, p1

    .line 1577
    .local v1, "sDefault":Ljava/lang/String;
    move v0, p2

    .line 1578
    .local v0, "idDialog":I
    const/4 v3, 0x1

    sput-boolean v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 1579
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$19;

    invoke-direct {v4, v1, v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$19;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1605
    return-void
.end method

.method public static native KeyEvent(IIII)V
.end method

.method public static LeaveRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "_text"    # Ljava/lang/String;
    .param p1, "_yes"    # Ljava/lang/String;
    .param p2, "_no"    # Ljava/lang/String;
    .param p3, "_url"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v4, "yoyo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LeaveRating("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object v1, p0

    .line 622
    .local v1, "sText":Ljava/lang/String;
    move-object v3, p1

    .line 623
    .local v3, "sYes":Ljava/lang/String;
    move-object v0, p2

    .line 624
    .local v0, "sNo":Ljava/lang/String;
    move-object v2, p3

    .line 625
    .local v2, "sUrl":Ljava/lang/String;
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v5, Lcom/yoyogames/runner/RunnerJNILib$2;

    invoke-direct {v5, v1, v3, v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public static native LoadPicForUserWithUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native LoginResult(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static MoveAds(III)V
    .locals 2
    .param p0, "_x"    # I
    .param p1, "_y"    # I
    .param p2, "_num"    # I

    .prologue
    .line 506
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 510
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 511
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1, p0, p1, p2}, Lcom/genouka/fumo/mvz2/IAdExt;->move(III)V

    .line 508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static MoveTaskToBack()V
    .locals 2

    .prologue
    .line 2105
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$28;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$28;-><init>()V

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2111
    return-void
.end method

.method public static native OFNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static OnKeyboardStringSet(Ljava/lang/String;)V
    .locals 2
    .param p0, "_newString"    # Ljava/lang/String;

    .prologue
    .line 2357
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$29;

    invoke-direct {v1, p0}, Lcom/yoyogames/runner/RunnerJNILib$29;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2368
    return-void
.end method

.method public static native OnLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native OnVirtualKeyboardStatus(Ljava/lang/String;I)V
.end method

.method public static native OnVirtualKeyboardTextInserted([CI)V
.end method

.method public static OpenAchievements()V
    .locals 2

    .prologue
    .line 651
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$3;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    :cond_0
    return-void
.end method

.method public static OpenLeaderboards()V
    .locals 2

    .prologue
    .line 864
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yoyogames/runner/RunnerJNILib$10;

    invoke-direct {v1}, Lcom/yoyogames/runner/RunnerJNILib$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    :cond_0
    return-void
.end method

.method public static OpenURL(Ljava/lang/String;)V
    .locals 5
    .param p0, "_url"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v1, "myIntent":Landroid/content/Intent;
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenURL failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OsGetInfo()I
    .locals 15

    .prologue
    .line 800
    const-string v0, "os.version"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 801
    .local v9, "version":Ljava/lang/String;
    const-string v0, "user.region"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 803
    .local v10, "region":Ljava/lang/String;
    const/4 v12, 0x0

    .line 804
    .local v12, "physicalKeyboardAvailable":Z
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v14

    .line 805
    .local v14, "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v14, :cond_0

    .line 807
    invoke-virtual {v14}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetPhysicalKeyboardConnected()Z

    move-result v12

    .line 842
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v11, Lcom/yoyogames/runner/RunnerJNILib;->ms_versionName:Ljava/lang/String;

    invoke-static/range {v0 .. v12}, Lcom/yoyogames/runner/RunnerJNILib;->CreateVersionDSMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    .line 857
    .local v13, "dsmapid":I
    return v13
.end method

.method public static native Pause(I)V
.end method

.method public static PauseMP3()V
    .locals 4

    .prologue
    .line 377
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "yoyo"

    const-string v2, "pause mp3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_0
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 383
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while pausing mp3 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static PlayMP3(Ljava/lang/String;I)V
    .locals 25
    .param p0, "_mp3"    # Ljava/lang/String;
    .param p1, "_loop"    # I

    .prologue
    .line 293
    const/16 v2, 0x20

    const/16 v3, 0x5f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 294
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to play mp3 - \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 296
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->StopMP3()V

    .line 299
    :cond_0
    const/4 v12, 0x0

    .line 301
    .local v12, "fSuccessful":Z
    :try_start_0
    const-string v2, "com.genouka.travel.mvz2.R$raw"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 302
    .local v19, "resRaw":Ljava/lang/Class;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mp3_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 303
    .local v13, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 304
    .local v16, "id":I
    if-eqz v16, :cond_1

    .line 305
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing mp3 - \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sput v16, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSessionId:I

    .line 307
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    sput-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 308
    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 310
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v12, 0x1

    .line 319
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "id":I
    .end local v19    # "resRaw":Ljava/lang/Class;
    :cond_1
    :goto_1
    if-nez v12, :cond_5

    .line 322
    :try_start_1
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to play zip - \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v22, Ljava/util/zip/ZipFile;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 324
    .local v22, "zip":Ljava/util/zip/ZipFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v24

    .line 325
    .local v24, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v24, :cond_4

    .line 328
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v23

    .line 329
    .local v23, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const-wide/16 v20, 0x0

    .line 330
    .local v20, "offset":J
    const/4 v12, 0x0

    .line 331
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 333
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    const-wide/16 v14, 0x0

    .line 334
    .local v14, "fileSize":J
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    if-nez v2, :cond_7

    const-wide/16 v10, 0x0

    .line 335
    .local v10, "extra":J
    :goto_3
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    int-to-long v2, v2

    add-long/2addr v2, v10

    add-long v20, v20, v2

    .line 336
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v14

    .line 339
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 340
    const/4 v12, 0x1

    .line 346
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "extra":J
    .end local v14    # "fileSize":J
    :cond_3
    if-eqz v12, :cond_4

    .line 348
    const/4 v2, -0x1

    sput v2, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSessionId:I

    .line 349
    sput-wide v20, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackOffset:J

    .line 350
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    sput-wide v2, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSize:J

    .line 351
    new-instance v17, Ljava/io/File;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v17, "inputFile":Ljava/io/File;
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 355
    .local v18, "is":Ljava/io/FileInputStream;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 356
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    sget-wide v4, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackOffset:J

    sget-wide v6, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSize:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 357
    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 358
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 359
    sget-object v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 361
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 366
    .end local v17    # "inputFile":Ljava/io/File;
    .end local v18    # "is":Ljava/io/FileInputStream;
    .end local v20    # "offset":J
    .end local v23    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipFile;->close()V

    .line 373
    .end local v22    # "zip":Ljava/util/zip/ZipFile;
    .end local v24    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    :goto_5
    return-void

    .line 308
    .restart local v13    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "id":I
    .restart local v19    # "resRaw":Ljava/lang/Class;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 314
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "id":I
    .end local v19    # "resRaw":Ljava/lang/Class;
    :catch_0
    move-exception v8

    .line 316
    .local v8, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 334
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "fileSize":J
    .restart local v20    # "offset":J
    .restart local v22    # "zip":Ljava/util/zip/ZipFile;
    .restart local v23    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v24    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v10, v2

    goto :goto_3

    .line 343
    .restart local v10    # "extra":J
    :cond_8
    add-long v20, v20, v14

    .line 344
    goto/16 :goto_2

    .line 357
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "extra":J
    .end local v14    # "fileSize":J
    .restart local v17    # "inputFile":Ljava/io/File;
    .restart local v18    # "is":Ljava/io/FileInputStream;
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 369
    .end local v17    # "inputFile":Ljava/io/File;
    .end local v18    # "is":Ljava/io/FileInputStream;
    .end local v20    # "offset":J
    .end local v22    # "zip":Ljava/util/zip/ZipFile;
    .end local v23    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v24    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v8

    .line 370
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while opening mp3 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static PlayingMP3()Z
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "ret":Z
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 427
    :goto_0
    return v0

    .line 425
    :cond_0
    const-string v1, "yoyo"

    const-string v2, "PlayingMP3(): ms_mp is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native Process(IIFFFIIF)I
.end method

.method public static PushCancelLocalNotification(I)I
    .locals 5
    .param p0, "iIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 2274
    new-array v0, v4, [Ljava/lang/Object;

    .line 2275
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2277
    const-string v2, "GooglePlayServicesExtension"

    const-string v3, "pushCancelLocalNotification"

    invoke-static {v2, v3, v4, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2279
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2281
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "ret":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2283
    :goto_0
    return v2

    .restart local v1    # "ret":Ljava/lang/Object;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static PushGetLocalNotification(II)I
    .locals 5
    .param p0, "iIndex"    # I
    .param p1, "dsMap"    # I

    .prologue
    const/4 v4, 0x2

    .line 2259
    new-array v0, v4, [Ljava/lang/Object;

    .line 2260
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2261
    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2263
    const-string v2, "GooglePlayServicesExtension"

    const-string v3, "PushGetLocalNotification"

    invoke-static {v2, v3, v4, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2265
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2267
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "ret":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2269
    :goto_0
    return v2

    .restart local v1    # "ret":Ljava/lang/Object;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static PushLocalNotification(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "fireTime"    # F
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 2246
    new-array v0, v3, [Ljava/lang/Object;

    .line 2247
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2248
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2249
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 2250
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 2252
    const-string v1, "GooglePlayServicesExtension"

    const-string v2, "PushLocalNotification"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    return-void
.end method

.method public static native RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V
.end method

.method public static RequestPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "_permission"    # Ljava/lang/String;

    .prologue
    .line 2057
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x61

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2058
    return-void
.end method

.method public static RestoreInAppPurchases()V
    .locals 1

    .prologue
    .line 1285
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->restorePurchasedItems()V

    .line 1286
    return-void
.end method

.method public static RestoreMP3State()V
    .locals 10

    .prologue
    .line 458
    sget-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->mPlaybackStateStored:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 459
    const/4 v8, 0x0

    .line 460
    .local v8, "is":Ljava/io/FileInputStream;
    sget v0, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 461
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    sget v1, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSessionId:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 477
    :goto_0
    :try_start_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    sget-boolean v1, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackLoop:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 478
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    sget v1, Lcom/yoyogames/runner/RunnerJNILib;->mStoredVolume:F

    sget v2, Lcom/yoyogames/runner/RunnerJNILib;->mStoredVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 479
    if-eqz v8, :cond_0

    .line 480
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 482
    :cond_0
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    sget v1, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 483
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 484
    if-eqz v8, :cond_1

    .line 485
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    :cond_1
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->mPlaybackStateStored:Z

    .line 496
    :cond_2
    return-void

    .line 466
    :cond_3
    :try_start_1
    new-instance v7, Ljava/io/File;

    sget-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v7, "inputFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 470
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-wide v2, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackOffset:J

    sget-wide v4, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackSize:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v9

    .line 474
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 472
    .end local v7    # "inputFile":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 473
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while opening mp3 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 488
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while opening mp3 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 472
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "inputFile":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static RestrictOrientation(ZZZZZ)V
    .locals 6
    .param p0, "_landscape"    # Z
    .param p1, "_portrait"    # Z
    .param p2, "_landscapeFlipped"    # Z
    .param p3, "_portraitFlipped"    # Z
    .param p4, "_fromPrefs"    # Z

    .prologue
    .line 2289
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RestrictOrientation(ZZZZZ)V

    .line 2290
    return-void
.end method

.method public static native Resume(I)V
.end method

.method public static ResumeMP3()V
    .locals 4

    .prologue
    .line 390
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "yoyo"

    const-string v2, "resume mp3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while resuming mp3 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static SendAchievement(Ljava/lang/String;F)V
    .locals 4
    .param p0, "_achievement"    # Ljava/lang/String;
    .param p1, "_percentageDone"    # F

    .prologue
    .line 933
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    move-object v0, p0

    .line 936
    .local v0, "ach":Ljava/lang/String;
    move v1, p1

    .line 937
    .local v1, "incval":F
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$13;

    invoke-direct {v3, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib$13;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    .end local v0    # "ach":Ljava/lang/String;
    .end local v1    # "incval":F
    :cond_0
    return-void
.end method

.method public static SendHighScore(Ljava/lang/String;I)V
    .locals 5
    .param p0, "_leaderboard"    # Ljava/lang/String;
    .param p1, "_score"    # I

    .prologue
    .line 985
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendHighScore("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object v0, p0

    .line 989
    .local v0, "lb":Ljava/lang/String;
    move v1, p1

    .line 990
    .local v1, "sc":I
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$15;

    invoke-direct {v3, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib$15;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method

.method public static native SetAchievementsAvailable(Z)V
.end method

.method public static native SetKeyValue(IILjava/lang/String;)V
.end method

.method public static SetLaunchedFromPlayer(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "_fileName"    # Ljava/lang/String;
    .param p1, "_fromPlayer"    # Z

    .prologue
    .line 2312
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0, p0, p1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->SetLaunchedFromPlayer(Ljava/lang/String;Z)V

    .line 2313
    return-void
.end method

.method public static SetMP3Volume(F)V
    .locals 1
    .param p0, "_vol"    # F

    .prologue
    .line 433
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 435
    sput p0, Lcom/yoyogames/runner/RunnerJNILib;->mStoredVolume:F

    .line 437
    :cond_0
    return-void
.end method

.method public static SetThreadPriority(I)V
    .locals 4
    .param p0, "_priority"    # I

    .prologue
    .line 611
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetThreadPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 613
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 614
    return-void
.end method

.method public static ShowLogin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "_defaultUsername"    # Ljava/lang/String;
    .param p1, "_defaultPassword"    # Ljava/lang/String;
    .param p2, "_id"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1988
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoginDialog(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    move-object v2, p0

    .line 1991
    .local v2, "sDefaultUserName":Ljava/lang/String;
    move-object v1, p1

    .line 1992
    .local v1, "sDefaultPassword":Ljava/lang/String;
    move v0, p2

    .line 1993
    .local v0, "idDialog":I
    const/4 v3, 0x1

    sput-boolean v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 1994
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$25;

    invoke-direct {v4, v2, v1, v0}, Lcom/yoyogames/runner/RunnerJNILib$25;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2022
    return-void
.end method

.method public static ShowMessage(Ljava/lang/String;)V
    .locals 6
    .param p0, "_message"    # Ljava/lang/String;

    .prologue
    .line 1474
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowMessage(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    move-object v2, p0

    .line 1477
    .local v2, "sMessage":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1478
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$16;

    invoke-direct {v4, v2, v1}, Lcom/yoyogames/runner/RunnerJNILib$16;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1494
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_0
    return-void

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static ShowMessageAsync(Ljava/lang/String;I)V
    .locals 5
    .param p0, "_message"    # Ljava/lang/String;
    .param p1, "_id"    # I

    .prologue
    .line 1503
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowMessageAsync(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object v1, p0

    .line 1506
    .local v1, "sMessage":Ljava/lang/String;
    move v0, p1

    .line 1507
    .local v0, "idDialog":I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 1508
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$17;

    invoke-direct {v3, v1, v0}, Lcom/yoyogames/runner/RunnerJNILib$17;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1523
    return-void
.end method

.method public static ShowQuestion(Ljava/lang/String;)I
    .locals 6
    .param p0, "_message"    # Ljava/lang/String;

    .prologue
    .line 1611
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowQuestion(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    move-object v2, p0

    .line 1614
    .local v2, "sMessage":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1615
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v3, 0x0

    sput v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ShowQuestionYesNo:I

    .line 1616
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yoyogames/runner/RunnerJNILib$20;

    invoke-direct {v4, v2, v1}, Lcom/yoyogames/runner/RunnerJNILib$20;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1640
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :goto_0
    sget v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->ShowQuestionYesNo:I

    return v3

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static ShowQuestionAsync(Ljava/lang/String;I)V
    .locals 5
    .param p0, "_message"    # Ljava/lang/String;
    .param p1, "_id"    # I

    .prologue
    .line 1650
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowQuestionAsync(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    move-object v1, p0

    .line 1654
    .local v1, "sMessage":Ljava/lang/String;
    move v0, p1

    .line 1655
    .local v0, "idDialog":I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 1656
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/yoyogames/runner/RunnerJNILib$21;

    invoke-direct {v3, v1, v0}, Lcom/yoyogames/runner/RunnerJNILib$21;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1675
    return-void
.end method

.method public static native Startup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static StopMP3()V
    .locals 4

    .prologue
    .line 404
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "yoyo"

    const-string v2, "stop mp3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :try_start_0
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 408
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    .line 415
    :cond_0
    return-void

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while stopping mp3 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static StoreMP3State()V
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackPosition:I

    .line 446
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->mStoredPlaybackLoop:Z

    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->mPlaybackStateStored:Z

    .line 451
    :cond_0
    return-void
.end method

.method public static native TouchEvent(IIFF)V
.end method

.method public static UsingGL2()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    return v0
.end method

.method public static VirtualKeyboardGetHeight()I
    .locals 2

    .prologue
    .line 2345
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v0

    .line 2346
    .local v0, "controller":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetVirtualKeyboardHeightCached()I

    move-result v1

    .line 2351
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static VirtualKeyboardGetStatus()Z
    .locals 2

    .prologue
    .line 2333
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v0

    .line 2334
    .local v0, "controller":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v0, :cond_0

    .line 2336
    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardGetStatus()Z

    move-result v1

    .line 2339
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static VirtualKeyboardToggle(ZIIIZLjava/lang/String;)V
    .locals 7
    .param p0, "_toggleOn"    # Z
    .param p1, "_keyboardType"    # I
    .param p2, "_returnKeyType"    # I
    .param p3, "_autoCapitalizationType"    # I
    .param p4, "_predictiveTextEnabled"    # Z
    .param p5, "_inputString"    # Ljava/lang/String;

    .prologue
    .line 2323
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v0

    .line 2324
    .local v0, "controller":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v0, :cond_0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2326
    invoke-virtual/range {v0 .. v6}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardToggle(ZIIIZLjava/lang/String;)V

    .line 2328
    :cond_0
    return-void
.end method

.method public static WaitForVsync()V
    .locals 0

    .prologue
    .line 263
    invoke-static {}, Lcom/genouka/fumo/mvz2/DemoRenderer;->WaitForVsync()V

    .line 264
    return-void
.end method

.method static synthetic access$000(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/yoyogames/runner/RunnerJNILib;->HttpGetHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static analyticsEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "_string"    # Ljava/lang/String;

    .prologue
    .line 2126
    return-void
.end method

.method public static analyticsEventExt(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "_event"    # Ljava/lang/String;
    .param p1, "keyValuePairs"    # [Ljava/lang/String;

    .prologue
    .line 2147
    return-void
.end method

.method public static native callreward(IILjava/lang/String;)V
.end method

.method public static native canFlip()Z
.end method

.method private static checkFBInitialised(Ljava/lang/String;)Z
    .locals 3
    .param p0, "_msg"    # Ljava/lang/String;

    .prologue
    .line 1364
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    if-nez v0, :cond_0

    .line 1365
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : facebook_init was not called or facebook appId is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cloudStringSave(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "_data"    # Ljava/lang/String;
    .param p1, "_desc"    # Ljava/lang/String;
    .param p2, "_id"    # I

    .prologue
    const/4 v3, 0x3

    .line 2152
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    new-array v0, v3, [Ljava/lang/Object;

    .line 2155
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2156
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2157
    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2159
    const-string v1, "GooglePlayServicesExtension"

    const-string v2, "onGSStringSave"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    .end local v0    # "argArray":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 2162
    :cond_0
    const-string v1, "yoyo"

    const-string v2, "cloud_string_save() called when not logged in to appropriate service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cloudSynchronise(I)V
    .locals 4
    .param p0, "_id"    # I

    .prologue
    const/4 v3, 0x1

    .line 2171
    invoke-static {}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isLoggedInGooglePlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2174
    new-array v0, v3, [Ljava/lang/Object;

    .line 2175
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2178
    const-string v1, "GooglePlayServicesExtension"

    const-string v2, "onGSCloudSync"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    .end local v0    # "argArray":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 2181
    :cond_0
    const-string v1, "yoyo"

    const-string v2, "cloudSynchronise called when not logged in to appropriate service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native dsListAddInt(II)V
.end method

.method public static native dsListAddString(ILjava/lang/String;)V
.end method

.method public static native dsListCreate()I
.end method

.method public static native dsMapAddInt(ILjava/lang/String;I)V
.end method

.method public static native dsMapAddString(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native dsMapCreate()I
.end method

.method public static native getGuiHeight()I
.end method

.method public static native getGuiWidth()I
.end method

.method public static native iCadeEventDispatch(IZ)V
.end method

.method public static native initGLFuncs(I)I
.end method

.method public static isNetworkConnected()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2063
    sget-object v3, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2064
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 2066
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2067
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2069
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static native jCreateDsMap([Ljava/lang/String;[Ljava/lang/String;[D)I
.end method

.method public static native onGPDeviceAdded(ILjava/lang/String;Ljava/lang/String;IIIII)V
.end method

.method public static native onGPDeviceRemoved(I)V
.end method

.method public static native onGPKeyDown(II)V
.end method

.method public static native onGPKeyUp(II)V
.end method

.method public static native onGPNativeAxis(IIF)V
.end method

.method public static native onGPNativeHat(IIFF)V
.end method

.method public static native onGamepadChange()V
.end method

.method public static native onItemPurchase(Ljava/lang/String;I)V
.end method

.method public static powersaveEnable(Z)V
    .locals 3
    .param p0, "_enable"    # Z

    .prologue
    .line 2090
    move v0, p0

    .line 2091
    .local v0, "enable":Z
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yoyogames/runner/RunnerJNILib$27;

    invoke-direct {v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$27;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    return-void
.end method

.method public static native registerGamepadConnected(III)V
.end method

.method public static setSystemUIVisibilityFlags(I)V
    .locals 3
    .param p0, "_flags"    # I

    .prologue
    .line 2074
    move v0, p0

    .line 2075
    .local v0, "flags":I
    const-string v1, "yoyo"

    const-string v2, "Calling setSystemUIVisibilityFlags"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yoyogames/runner/RunnerJNILib$26;

    invoke-direct {v2, v0}, Lcom/yoyogames/runner/RunnerJNILib$26;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2086
    return-void
.end method
