.class public final Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;
.super Landroid/app/Activity;
.source "GlobalApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/GlobalApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "CrashActivity"
.end annotation


# instance fields
.field private mLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static dp2px(F)I
    .locals 1

    .line 281
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 282
    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private restart()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->startActivity(Landroid/content/Intent;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->finish()V

    .line 276
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->restart()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const p1, 0x1030128

    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->setTheme(I)V

    .line 246
    const-string p1, "\u5e94\u7528\u5d29\u6e83 Crash"

    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->mLog:Ljava/lang/String;

    .line 250
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 253
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    const/16 v3, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->dp2px(F)I

    move-result v3

    .line 257
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    iget-object v3, p0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->mLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 260
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 261
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 264
    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 287
    const v0, 0x1020021

    const v1, 0x1040001

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 296
    :pswitch_0
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 297
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;->mLog:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 298
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1020021
        :pswitch_0
    .end packed-switch
.end method
