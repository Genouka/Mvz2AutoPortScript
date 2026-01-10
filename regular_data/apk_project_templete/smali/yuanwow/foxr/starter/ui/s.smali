.class public Lyuanwow/foxr/starter/ui/s;
.super Ljava/lang/Object;
.source "s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000000;,
        Lyuanwow/foxr/starter/ui/s$100000001;,
        Lyuanwow/foxr/starter/ui/s$100000002;,
        Lyuanwow/foxr/starter/ui/s$100000003;,
        Lyuanwow/foxr/starter/ui/s$100000006;,
        Lyuanwow/foxr/starter/ui/s$100000008;,
        Lyuanwow/foxr/starter/ui/s$100000009;,
        Lyuanwow/foxr/starter/ui/s$100000014;,
        Lyuanwow/foxr/starter/ui/s$100000016;,
        Lyuanwow/foxr/starter/ui/s$100000017;,
        Lyuanwow/foxr/starter/ui/s$100000021;,
        Lyuanwow/foxr/starter/ui/s$100000022;,
        Lyuanwow/foxr/starter/ui/s$100000023;,
        Lyuanwow/foxr/starter/ui/s$100000024;,
        Lyuanwow/foxr/starter/ui/s$100000027;,
        Lyuanwow/foxr/starter/ui/s$100000028;,
        Lyuanwow/foxr/starter/ui/s$100000029;,
        Lyuanwow/foxr/starter/ui/s$100000031;
    }
.end annotation


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat;

.field private static ef:Landroid/app/AlertDialog;

.field private static m__SavePathFile:Ljava/io/File;

