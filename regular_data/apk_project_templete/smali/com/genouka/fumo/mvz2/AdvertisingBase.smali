.class Lcom/genouka/fumo/mvz2/AdvertisingBase;
.super Ljava/lang/Object;
.source "AdvertisingBase.java"

# interfaces
.implements Lcom/genouka/fumo/mvz2/IAdvertising;


# instance fields
.field public m_activity:Landroid/app/Activity;

.field public m_adDefinitions:[Ljava/lang/String;

.field public m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public m_usetestads:Z

.field public m_view:Landroid/view/View;

.field public m_viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "_usetestads"    # Z

    .prologue
    const/16 v1, 0xa

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_activity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_viewGroup:Landroid/view/ViewGroup;

    .line 28
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adDefinitions:[Ljava/lang/String;

    .line 29
    new-array v0, v1, [Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_view:Landroid/view/View;

    .line 31
    iput-boolean p3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_usetestads:Z

    .line 32
    return-void
.end method

.method public static ConvertToAdType(I)Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    .locals 1
    .param p0, "_type"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 37
    .local v0, "ret":Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    packed-switch p0, :pswitch_data_0

    .line 45
    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->MRECT:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->FULL_BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->LEADERBOARD:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 42
    :pswitch_4
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->SKYSCRAPER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 43
    :pswitch_5
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->INTERSTITIAL:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public define(ILjava/lang/String;Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)V
    .locals 1
    .param p1, "_index"    # I
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_type"    # Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .prologue
    .line 303
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adDefinitions:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adDefinitions:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 305
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object p3, v0, p1

    .line 307
    :cond_0
    return-void
.end method

.method public disable(I)V
    .locals 3
    .param p1, "_index"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->setView(I)V

    .line 246
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_view:Landroid/view/View;

    .line 249
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;

    invoke-direct {v2, p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase$3;-><init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enable(III)V
    .locals 10
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_index"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v0, p3

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->INTERSTITIAL:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0, p3}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->enable_interstitial(I)V

    .line 199
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p3}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->setView(I)V

    .line 160
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_view:Landroid/view/View;

    .line 161
    .local v3, "view":Landroid/view/View;
    move-object v8, p0

    .line 162
    .local v8, "iad":Lcom/genouka/fumo/mvz2/IAdvertising;
    move v6, p1

    .line 163
    .local v6, "x":I
    move v7, p2

    .line 164
    .local v7, "y":I
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v0, p3

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdWidth(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v4

    .line 165
    .local v4, "w":I
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v0, p3

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdHeight(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v5

    .line 166
    .local v5, "h":I
    move v2, p3

    .line 170
    .local v2, "index":I
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    .line 172
    :cond_1
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error enabling ad with index "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_2
    sget-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v0, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/genouka/fumo/mvz2/AdvertisingBase$1;-><init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;ILandroid/view/View;IIIILcom/genouka/fumo/mvz2/IAdvertising;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public enable_interstitial(I)V
    .locals 2
    .param p1, "_index"    # I

    .prologue
    .line 135
    const-string v0, "yoyo"

    const-string v1, "Interstitials not supported for this provider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public engagement_active()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public engagement_available()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public engagement_launch()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public event_preload(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method

.method public getAdDisplayHeight(I)I
    .locals 5
    .param p1, "_index"    # I

    .prologue
    .line 118
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 119
    :cond_0
    const/4 v4, 0x0

    .line 129
    :goto_0
    return v4

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v4, p1

    .line 122
    .local v0, "_type":Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdHeight(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v3

    .line 123
    .local v3, "h":I
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 124
    .local v1, "d":Landroid/view/Display;
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->getGuiHeight()I

    move-result v2

    .line 129
    .local v2, "dh":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    goto :goto_0
.end method

.method public getAdDisplayWidth(I)I
    .locals 5
    .param p1, "_index"    # I

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 96
    :cond_0
    const/4 v4, 0x0

    .line 105
    :goto_0
    return v4

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v4, p1

    .line 99
    .local v0, "_type":Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdWidth(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v3

    .line 100
    .local v3, "w":I
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 102
    .local v1, "d":Landroid/view/Display;
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->getGuiWidth()I

    move-result v2

    .line 105
    .local v2, "dw":I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    goto :goto_0
.end method

.method public getAdHeight(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I
    .locals 4
    .param p1, "_type"    # Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v0, "density":F
    const/4 v1, 0x0

    .line 80
    .local v1, "ret":F
    if-eqz p1, :cond_0

    .line 82
    sget-object v2, Lcom/genouka/fumo/mvz2/AdvertisingBase$4;->$SwitchMap$com$genouka$fumo$mvz2$IAdvertising$AdTypes:[I

    invoke-virtual {p1}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    mul-float v2, v1, v0

    float-to-int v2, v2

    return v2

    .line 83
    :pswitch_0
    const/high16 v1, 0x42540000    # 53.0f

    goto :goto_0

    .line 84
    :pswitch_1
    const/high16 v1, 0x437a0000    # 250.0f

    goto :goto_0

    .line 85
    :pswitch_2
    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_0

    .line 86
    :pswitch_3
    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    .line 87
    :pswitch_4
    const/high16 v1, 0x44160000    # 600.0f

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAdWidth(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I
    .locals 4
    .param p1, "_type"    # Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .local v0, "density":F
    const/4 v1, 0x0

    .line 63
    .local v1, "ret":F
    if-eqz p1, :cond_0

    .line 65
    sget-object v2, Lcom/genouka/fumo/mvz2/AdvertisingBase$4;->$SwitchMap$com$genouka$fumo$mvz2$IAdvertising$AdTypes:[I

    invoke-virtual {p1}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    mul-float v2, v1, v0

    float-to-int v2, v2

    return v2

    .line 66
    :pswitch_0
    const/high16 v1, 0x43a00000    # 320.0f

    goto :goto_0

    .line 67
    :pswitch_1
    const/high16 v1, 0x43960000    # 300.0f

    goto :goto_0

    .line 68
    :pswitch_2
    const/high16 v1, 0x43ea0000    # 468.0f

    goto :goto_0

    .line 69
    :pswitch_3
    const/high16 v1, 0x44360000    # 728.0f

    goto :goto_0

    .line 70
    :pswitch_4
    const/high16 v1, 0x42f00000    # 120.0f

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public interstitial_available()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public interstitial_display()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public move(III)V
    .locals 8
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_index"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p3}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->setView(I)V

    .line 206
    iget-object v6, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_view:Landroid/view/View;

    .line 207
    .local v6, "view":Landroid/view/View;
    move v4, p1

    .line 208
    .local v4, "x":I
    move v5, p2

    .line 209
    .local v5, "y":I
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v0, p3

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdWidth(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v2

    .line 210
    .local v2, "w":I
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/AdvertisingBase;->m_adTypes:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aget-object v0, v0, p3

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/AdvertisingBase;->getAdHeight(Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)I

    move-result v3

    .line 215
    .local v3, "h":I
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v0, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/genouka/fumo/mvz2/AdvertisingBase$2;-><init>(Lcom/genouka/fumo/mvz2/AdvertisingBase;IIIILandroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public on_iap_cancelled(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public on_iap_failed(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public on_iap_success(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public pc_badge_add(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_width"    # I
    .param p4, "_height"    # I
    .param p5, "_ident"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public pc_badge_hide()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public pc_badge_move(IIII)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_width"    # I
    .param p4, "_height"    # I

    .prologue
    .line 139
    return-void
.end method

.method public pc_badge_update()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public refresh(I)V
    .locals 0
    .param p1, "_index"    # I

    .prologue
    .line 298
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public reward_callback(I)V
    .locals 0
    .param p1, "funcid"    # I

    .prologue
    .line 143
    return-void
.end method

.method public setView(I)V
    .locals 0
    .param p1, "_index"    # I

    .prologue
    .line 294
    return-void
.end method

.method public setup(Ljava/lang/String;)V
    .locals 0
    .param p1, "_userid"    # Ljava/lang/String;

    .prologue
    .line 266
    return-void
.end method
