.class Lyuanwow/foxr/starter/ui/s$100000008;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000008$100000007;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 330
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 331
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 332
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 333
    const-string p1, "genouka"

    const-string p4, "com.refix.genouka.deltarune.MainActivity"

    const/4 p5, 0x1

    const/16 v0, 0x101

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    .line 456
    :pswitch_0
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->access$1000003(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 453
    :pswitch_1
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->access$1000014(Landroid/app/Activity;)V

    .line 454
    goto/16 :goto_4

    .line 450
    :pswitch_2
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->disableMenu(Landroid/app/Activity;)V

    .line 451
    goto/16 :goto_4

    .line 444
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    const-string p2, "https://m.bilibili.com/space/3493116076100126"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 447
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    goto/16 :goto_4

    .line 438
    :pswitch_4
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 439
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    :try_start_0
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 439
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 442
    :cond_0
    :goto_0
    goto/16 :goto_4

    .line 435
    :pswitch_5
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->loadsoftimePatch(Landroid/app/Activity;)V

    .line 436
    goto/16 :goto_4

    .line 418
    :pswitch_6
    const-string v0, "config_0.ini"

    const-string v1, "config_1.ini"

    const-string v2, "config_2.ini"

    const-string v3, "config_5.ini"

    const-string v4, "keyconfig_0.ini"

    const-string v5, "touchconfig.ini"

    const-string v6, "true_config.ini"

    const-string v7, "virtualcontrolconfig.ini"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p3

    const/4 p1, 0x0

    .line 429
    :goto_1
    const/16 p4, 0x8

    if-lt p1, p4, :cond_1

    .line 431
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    const-string p3, "\u4fee\u590d\u6210\u529f\uff0c\u5207\u6362\u7ae0\u8282\u6216\u91cd\u542f\u6e38\u620f\u751f\u6548"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 432
    goto/16 :goto_4

    .line 418
    :cond_1
    aget-object p4, p3, p1

    .line 428
    new-instance p5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 410
    :pswitch_7
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 411
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    :try_start_1
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    const-string p3, "reqmike"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 411
    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 415
    :cond_2
    :goto_2
    goto/16 :goto_4

    .line 403
    :pswitch_8
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 404
    nop

    .line 405
    const/16 p1, 0x70

    invoke-static {p2, p1, p1, v0}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 406
    invoke-static {p5, p1, p1, v0}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 408
    :cond_3
    goto/16 :goto_4

    .line 400
    :pswitch_9
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->debugMenu(Landroid/app/Activity;)V

    .line 401
    goto/16 :goto_4

    .line 395
    :pswitch_a
    const/4 p1, 0x4

    invoke-static {p2, p1, p1, v0}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 396
    invoke-static {p5, p1, p1, v0}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 398
    goto/16 :goto_4

    .line 391
    :pswitch_b
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyuanwow/foxr/starter/ui/s;->access$1000015(Landroid/app/Activity;Ljava/lang/String;)V

    .line 392
    goto :goto_4

    .line 388
    :pswitch_c
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/ns;->loadpresaves(Landroid/app/Activity;)V

    .line 389
    goto :goto_4

    .line 350
    :pswitch_d
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getConfig()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object p1

    .line 351
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 352
    if-eqz p1, :cond_4

    iget-object p3, p1, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object p2, p1, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    .line 353
    :cond_4
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    new-instance p4, Lyuanwow/foxr/starter/ui/s$100000008$100000007;

    invoke-direct {p4, p0, p1, p3}, Lyuanwow/foxr/starter/ui/s$100000008$100000007;-><init>(Lyuanwow/foxr/starter/ui/s$100000008;Lyuanwow/foxr/starter/ui/ConfigSe;Landroid/app/Activity;)V

    invoke-static {p3, p2, p4}, Lyuanwowandroidx/DirectoryPickerDialog;->show(Landroid/app/Activity;Ljava/lang/String;Lyuanwowandroidx/DirectoryPickerDialog$DirectorySelectedListener;)V

    .line 385
    goto :goto_4

    .line 346
    :pswitch_e
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->saveeditMenu(Landroid/app/Activity;)V

    .line 347
    goto :goto_4

    .line 339
    :pswitch_f
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    if-eqz p2, :cond_5

    .line 340
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    :try_start_2
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-string p3, "importsave"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 340
    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 344
    :cond_5
    :goto_3
    goto :goto_4

    .line 335
    :pswitch_10
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->syncAndBackupFiles(Landroid/app/Activity;)V

    .line 336
    nop

    .line 456
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