.field public static mainInputBox:Landroid/widget/EditText;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd-HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyuanwow/foxr/starter/ui/s;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetAppDetailSettingIntent(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    nop

    .line 98
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000003(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lyuanwow/foxr/starter/ui/s;->GetAppDetailSettingIntent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000014(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lyuanwow/foxr/starter/ui/s;->showMenuAlphaDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000015(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lyuanwow/foxr/starter/ui/s;->openfilemanager(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000016(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyuanwow/foxr/starter/ui/s;->patchConfiggenouka(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000039(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lyuanwow/foxr/starter/ui/s;->getMenuButtonView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static charMenu(Landroid/app/Activity;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZZZ)V"
        }
    .end annotation

    .line 687
    if-nez p0, :cond_0

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 690
    :cond_1
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->ef:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    return-void

    .line 694
    :cond_2
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 695
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 696
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 700
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 701
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 702
    const-string v4, "#533d5b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 705
    const/16 v4, 0x80

    new-array v5, v4, [Ljava/lang/String;

    .line 706
    const/4 v6, 0x0

    :goto_0
    if-lt v6, v4, :cond_4

    .line 709
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 710
    new-instance v6, Lyuanwow/foxr/starter/ui/s$100000022;

    const v7, 0x1090003

    invoke-direct {v6, p0, v7, v5}, Lyuanwow/foxr/starter/ui/s$100000022;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 721
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 722
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    int-to-float v1, v1

    invoke-direct {v5, v6, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 730
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 734
    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000023;

    invoke-direct {v1, p2, p1, p3}, Lyuanwow/foxr/starter/ui/s$100000023;-><init>(ZZZ)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 753
    if-nez p0, :cond_3

    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 754
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 756
    :try_start_0
    invoke-static {v0, p0}, Lyuanwow/foxr/starter/ui/SlideAnimation;->showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 759
    const/4 p1, 0x3

    :try_start_1
    invoke-virtual {v0, p0, p1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    return-void

    .line 707
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    int-to-char v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 706
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 1225
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "--Method--"

    if-nez v1, :cond_0

    .line 1226
    :try_start_1
    const-string p0, "copyFile:  oldFile not exist."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v0

    .line 1228
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1229
    const-string p0, "copyFile:  oldFile not file."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return v0

    .line 1231
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1232
    const-string p0, "copyFile:  oldFile cannot read."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return v0

    .line 1238
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1239
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1240
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 1241
    nop

    .line 1242
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    .line 1245
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1246
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1247
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1248
    const/4 p0, 0x1

    return p0

    .line 1243
    :cond_3
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1248
    :catch_0
    move-exception p0

    .line 1250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1251
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1192
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "--Method--"

    if-nez v2, :cond_0

    .line 1194
    :try_start_1
    const-string p0, "copyFile:  oldFile not exist."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return v0

    .line 1196
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1197
    const-string p0, "copyFile:  oldFile not file."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v0

    .line 1199
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1200
    const-string p0, "copyFile:  oldFile cannot read."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return v0

    .line 1206
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1207
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1208
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 1209
    nop

    .line 1210
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    .line 1213
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1214
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1215
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1216
    const/4 p0, 0x1

    return p0

    .line 1211
    :cond_3
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1216
    :catch_0
    move-exception p0

    .line 1218
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1219
    return v0
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1265
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "--Method--"

    if-nez v2, :cond_0

    .line 1267
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    const-string p0, "copyFolder: cannot create directory."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return v0

    .line 1272
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1274
    nop

    .line 1275
    const/4 v2, 0x0

    .line 1303
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 1308
    const/4 p0, 0x1

    return p0

    .line 1275
    :cond_1
    aget-object v4, v1, v2

    .line 1276
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1277
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1279
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1282
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "/"

    if-eqz v6, :cond_3

    .line 1283
    :try_start_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lyuanwow/foxr/starter/ui/s;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 1284
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1285
    const-string p0, "copyFolder:  oldFile not exist."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return v0

    .line 1287
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1288
    const-string p0, "copyFolder:  oldFile not file."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return v0

    .line 1290
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1291
    const-string p0, "copyFolder:  oldFile cannot read."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return v0

    .line 1294
    :cond_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1295
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1296
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1297
    nop

    .line 1298
    :goto_2
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 1301
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1302
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 1303
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1299
    :cond_7
    invoke-virtual {v6, v5, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1308
    :catch_0
    move-exception p0

    .line 1310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    return v0
.end method

.method public static debugMenu(Landroid/app/Activity;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 768
    if-nez p0, :cond_0

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    .line 771
    :goto_0
    sget-object v1, Lyuanwow/foxr/starter/ui/s;->ef:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    return-void

    .line 775
    :cond_2
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 776
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 777
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 778
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 781
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 783
    const-string v5, "#4b4e2a"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 788
    const-string v6, "\u3016\u8f93\u5165\u3017\u53d1\u9001\u5355\u4e2a\u5b57\u7b26"

    const-string v7, "\u3016\u8f93\u5165\u3017\u53d1\u9001\u5de6Shift+\u5355\u4e2a\u5b57\u7b26"

    const-string v8, "\u3016\u8f93\u5165\u3017\u4fdd\u6301\u6309\u4e0b\u5355\u4e2a\u5b57\u7b26"

    const-string v9, "\u3016\u8f93\u5165\u3017\u91ca\u653e\u5355\u4e2a\u5b57\u7b26"

    const-string v10, "\u3016\u5e27\u7387\u3017\u8c03\u5feb5\u5e27"

    const-string v11, "\u3016\u5e27\u7387\u3017\u8c03\u61625\u5e27"

    const-string v12, "\u3016\u5e27\u7387\u3017\u624b\u52a8\u8c03\u6574\u5e27\u7387"

    const-string v13, "\u3016\u5e27\u7387\u3017\u5c06\u5e27\u7387\u8bbe\u7f6e\u4e3a30\u5e27"

    const-string v14, "\u3016\u5e27\u7387\u3017\u5207\u6362\u662f\u5426\u5168\u5c40\u9501\u5b9a\u5e27\u7387"

    const-string v15, "\u3016\u5e27\u7387\u3017\u5220\u9664Game_FPS\u5e27\u7387\u914d\u7f6e\u6587\u4ef6(\u91cd\u542f\u6e38\u620f\u751f\u6548)"

    const-string v16, "\u3016\u8c03\u8bd5\u3017\u5207\u6362global.debug(\u5373\u65f6\u751f\u6548)"

    const-string v17, "\u3016\u8f93\u5165\u3017\u6a21\u62df\u53d1\u9001F1\u952e"

    const-string v18, "\u3016\u5b58\u6863\u3017\u540c\u6b65\u5230\u5185\u90e8\u76ee\u5f55(\u614e\u7528)"

    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v5

    .line 804
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 805
    new-instance v7, Lyuanwow/foxr/starter/ui/s$100000024;

    const v8, 0x1090003

    invoke-direct {v7, v0, v8, v5}, Lyuanwow/foxr/starter/ui/s$100000024;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 823
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 824
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    int-to-float v2, v2

    invoke-direct {v5, v7, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 832
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 833
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 836
    new-instance v2, Lyuanwow/foxr/starter/ui/s$100000027;

    invoke-direct {v2, v0}, Lyuanwow/foxr/starter/ui/s$100000027;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1060
    if-nez v0, :cond_3

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 1061
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 1063
    :try_start_0
    invoke-static {v1, v2}, Lyuanwow/foxr/starter/ui/SlideAnimation;->showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1066
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method public static deleteDirWithFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 517
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 519
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 523
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 525
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 519
    :cond_1
    aget-object v2, v0, v1

    .line 520
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    invoke-static {v2}, Lyuanwow/foxr/starter/ui/s;->deleteDirWithFile(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    :cond_4
    :goto_2
    return-void
.end method

.method public static disableMenu(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 604
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u662f\u5426\u7981\u7528\u4fee\u6539\u5668\u83dc\u5355\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u5426"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000016;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000016;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u662f"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static filetreeList(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    .line 1457
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 1460
    return-object v0

    .line 1452
    :cond_0
    aget-object v2, p0, v1

    .line 1453
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1454
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    invoke-static {v2}, Lyuanwow/foxr/starter/ui/s;->filetreeList(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static genoukaClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1317
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1318
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1319
    const-string v0, "F1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x101

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1320
    const/16 p0, 0x83

    invoke-static {v3, p0, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1321
    invoke-static {v1, p0, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    goto :goto_0

    .line 1322
    :cond_0
    const-string v0, "\u2639"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    const/4 p0, 0x4

    invoke-static {v3, p0, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1324
    invoke-static {v1, p0, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v0, v4, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1327
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {v1, v0, p0, v2}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static getMenuButtonView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .line 1489
    const-string v0, "GenOUKA"

    const-string v1, "syncgenouka has been called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 1491
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1492
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1493
    return-object p0
.end method

.method public static getSavePath()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavePathFile()Ljava/io/File;
    .locals 3

    .line 75
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->m__SavePathFile:Ljava/io/File;

    if-nez v0, :cond_3

    .line 76
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getLazyConfig()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sput-object v2, Lyuanwow/foxr/starter/ui/s;->m__SavePathFile:Ljava/io/File;

    goto :goto_1

    .line 84
    :cond_1
    sget-object v0, Lcom/refix/genouka/deltarune/GlobalApplication;->application:Lcom/refix/genouka/deltarune/GlobalApplication;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/refix/genouka/deltarune/GlobalApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lyuanwow/foxr/starter/ui/s;->m__SavePathFile:Ljava/io/File;

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    sget-object v0, Lcom/refix/genouka/deltarune/GlobalApplication;->application:Lcom/refix/genouka/deltarune/GlobalApplication;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/refix/genouka/deltarune/GlobalApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lyuanwow/foxr/starter/ui/s;->m__SavePathFile:Ljava/io/File;

    .line 88
    :cond_3
    :goto_1
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->m__SavePathFile:Ljava/io/File;

    return-object v0
.end method

.method private static getSoFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1514
    const-string v0, "libs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1515
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ginputboxClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1333
    check-cast p0, Landroid/widget/EditText;

    sput-object p0, Lyuanwow/foxr/starter/ui/s;->mainInputBox:Landroid/widget/EditText;

    return-void
.end method

.method public static i(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000000;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000000;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1542
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1543
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    if-eqz p0, :cond_0

    .line 1545
    const/4 p0, 0x1

    return p0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception p0

    .line 1548
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1550
    :goto_0
    return v0
.end method

.method public static ki(Landroid/app/Activity;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)V"
        }
    .end annotation

    .line 136
    if-nez p0, :cond_0

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 139
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, ".genouka_flag_safemode"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    return-void

    .line 144
    :cond_2
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->ef:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    return-void

    .line 154
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, ".genoukareadmerelay2025-8-1"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 159
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v3, ".eula=true"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    const-string p1, "\u5df2\u901a\u8fc7\u521b\u5efa\u6587\u4ef6\u65b9\u5f0f\u7406\u89e3\u5e76\u540c\u610f\u76f8\u5e94\u7ea6\u5b9a\uff0c\u9605\u8bfb\u672c\u6b21\u540e\u5c06\u4e0d\u518d\u5f39\u51fa\u63d0\u9192\u9875\u9762"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 165
    :cond_4
    new-instance p1, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "com.refix.genouka.deltarune.MainActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void

    .line 165
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v3, ".genouka_flag_startupmenu"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    .line 174
    return-void

    .line 180
    :cond_6
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 182
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 186
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    const-string v3, "#dd884c3a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 191
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    const-string v4, "\u6e38\u620f\u9009\u9879(\u8865\u4e01\u7248\u672cV4.4.1)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    const/16 v5, 0x12

    int-to-float v5, v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    const/16 v5, 0x20

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-array v3, v5, [Ljava/lang/String;

    const-string v7, "\u3016\u5b58\u6863\u3017\u5907\u4efd\u5b58\u6863&\u914d\u7f6e"

    aput-object v7, v3, v2

    const-string v7, "\u3016\u5b58\u6863\u3017\u5bfc\u5165\u5b58\u6863&\u914d\u7f6e"

    aput-object v7, v3, v0

    const-string v7, "\u3016\u5b58\u6863\u3017\u53ef\u89c6\u5316\u5b58\u6863\u4fee\u6539\u5668"

    aput-object v7, v3, v6

    const-string v6, "\u3016\u5b58\u6863\u3017\u8bbe\u5b9a\u5b58\u6863\u50a8\u5b58\u8def\u5f84"

    const/4 v7, 0x3

    aput-object v6, v3, v7

    const-string v6, "\u3016\u5b58\u6863\u3017\u52a0\u8f7d\u5b58\u6863(\u5267\u900f\u8b66\u544a)"

    const/4 v9, 0x4

    aput-object v6, v3, v9

    const-string v6, "\u3016\u5b58\u6863\u3017\u6253\u5f00\u6587\u4ef6\u7ba1\u7406\u5668"

    const/4 v9, 0x5

    aput-object v6, v3, v9

    const-string v6, "\u3016\u952e\u76d8\u3017\u5207\u6362\u6e38\u620f\u865a\u62df\u952e\u76d8\u7c7b\u578b"

    const/4 v9, 0x6

    aput-object v6, v3, v9

    const-string v6, "\u3016\u8c03\u8bd5\u3017\u6253\u5f00\u8c03\u8bd5\u5b50\u83dc\u5355"

    const/4 v9, 0x7

    aput-object v6, v3, v9

    const-string v6, "\u3016\u6309\u952e\u3017\u65af\u6f58\u987f\u56de\u8840/F1"

    const/16 v9, 0x8

    aput-object v6, v3, v9

    const-string v6, "\u3016\u6743\u9650\u3017\u7533\u8bf7\u9ea6\u514b\u98ce\u6743\u9650"

    const/16 v9, 0x9

    aput-object v6, v3, v9

    const-string v6, "\u3016\u8865\u4e01\u3017\u6309\u952e\u5931\u6548\u70b9\u8fd9\u4e2a\u4fee\u590d"

    const/16 v9, 0xa

    aput-object v6, v3, v9

    const-string v6, "\u3016\u8865\u4e01\u3017\u52a0\u8f7d\u5916\u7f6e\u8f6f\u952e\u76d8\u9884\u8bbe\u6309\u952e\u914d\u7f6e"

    const/16 v9, 0xb

    aput-object v6, v3, v9

    const-string v6, "\u987b\u77e5/\u514d\u8d23\u58f0\u660e/\u4f7f\u7528\u8bf4\u660e README"

    const/16 v9, 0xc

    aput-object v6, v3, v9

    const-string v6, "\u8865\u4e01\u4f5c\u8005\uff1aBilibili@\u79cb\u51a5\u6563\u96e8_GenOuka"

    const/16 v9, 0xd

    aput-object v6, v3, v9

    const-string v6, "\u7981\u7528\u4fee\u6539\u5668\u83dc\u5355(\u614e\u7528)"

    const/16 v9, 0xe

    aput-object v6, v3, v9

    const-string v6, "\u4fee\u6539\u83dc\u5355\u56fe\u6807\u900f\u660e\u5ea6"

    const/16 v9, 0xf

    aput-object v6, v3, v9

    const-string v6, "\u8df3\u8f6c\u5230\u5e94\u7528\u8bbe\u7f6e\u9875\u9762"

    const/16 v9, 0x10

    aput-object v6, v3, v9

    .line 231
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v9, Lyuanwow/foxr/starter/ui/s$100000002;

    const v10, 0x1090003

    invoke-direct {v9, p0, v10, v3}, Lyuanwow/foxr/starter/ui/s$100000002;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v0

    invoke-direct {v3, v4, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 267
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 268
    const-string v9, "\u53d6\u6d88"

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 270
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 271
    new-instance v9, Lyuanwow/foxr/starter/ui/s$100000003;

    invoke-direct {v9, p1}, Lyuanwow/foxr/starter/ui/s$100000003;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v10, "\u7cfb\u7edf\u8f6f\u952e\u76d8"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 282
    new-instance v10, Lyuanwow/foxr/starter/ui/s$100000006;

    invoke-direct {v10, p1, p0}, Lyuanwow/foxr/starter/ui/s$100000006;-><init>(Landroid/widget/PopupWindow;Landroid/app/Activity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 323
    invoke-virtual {p1, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 324
    invoke-virtual {p1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 327
    new-instance v0, Lyuanwow/foxr/starter/ui/s$100000008;

    invoke-direct {v0, p0}, Lyuanwow/foxr/starter/ui/s$100000008;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 460
    if-nez p0, :cond_7

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    goto :goto_0

    :cond_7
    move-object v0, p0

    .line 462
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :try_start_3
    invoke-static {p1, v0}, Lyuanwow/foxr/starter/ui/SlideAnimation;->showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 467
    :try_start_4
    invoke-virtual {p1, v0, v7, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_1
    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 473
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 474
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "crash"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "crash_b_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    :try_start_5
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n**This is a crash_b file,you can ask Bilibili:@GenOuka for detail.**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v1, p0}, Lcom/refix/genouka/deltarune/GlobalApplication;->write(Ljava/io/File;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    nop

    :goto_3
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1531
    :try_start_0
    invoke-static {}, Lcom/getkeepsafe/relinker/ReLinker;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    sget-object v1, Lcom/refix/genouka/deltarune/GlobalApplication;->application:Lcom/refix/genouka/deltarune/GlobalApplication;

    invoke-virtual {v0, v1, p0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1534
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1536
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static loadPreCh3Save(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u3010\u3011\u662f\u5426\u786e\u8ba4\u8981\u6253\u5165\u8865\u4e01\uff1f\u8be5\u8865\u4e01\u7684\u5185\u5bb9\u5c06\u8986\u76d6\u4f60\u73b0\u6709\u914d\u7f6e\u3002\u5982\u679c\u4f60\u6709\u5b58\u6863\u548c\u914d\u7f6e\u8bf7\u5148\u5bfc\u51fa\u4ee5\u5907\u4efd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u5426"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000021;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000021;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u662f"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 682
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static loadsoftimePatch(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u662f\u5426\u786e\u8ba4\u8981\u6253\u5165\u8865\u4e01\uff1f\u4f7f\u7528\u5916\u7f6e\u952e\u76d8\u3001\u624b\u67c4\u3016\u4e0d\u9700\u8981\u3017\u6253\u5165\u672c\u8865\u4e01\u3001\u53ea\u6709\u4f7f\u7528\u5916\u7f6e\u8f6f\u952e\u76d8\uff08\u8f93\u5165\u6cd5\uff09\u9700\u8981\u8fd9\u4e2a\u914d\u7f6e\uff0c\u8bf7\u4e0d\u8981\u4e71\u70b9\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u9020\u6210\u4f60\u65e0\u6cd5\u6b63\u5e38\u5524\u51fa\u83dc\u5355\u7684\u95ee\u9898\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u5426"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000014;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000014;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u662f"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 600
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static menu1Click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1433
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".genouka_disablemenu"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    return-void

    .line 1437
    :cond_0
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p0}, Lyuanwow/foxr/starter/ui/s;->pushbuttonmenu(Landroid/app/Activity;)V

    return-void
.end method

.method public static menu2Click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1441
    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    invoke-virtual {p0}, Lorg/hndteam/deltarune/RunnerActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1443
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1444
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1445
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1447
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private static openfilemanager(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 500
    nop

    .line 501
    nop

    .line 502
    const-string v0, "/storage/emulated/0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "%2f"

    const-string v3, "/"

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 509
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "content://com.android.externalstorage.documents/document/primary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static patchConfiggenouka(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 530
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 533
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 534
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "patch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 535
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 536
    nop

    .line 537
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 540
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 542
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 543
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 538
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception p1

    .line 545
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\u8865\u4e01\u6253\u5165\u5931\u8d25\uff0c\u8bf7\u8054\u7cfb\u5f00\u53d1\u8005\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public static pushbuttonmenu(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 121
    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000001;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000001;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static restartgamedialog(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u672c\u529f\u80fd\u5df2\u7ecf\u5e94\u7528\uff0c\u4f46\u9700\u8981\u91cd\u542f\u6e38\u620f\u624d\u4f1a\u751f\u6548\uff0c\u662f\u5426\u7acb\u5373\u91cd\u542f\u6e38\u620f\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u7a0d\u540e\u91cd\u542f\u6e38\u620f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000017;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/s$100000017;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u7acb\u5373\u91cd\u542f\u6e38\u620f"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 639
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static saveeditMenu(Landroid/app/Activity;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1076
    if-nez p0, :cond_0

    sget-object v0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    if-nez v0, :cond_0

    return-void

    .line 1077
    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 1079
    :cond_1
    sget-object v0, Lyuanwow/foxr/starter/ui/s;->ef:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    return-void

    .line 1083
    :cond_2
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 1084
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1085
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1089
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1090
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1091
    const-string v4, "#533d5b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1094
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lyuanwow/foxr/starter/ui/s;->filetreeList(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1097
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1100
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    return-void

    .line 1102
    :cond_4
    new-instance v5, Lyuanwow/foxr/starter/ui/s$100000028;

    invoke-direct {v5}, Lyuanwow/foxr/starter/ui/s$100000028;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    .line 1112
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_6

    .line 1122
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1123
    new-instance v7, Lyuanwow/foxr/starter/ui/s$100000029;

    const v8, 0x1090003

    invoke-direct {v7, p0, v8, v6, v6}, Lyuanwow/foxr/starter/ui/s$100000029;-><init>(Landroid/content/Context;I[Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1139
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    int-to-float v1, v1

    invoke-direct {v6, v7, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1147
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1148
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1151
    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000031;

    invoke-direct {v1, p0, v4}, Lyuanwow/foxr/starter/ui/s$100000031;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1170
    if-nez p0, :cond_5

    sget-object p0, Lorg/hndteam/deltarune/RunnerActivity;->CurrentActivity:Lorg/hndteam/deltarune/RunnerActivity;

    .line 1171
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1173
    :try_start_0
    invoke-static {v0, p0}, Lyuanwow/foxr/starter/ui/SlideAnimation;->showPopupWithAnimation(Landroid/widget/PopupWindow;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1176
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {v0, p0, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    return-void

    .line 1113
    :cond_6
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1114
    const/4 v8, 0x6

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1115
    nop

    .line 1116
    const-string v9, "_0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "\u69fd\u4f4d1)"

    goto :goto_3

    .line 1117
    :cond_7
    const-string v9, "_1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "\u69fd\u4f4d2)"

    goto :goto_3

    .line 1118
    :cond_8
    const-string v9, "_2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "\u69fd\u4f4d3)"

    goto :goto_3

    .line 1119
    :cond_9
    const-string v9, "\u5373\u65f6\u5b58\u6863(\u4e0d\u5efa\u8bae\u4fee\u6539))"

    .line 1120
    :goto_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v13, "(\u7b2c"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\u7ae0 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 1112
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1095
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 1096
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "filech"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1097
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static sendbtnClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1339
    nop

    .line 1340
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1341
    if-nez v0, :cond_0

    .line 1342
    const-string p0, "Patch"

    const-string v0, "\u627e\u4e0d\u5230\u6587\u672c\u6846"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void

    .line 1347
    :cond_0
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    const-string v1, ":pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1355
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "func::pause"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1356
    invoke-static {v2}, Lcom/yoyogames/runner/RunnerJNILib;->Pause(I)V

    .line 1357
    return-void

    .line 1359
    :cond_1
    const-string v1, ":resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1360
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "func::resume"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1361
    invoke-static {v2}, Lcom/yoyogames/runner/RunnerJNILib;->Resume(I)V

    .line 1362
    return-void

    .line 1364
    :cond_2
    const-string v1, ":genouka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1365
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "GenOuka: Ciallo!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1367
    return-void

    .line 1369
    :cond_3
    const-string v1, ":crazy:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1370
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "func::crazy!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1371
    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1372
    const/4 v4, 0x0

    :goto_0
    const/16 p0, 0x80

    if-lt v4, p0, :cond_4

    .line 1378
    return-void

    .line 1373
    :cond_4
    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x400

    if-lt p0, v0, :cond_5

    .line 1372
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1374
    :cond_5
    invoke-static {v4, p0, v1}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 1373
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1380
    :cond_6
    const-string v1, ":loadlib:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x9

    if-eqz v1, :cond_7

    .line 1381
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "func::loadlib"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1383
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1385
    const-string v0, "PatchLoadLib"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :goto_2
    return-void

    .line 1390
    :cond_7
    const-string v1, ":char:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x101

    if-eqz v1, :cond_8

    .line 1391
    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1392
    invoke-static {v3, p0, p0, v5}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1393
    invoke-static {v2, p0, p0, v5}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1394
    return-void

    .line 1396
    :cond_8
    const-string v1, ":keydown:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1397
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1398
    invoke-static {v3, p0, p0, v5}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1400
    return-void

    .line 1402
    :cond_9
    const-string v1, ":keyup:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1403
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1405
    invoke-static {v2, p0, p0, v5}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1406
    return-void

    .line 1408
    :cond_a
    const-string v1, ":debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1409
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->dsMapCreate()I

    move-result v1

    .line 1410
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v1, :cond_b

    .line 1415
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "func::debug"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1419
    return-void

    .line 1411
    :cond_b
    const-string v4, "debug"

    invoke-static {v0, v4, v2}, Lcom/yoyogames/runner/RunnerJNILib;->dsMapAddInt(ILjava/lang/String;I)V

    .line 1412
    const-string v4, "global.debug"

    invoke-static {v0, v4, v2}, Lcom/yoyogames/runner/RunnerJNILib;->dsMapAddInt(ILjava/lang/String;I)V

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1422
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [I

    .line 1425
    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v3, v1, :cond_d

    .line 1428
    invoke-static {p0}, Lcom/yoyogames/runner/RunnerJNILib;->OnKeyboardStringSet([I)V

    return-void

    .line 1426
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, p0, v3

    .line 1425
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private static showMenuAlphaDialog(Landroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 484
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getConfig()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lyuanwow/foxr/starter/ui/ConfigSe;->getRealMenuAlpha()F

    move-result v3

    .line 487
    const-string v2, "\u8bbe\u7f6e\u83dc\u5355\u56fe\u6807\u7684\u900f\u660e\u5ea6(\u6b63\u5e38\u5e94\u4e3a0.8)"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x14

    new-instance v7, Lyuanwow/foxr/starter/ui/s$100000009;

    invoke-direct {v7, v0, p0}, Lyuanwow/foxr/starter/ui/s$100000009;-><init>(Lyuanwow/foxr/starter/ui/ConfigSe;Landroid/app/Activity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lyuanwow/foxr/starter/ui/SeekbarDialog;->showFloat(Landroid/content/Context;Ljava/lang/String;FFFILyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;)V

    return-void
.end method

.method public static syncAndBackupFiles(Landroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1519
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentTime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\u5b58\u6863\u5907\u4efd_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lyuanwow/foxr/starter/ui/ZipShareUtil;->ZipFolder(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 1524
    const-string v0, "\u5df2\u5907\u4efd\u5230Android/media\u4e0b"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1526
    :cond_0
    const-string v0, "\u5907\u4efd\u5931\u8d25"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static syncgenouka(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1481
    if-eqz p0, :cond_0

    .line 1482
    invoke-static {p0}, Lyuanwow/foxr/starter/ui/s;->getMenuButtonView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 1483
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getConfig()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object v1

    invoke-virtual {v1}, Lyuanwow/foxr/starter/ui/ConfigSe;->getRealMenuAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1484
    invoke-static {p0}, Lyuanwow/foxr/starter/ui/genoukae1;->watchDynamicLoadGame(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static syncgenouka_old(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/\u5f53\u524d\u5b58\u6863"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lyuanwow/foxr/starter/ui/FileSynchronizer;->synchronizeFolders(Landroid/app/Activity;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1473
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1474
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\u540c\u6b65\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static unloadSo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1499
    :try_start_0
    const-string v0, "java.lang.ClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "loadedLibraryNames"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1501
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1502
    invoke-static {p0, p1}, Lyuanwow/foxr/starter/ui/s;->getSoFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1503
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 1504
    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 1505
    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    nop

    .line 1511
    return v1

    .line 1505
    :catch_0
    move-exception p0

    goto :goto_0

    .line 1499
    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1508
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1509
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public openFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1554
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1555
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "cn.tobyfox.hnd.mubai.cgoat.genouka.patch.fileprovider"

    invoke-static {p1, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1558
    invoke-static {p2}, Lyuanwow/foxr/starter/ui/MapTable;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public shareFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1563
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1564
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1565
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "cn.tobyfox.hnd.mubai.cgoat.genouka.patch.fileprovider"

    invoke-static {p1, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1567
    invoke-static {p2}, Lyuanwow/foxr/starter/ui/MapTable;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
