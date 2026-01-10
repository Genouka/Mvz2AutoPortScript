.class public Lcom/genouka/fumo/mvz2/RunnerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RunnerActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static APKExpansionFileReady:Z = false

.field public static AccelX:F = 0.0f

.field public static AccelY:F = 0.0f

.field public static AccelZ:F = 0.0f

.field public static AllowedOrientationMask:I = 0x0

.field public static final BASE64_PUBLIC_KEY:Ljava/lang/String; = ""

.field public static ConfigOrientation:I = 0x0

.field public static CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity; = null

.field public static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field public static final DIALOG_BILLING_PURCHASE_ERROR:I = 0x3

.field public static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field public static DefaultOrientation:I = 0x0

.field public static DisplayHeight:I = 0x0

.field public static DisplayWidth:I = 0x0

.field public static DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask; = null

.field public static DownloadTaskStatus:Lcom/genouka/fumo/mvz2/DownloadStatus; = null

.field public static final EXIT_ID:I = 0x2

.field public static FocusOverride:Z = false

.field public static HasFocus:Z = false

.field public static HasRestarted:Z = false

.field public static InputStringResult:Ljava/lang/String; = null

.field public static LaunchedFromPlayer:Z = false

.field public static LaunchedFromPlayerGameFile:Ljava/lang/String; = null

.field public static Orientation:I = 0x0

.field public static final PREFERENCES_GROUP_ID:I = 0x1

.field public static final SALT:[B

.field public static final SETTINGS_ID:I = 0x1

.field public static SaveFilesDir:Ljava/lang/String;

.field public static ShowQuestionYesNo:I

.field public static UIVisibilityFlags:I

.field public static UseAPKExpansionFile:Z

.field public static ViewHandler:Landroid/os/Handler;

.field public static XPeriaPlay:Z

.field public static YoYoRunner:Z

.field public static mExtension:[Ljava/lang/Object;

.field private static mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

.field private static mSetSystemUiVisibility:Ljava/lang/reflect/Method;

.field public static mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

.field public static m_versionName:Ljava/lang/String;


# instance fields
.field EVENT_OTHER_SYSTEM_EVENT:I

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreImmersiveModeHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUpdateTimerTask:Ljava/lang/Runnable;

.field private m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field public mbAppSuspended:Z

.field private restoreImmersiveModeRunnable:Ljava/lang/Runnable;

.field public vsyncHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->SALT:[B

    .line 89
    const/16 v0, 0x1706

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    .line 101
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->UseAPKExpansionFile:Z

    .line 102
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->APKExpansionFileReady:Z

    .line 107
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasRestarted:Z

    .line 108
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayer:Z

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayerGameFile:Ljava/lang/String;

    .line 122
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->XPeriaPlay:Z

    .line 123
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    .line 124
    sput-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->SaveFilesDir:Ljava/lang/String;

    .line 125
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 126
    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasFocus:Z

    .line 129
    const/16 v0, 0xf

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AllowedOrientationMask:I

    .line 157
    sput-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSetSystemUiVisibility:Ljava/lang/reflect/Method;

    return-void

    .line 87
    :array_0
    .array-data 1
        -0x5t
        0xct
        -0x44t
        0x7t
        -0xct
        0x43t
        0x3t
        0x4t
        0x4t
        0x13t
        0x6t
        0x7t
        0x10t
        0xbt
        0x9t
        0x33t
        0x47t
        0x22t
        0x13t
        0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mbAppSuspended:Z

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    .line 163
    iput-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 172
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerActivity$1;

    invoke-direct {v0, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$1;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mUpdateTimerTask:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerActivity$2;

    invoke-direct {v0, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$2;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1351
    const/16 v0, 0x4b

    iput v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->EVENT_OTHER_SYSTEM_EVENT:I

    .line 1776
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    .line 1778
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerActivity$6;

    invoke-direct {v0, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$6;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static RunnerBilling()Lcom/genouka/fumo/mvz2/IRunnerBilling;
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    return-object v0

    .line 145
    :cond_0
    const-string v0, "yoyo"

    const-string v1, "BILLING: Unsupported or not activated. Check Global Game Settings."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static ach_login()V
    .locals 3

    .prologue
    .line 219
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-eqz v1, :cond_1

    .line 221
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 225
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/ISocial;

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/ISocial;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/ISocial;->Login()V

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_1
    const-string v1, "yoyo"

    const-string v2, "login called when prefs null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    return-void
.end method

.method private checkIsYoYoRunner()Z
    .locals 10

    .prologue
    .line 1496
    const/4 v6, 0x0

    .line 1498
    .local v6, "yoyoRunner":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "game.droid"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1499
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 1500
    const/4 v6, 0x0

    .line 1501
    const-string v7, "yoyo"

    const-string v8, "#######!!!!!!! Checking for runner - found assets "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v6, :cond_0

    .line 1531
    const/4 v3, 0x0

    .line 1533
    .local v3, "bundle":Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1534
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1535
    const-string v7, "IsBuiltAsYoYoRunner"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "IsRunner":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v7, "Yes"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1540
    const-string v7, "yoyo"

    const-string v8, "Found Runner flag in manifest, not using APK expansion"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1562
    .end local v0    # "IsRunner":Ljava/lang/String;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return v6

    .line 1505
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x1

    .line 1506
    :try_start_2
    const-string v7, "yoyo"

    const-string v8, "#######!!!!!!! Checking for runner - not found assets"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1510
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 1511
    .local v4, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    .line 1512
    const-string v7, "yoyo"

    const-string v8, "#######!!!!!!! Checking for runner! failed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "IsRunner":Ljava/lang/String;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_3
    const-string v7, "yoyo"

    const-string v8, "#######!!!!!!! using APK Expansion file"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v6, 0x0

    .line 1547
    const/4 v7, 0x1

    sput-boolean v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->UseAPKExpansionFile:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1550
    .end local v0    # "IsRunner":Ljava/lang/String;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .line 1552
    .local v1, "_e":Ljava/lang/Exception;
    const-string v7, "yoyo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading package meta data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkXPeriaPlay()V
    .locals 4

    .prologue
    .line 1768
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@ Build.Display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BRAND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEVICE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MANUFACTURER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MODEL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PRODUCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony Ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->XPeriaPlay:Z

    .line 1773
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@ XPeriaPlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->XPeriaPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " manufacturer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Sony Ericsson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "R800"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return-void

    .line 1772
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDialog(II)Landroid/app/Dialog;
    .locals 6
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 1906
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1907
    .local v2, "helpUrl":Ljava/lang/String;
    const-string v3, "yoyo"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1911
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1912
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108008a

    .line 1913
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1914
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1915
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    .line 1916
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05000b

    new-instance v5, Lcom/genouka/fumo/mvz2/RunnerActivity$7;

    invoke-direct {v5, p0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity$7;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;Landroid/net/Uri;)V

    .line 1917
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1923
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static isLoggedInGooglePlay()Z
    .locals 6

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, "retval":Z
    const-string v2, "GooglePlayServicesExtension"

    const-string v3, "isSignedIn"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 212
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 214
    :cond_0
    return v1
.end method

.method private ourSetSystemUiVisibility(I)V
    .locals 6
    .param p1, "_vis"    # I

    .prologue
    .line 1890
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSetSystemUiVisibility:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1892
    :try_start_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSetSystemUiVisibility:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    :goto_0
    return-void

    .line 1894
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "_e":Ljava/lang/Exception;
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling setSystemUiVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1899
    .end local v0    # "_e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!Unable to do mSetSystemUiVisibility("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1936
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1937
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1938
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1939
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1941
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method private setupAdvertising()V
    .locals 4

    .prologue
    .line 1627
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1629
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extensions for ad interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1632
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IAdExt;

    if-eqz v1, :cond_0

    .line 1634
    const-string v1, "yoyo"

    const-string v2, "Found advertising extension interface, calling setup"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IAdExt;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IAdExt;->setup()V

    .line 1630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    .end local v0    # "i":I
    :cond_1
    const-string v1, "yoyo"

    const-string v2, "No extensions defined prior to advertising check"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_2
    return-void
.end method

.method private setupExtensions()V
    .locals 9

    .prologue
    .line 1567
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-nez v6, :cond_2

    .line 1574
    const-string v6, "yoyo"

    const-string v7, "Unable to initialise extensions as preferences have not been loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1578
    :cond_2
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v7, "YYNumExtensionClasses"

    invoke-virtual {v6, v7}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1580
    .local v5, "numexts":I
    if-lez v5, :cond_3

    .line 1581
    new-array v6, v5, [Ljava/lang/Object;

    sput-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    .line 1583
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1585
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YYExtensionClass"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genouka/fumo/mvz2/IniBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "ExtClass":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1592
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.genouka.travel.mvz2."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "FullClassName":Ljava/lang/String;
    const-string v6, "yoyo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting to initialise extension class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    :try_start_1
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "Init"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1600
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4

    .line 1602
    const-string v6, "yoyo"

    const-string v7, "Method found, attempting to invoke Init"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    sget-object v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1583
    .end local v1    # "FullClassName":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1606
    .restart local v1    # "FullClassName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1608
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "yoyo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No Init method found on extension class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1613
    .end local v1    # "FullClassName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1615
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "yoyo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown attempting to create extension class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public DoSetupIniFile(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/IniBundle;
    .locals 10
    .param p1, "_apkFilename"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v7, "yoyo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File Path for INI:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v4, 0x0

    .line 420
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 422
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 423
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 425
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 426
    .local v5, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 428
    .local v6, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 429
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 431
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".ini"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 432
    const-string v7, "yoyo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found INI file - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 443
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    .end local v6    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_0
    new-instance v7, Lcom/genouka/fumo/mvz2/IniBundle;

    invoke-direct {v7, v2, v4}, Lcom/genouka/fumo/mvz2/IniBundle;-><init>(Landroid/os/Bundle;Ljava/io/InputStream;)V

    return-object v7

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "_e":Ljava/lang/Exception;
    const-string v7, "yoyo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while setting up Ini"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetGLView(Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;)Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;
    .locals 1
    .param p1, "a"    # Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 169
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    return-object v0
.end method

.method public GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .locals 2

    .prologue
    .line 2070
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-nez v1, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2073
    .local v0, "activityView":Landroid/view/View;
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->Create(Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v1

    iput-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 2076
    .end local v0    # "activityView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    return-object v1
.end method

.method public GetOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1993
    const/4 v1, 0x0

    .line 1994
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1995
    .local v2, "rotation":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_2

    .line 1996
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 2001
    :goto_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2003
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_3

    if-eq v2, v5, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2008
    :cond_1
    move v1, v2

    .line 2014
    :goto_1
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculated orientation - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return v1

    .line 1999
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_2
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v2

    goto :goto_0

    .line 2011
    .restart local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_3
    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v1, v3, 0x3

    goto :goto_1
.end method

.method public RestrictOrientation(ZZZZZ)V
    .locals 6
    .param p1, "_landscape"    # Z
    .param p2, "_portrait"    # Z
    .param p3, "_landscapeFlipped"    # Z
    .param p4, "_portraitFlipped"    # Z
    .param p5, "_fromPrefs"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 659
    if-eqz p5, :cond_0

    .line 661
    const/4 p1, 0x0

    .line 662
    const/4 p2, 0x0

    .line 663
    const/4 p3, 0x0

    .line 664
    const/4 p4, 0x0

    .line 666
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-eqz v2, :cond_0

    .line 668
    const-string v2, "yoyo"

    const-string v4, "RestrictOrientation setting from YYPrefs"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "OrientLandscape"

    invoke-virtual {v2, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move p1, v0

    .line 670
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "OrientPortrait"

    invoke-virtual {v2, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move p2, v0

    .line 671
    :goto_1
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "OrientLandscapeFlipped"

    invoke-virtual {v2, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    move p3, v0

    .line 672
    :goto_2
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "OrientPortraitFlipped"

    invoke-virtual {v2, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    move p4, v0

    .line 677
    :cond_0
    :goto_3
    const-string v2, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RestrictOrientation(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz p1, :cond_5

    move v4, v0

    :goto_4
    if-eqz p2, :cond_6

    const/4 v2, 0x2

    :goto_5
    or-int/2addr v4, v2

    if-eqz p3, :cond_7

    const/4 v2, 0x4

    :goto_6
    or-int/2addr v4, v2

    if-eqz p4, :cond_8

    move v2, v3

    :goto_7
    or-int/2addr v2, v4

    sput v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->AllowedOrientationMask:I

    .line 682
    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    .line 683
    invoke-virtual {p0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    .line 714
    :goto_8
    return-void

    :cond_1
    move p1, v1

    .line 669
    goto :goto_0

    :cond_2
    move p2, v1

    .line 670
    goto :goto_1

    :cond_3
    move p3, v1

    .line 671
    goto :goto_2

    :cond_4
    move p4, v1

    .line 672
    goto :goto_3

    :cond_5
    move v4, v1

    .line 679
    goto :goto_4

    :cond_6
    move v2, v1

    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_6

    :cond_8
    move v2, v1

    goto :goto_7

    .line 686
    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    if-nez p4, :cond_a

    .line 687
    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8

    .line 690
    :cond_a
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-eqz p3, :cond_b

    if-nez p4, :cond_b

    .line 691
    invoke-virtual {p0, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8

    .line 694
    :cond_b
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_c

    .line 695
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8

    .line 698
    :cond_c
    if-eqz p1, :cond_d

    if-nez p2, :cond_d

    if-eqz p3, :cond_d

    if-eqz p4, :cond_f

    :cond_d
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    if-eqz p4, :cond_f

    :cond_e
    if-eqz p1, :cond_10

    if-nez p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    .line 702
    :cond_f
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8

    .line 705
    :cond_10
    if-nez p1, :cond_11

    if-eqz p2, :cond_11

    if-nez p3, :cond_11

    if-nez p4, :cond_13

    :cond_11
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-nez p3, :cond_12

    if-nez p4, :cond_13

    :cond_12
    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    .line 709
    :cond_13
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8

    .line 712
    :cond_14
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setRequestedOrientation(I)V

    goto :goto_8
.end method

.method protected SelectGooglePlayBilling()V
    .locals 5

    .prologue
    .line 1949
    const-string v1, "GooglePlayServicesExtension"

    const-string v2, "InitRunnerBilling"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1952
    .local v0, "RunnerBilling":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1954
    check-cast v0, Lcom/genouka/fumo/mvz2/IRunnerBilling;

    .end local v0    # "RunnerBilling":Ljava/lang/Object;
    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    .line 1968
    :goto_0
    return-void

    .line 1965
    .restart local v0    # "RunnerBilling":Ljava/lang/Object;
    :cond_0
    const-string v1, "yoyo"

    const-string v2, "BILLING: Google Play permissions not available, selecting NULL billing solution"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    new-instance v1, Lcom/genouka/fumo/mvz2/NullBilling;

    invoke-direct {v1, p0}, Lcom/genouka/fumo/mvz2/NullBilling;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    goto :goto_0
.end method

.method public SetLaunchedFromPlayer(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "gamePath"    # Ljava/lang/String;
    .param p2, "fromPlayer"    # Z

    .prologue
    .line 2045
    sput-boolean p2, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayer:Z

    .line 2046
    sput-object p1, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayerGameFile:Ljava/lang/String;

    .line 2048
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JNI SetLaunchedFromPlayer. Game path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupIniFile()V

    .line 2052
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1465
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1467
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1469
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 1471
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1472
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 1490
    .end local v0    # "consumed":Z
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 1467
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const v3, 0x1000010

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x401

    if-ne v2, v3, :cond_4

    .line 1481
    :cond_2
    invoke-static {p1}, Lcom/genouka/fumo/mvz2/Gamepad;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 1484
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardGetStatus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1486
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1490
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1444
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1448
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 1450
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1451
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 1458
    .end local v0    # "consumed":Z
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 1446
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1457
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1}, Lcom/genouka/fumo/mvz2/Gamepad;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 1458
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public doSetup(Ljava/lang/String;)V
    .locals 13
    .param p1, "_zipName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 569
    const-string v0, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSetup called - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-nez v0, :cond_2

    .line 575
    const/4 v10, 0x0

    .line 576
    .local v10, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 578
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 579
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 581
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 582
    .local v11, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v12

    .line 584
    .local v12, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 587
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".ini"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    const-string v0, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found INI file - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 598
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "zip":Ljava/util/zip/ZipFile;
    .end local v12    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_0
    new-instance v0, Lcom/genouka/fumo/mvz2/IniBundle;

    invoke-direct {v0, v8, v10}, Lcom/genouka/fumo/mvz2/IniBundle;-><init>(Landroid/os/Bundle;Ljava/io/InputStream;)V

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    .line 614
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupExtensions()V

    .line 615
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupAdvertising()V

    .line 617
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupInAppBilling()V

    .line 623
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupPushNotifications()V

    .line 624
    invoke-static {}, Lcom/genouka/fumo/mvz2/Gamepad;->Initialise()V

    .line 627
    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RestrictOrientation(ZZZZZ)V

    .line 629
    sget-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitOnTimer:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 630
    return-void

    .line 595
    .restart local v8    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 596
    .local v6, "_e":Ljava/lang/Exception;
    const-string v0, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting up Ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 1271
    :try_start_0
    const-string v8, "android.view.Display"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1274
    .local v1, "displayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getRotation"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1275
    .local v3, "getRotationMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_4

    .line 1276
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 1278
    .local v5, "lWindowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1279
    .local v0, "cfg":Landroid/content/res/Configuration;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1281
    .local v4, "lRotation":I
    if-eqz v4, :cond_0

    if-ne v4, v6, :cond_1

    :cond_0
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v6, :cond_3

    :cond_1
    if-eq v4, v7, :cond_2

    const/4 v8, 0x3

    if-ne v4, v8, :cond_4

    :cond_2
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v7, :cond_4

    .line 1292
    .end local v0    # "cfg":Landroid/content/res/Configuration;
    .end local v1    # "displayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getRotationMethod":Ljava/lang/reflect/Method;
    .end local v4    # "lRotation":I
    .end local v5    # "lWindowManager":Landroid/view/WindowManager;
    :cond_3
    :goto_0
    return v6

    .line 1289
    :catch_0
    move-exception v2

    .line 1290
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "yoyo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: Enumerating API level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v6, v7

    .line 1292
    goto :goto_0
.end method

.method public getFacebookAppId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1736
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1737
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1747
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "appID":Ljava/lang/String;
    const-string v4, "yoyo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOUND facebook appID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 1753
    const/4 v1, 0x0

    .line 1762
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 1758
    :catch_0
    move-exception v3

    .line 1760
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1762
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefreshRate()F
    .locals 2

    .prologue
    .line 2056
    const/high16 v0, 0x42700000    # 60.0f

    .line 2058
    .local v0, "refresh":F
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 2060
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 2062
    const/high16 v0, 0x42700000    # 60.0f

    .line 2065
    :cond_0
    return v0
.end method

.method public isTablet()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 241
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v7, v8

    .line 242
    .local v3, "screenWidth":F
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v7, v8

    .line 243
    .local v2, "screenHeight":F
    mul-float v7, v3, v3

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 244
    .local v4, "size":D
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_0

    const/4 v6, 0x1

    .line 247
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "size":D
    :cond_0
    :goto_0
    return v6

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "_t":Ljava/lang/Throwable;
    const-string v7, "yoyo"

    const-string v8, "Failed to compute screen size"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1266
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1315
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got activity result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    invoke-virtual {v1, p1, p2, p3}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1321
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1323
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    if-eqz v1, :cond_1

    .line 1324
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v1, p1, p2, p3}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->onActivityResult(IILandroid/content/Intent;)V

    .line 1329
    :cond_1
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1333
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_2

    .line 1334
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1, p1, p2, p3}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1341
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 1342
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 1345
    const-string v1, "yoyo"

    const-string v2, "End Got activity result"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 2020
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2022
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetOrientation()I

    move-result v3

    sput v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    .line 2025
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v1

    .line 2026
    .local v1, "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v1, :cond_0

    .line 2028
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v2, :cond_2

    .line 2029
    .local v2, "physicalKeyboardConnected":Z
    :goto_0
    invoke-virtual {v1, v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetPhysicalKeyboardConnected(Z)V

    .line 2033
    .end local v2    # "physicalKeyboardConnected":Z
    :cond_0
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 2035
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 2037
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v3, v3, v0

    instance-of v3, v3, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v3, :cond_1

    .line 2038
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v3, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2035
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2028
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2041
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 284
    invoke-virtual {p0, v8}, Lcom/genouka/fumo/mvz2/RunnerActivity;->requestWindowFeature(I)Z

    .line 285
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    sput-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    .line 286
    const-string v9, "yoyo"

    const-string v11, "onCreate"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    invoke-static {p0}, Lcom/yoyogames/runner/RunnerJNILib;->Init(Landroid/content/Context;)V

    .line 293
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->checkIsYoYoRunner()Z

    move-result v9

    sput-boolean v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    .line 294
    new-instance v9, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    invoke-direct {v9}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;-><init>()V

    sput-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTask:Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    sget-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_versionName:Ljava/lang/String;

    sput-object v9, Lcom/yoyogames/runner/RunnerJNILib;->ms_versionName:Ljava/lang/String;

    .line 306
    const-string v9, "yoyo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###@@@@!!!~~~~###### versionName - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    packed-switch v9, :pswitch_data_0

    .line 313
    sput v10, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    .line 321
    :goto_1
    sput-object p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    .line 324
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 325
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    sput v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->DisplayWidth:I

    .line 326
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v9

    sput v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->DisplayHeight:I

    .line 331
    const-string v9, "sensor"

    invoke-virtual {p0, v9}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 332
    iget-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v9, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mAccelerometer:Landroid/hardware/Sensor;

    .line 334
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getDeviceDefaultOrientation()I

    move-result v9

    sput v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->DefaultOrientation:I

    .line 335
    const-string v9, "yoyo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###@@@@!!!~~~~###### default orientation - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/genouka/fumo/mvz2/RunnerActivity;->DefaultOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupIniFile()V

    .line 339
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupExtensions()V

    .line 345
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->checkXPeriaPlay()V

    .line 348
    const-string v9, "GooglePlayLicensingAsExt"

    const-string v11, "checkLicensing"

    invoke-static {v9, v11, v10, v13}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v9, "yoyo"

    const-string v11, "!!!!!!! Checking if APK Expansion file required..."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "bDownloadView":Z
    sget-boolean v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->UseAPKExpansionFile:Z

    if-eqz v9, :cond_0

    .line 358
    const-string v9, "PlayAPKExpansionExtension"

    const-string v11, "StartAPKExpansionDownload"

    invoke-static {v9, v11, v10, v13}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, "downloadViewNeeded":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 361
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "downloadViewNeeded":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 366
    :cond_0
    if-eqz v0, :cond_4

    sget-boolean v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasRestarted:Z

    if-nez v9, :cond_4

    .line 369
    const-string v9, "PlayAPKExpansionExtension"

    const-string v11, "setupDownloadView"

    invoke-static {v9, v11, v10, v13}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :goto_2
    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 378
    .local v5, "filter1":Landroid/content/IntentFilter;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 379
    .local v6, "filter3":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v5}, Lcom/genouka/fumo/mvz2/RunnerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    iget-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v6}, Lcom/genouka/fumo/mvz2/RunnerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v9, v11, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 386
    .local v1, "decorView":Landroid/view/View;
    new-instance v9, Lcom/genouka/fumo/mvz2/RunnerActivity$3;

    invoke-direct {v9, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$3;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 398
    .end local v1    # "decorView":Landroid/view/View;
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v9, v11, :cond_2

    .line 400
    const-string v9, "yoyo"

    const-string v11, "!!!!!!! Using frame count timing if possible..."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v9, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;

    invoke-direct {v9}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;-><init>()V

    iput-object v9, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v7

    .line 406
    .local v7, "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v7, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v9, v8, :cond_5

    .line 410
    .local v8, "physicalKeyboardConnected":Z
    :goto_3
    invoke-virtual {v7, v8}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetPhysicalKeyboardConnected(Z)V

    .line 412
    .end local v8    # "physicalKeyboardConnected":Z
    :cond_3
    return-void

    .line 300
    .end local v0    # "bDownloadView":Z
    .end local v2    # "display":Landroid/view/Display;
    .end local v5    # "filter1":Landroid/content/IntentFilter;
    .end local v6    # "filter3":Landroid/content/IntentFilter;
    .end local v7    # "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    :catch_0
    move-exception v4

    .line 302
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "1.0.xxx"

    sput-object v9, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_versionName:Ljava/lang/String;

    .line 303
    const-string v9, "yoyo"

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    sput v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    goto/16 :goto_1

    .line 373
    .restart local v0    # "bDownloadView":Z
    .restart local v2    # "display":Landroid/view/Display;
    :cond_4
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupView()V

    goto :goto_2

    .restart local v5    # "filter1":Landroid/content/IntentFilter;
    .restart local v6    # "filter3":Landroid/content/IntentFilter;
    .restart local v7    # "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    :cond_5
    move v8, v10

    .line 409
    goto :goto_3

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1409
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1413
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 1415
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 1416
    .local v0, "consumed":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1436
    .end local v0    # "consumed":Landroid/app/Dialog;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 1411
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1424
    .end local v1    # "i":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1436
    const/4 v0, 0x0

    goto :goto_1

    .line 1427
    :pswitch_0
    const v2, 0x7f050009

    const v3, 0x7f050008

    invoke-direct {p0, v2, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1430
    :pswitch_1
    const v2, 0x7f050007

    const v3, 0x7f050006

    invoke-direct {p0, v2, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1433
    :pswitch_2
    const v2, 0x7f050005

    const v3, 0x7f050004

    invoke-direct {p0, v2, v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1096
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1098
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1102
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 1104
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1105
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 1116
    .end local v0    # "consumed":Z
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 1100
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v1    # "i":I
    :cond_1
    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    if-eqz v2, :cond_2

    .line 1112
    const v2, 0x7f05000e

    invoke-interface {p1, v4, v4, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1113
    const/4 v2, 0x2

    const v3, 0x7f05000d

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1116
    :cond_2
    sget-boolean v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 840
    const-string v1, "yoyo"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 844
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    if-eqz v1, :cond_0

    .line 845
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRunnerBilling:Lcom/genouka/fumo/mvz2/IRunnerBilling;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/IRunnerBilling;->Destroy()V

    .line 853
    :cond_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 857
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_1

    .line 858
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onDestroy()V

    .line 855
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetVirtualKeyboardVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 869
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardHide()V

    .line 873
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 874
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v12, 0x1000010

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1167
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    .line 1168
    .local v5, "eventSource":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    if-lez v8, :cond_1

    move v4, v9

    .line 1169
    .local v4, "eventFromPhysicalDevice":Z
    :goto_0
    and-int/lit16 v8, v5, 0x101

    const/16 v11, 0x101

    if-ne v8, v11, :cond_2

    move v3, v9

    .line 1170
    .local v3, "eventFromKeyboard":Z
    :goto_1
    and-int/lit16 v8, v5, 0x401

    const/16 v11, 0x401

    if-ne v8, v11, :cond_3

    move v1, v9

    .line 1171
    .local v1, "eventFromGamepad":Z
    :goto_2
    and-int v8, v5, v12

    if-ne v8, v12, :cond_4

    move v2, v9

    .line 1174
    .local v2, "eventFromJoystick":Z
    :goto_3
    sget-object v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v8, :cond_6

    .line 1176
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    sget-object v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v6, v8, :cond_6

    .line 1178
    sget-object v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v8, v8, v6

    instance-of v8, v8, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v8, :cond_5

    .line 1180
    sget-object v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v8, v8, v6

    check-cast v8, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v8, p1, p2}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1181
    .local v0, "consumed":Z
    if-eqz v0, :cond_5

    move v9, v0

    .line 1223
    .end local v0    # "consumed":Z
    .end local v6    # "i":I
    :cond_0
    :goto_5
    return v9

    .end local v1    # "eventFromGamepad":Z
    .end local v2    # "eventFromJoystick":Z
    .end local v3    # "eventFromKeyboard":Z
    .end local v4    # "eventFromPhysicalDevice":Z
    :cond_1
    move v4, v10

    .line 1168
    goto :goto_0

    .restart local v4    # "eventFromPhysicalDevice":Z
    :cond_2
    move v3, v10

    .line 1169
    goto :goto_1

    .restart local v3    # "eventFromKeyboard":Z
    :cond_3
    move v1, v10

    .line 1170
    goto :goto_2

    .restart local v1    # "eventFromGamepad":Z
    :cond_4
    move v2, v10

    .line 1171
    goto :goto_3

    .line 1176
    .restart local v2    # "eventFromJoystick":Z
    .restart local v6    # "i":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1188
    .end local v6    # "i":I
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 1191
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v7

    .line 1192
    .local v7, "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v7, :cond_7

    .line 1194
    invoke-virtual {v7, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->OnPhysicalKeyboardKeyEvent(ILandroid/view/KeyEvent;)V

    .line 1199
    .end local v7    # "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    :cond_7
    if-eqz p1, :cond_8

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    .line 1201
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    invoke-static {v10, p1, v8, v5}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1204
    :cond_8
    const/4 v8, 0x4

    if-ne p1, v8, :cond_9

    .line 1207
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_5

    .line 1211
    :cond_9
    const/16 v8, 0x18

    if-eq p1, v8, :cond_a

    const/16 v8, 0x19

    if-eq p1, v8, :cond_a

    const/4 v8, 0x3

    if-eq p1, v8, :cond_a

    const/16 v8, 0x52

    if-eq p1, v8, :cond_a

    const/16 v8, 0x4f

    if-lt p1, v8, :cond_0

    .line 1217
    :cond_a
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 1218
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 1219
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_5
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 182
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1, p2}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 189
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 203
    .end local v0    # "consumed":Z
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 184
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 198
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->BackKeyLongPressEvent()V

    .line 201
    const/4 v0, 0x1

    goto :goto_1

    .line 203
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v8, 0x1000010

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1230
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    .line 1231
    .local v3, "eventSource":I
    and-int/lit16 v5, v3, 0x401

    const/16 v7, 0x401

    if-ne v5, v7, :cond_1

    move v1, v6

    .line 1232
    .local v1, "eventFromGamepad":Z
    :goto_0
    and-int v5, v3, v8

    if-ne v5, v8, :cond_0

    move v2, v6

    .line 1236
    .local v2, "eventFromJoystick":Z
    :cond_0
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 1238
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1240
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v5, v5, v4

    instance-of v5, v5, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v5, :cond_2

    .line 1242
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v5, p1, p2}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1243
    .local v0, "consumed":Z
    if-eqz v0, :cond_2

    .line 1259
    .end local v0    # "consumed":Z
    .end local v4    # "i":I
    :goto_2
    return v0

    .end local v1    # "eventFromGamepad":Z
    .end local v2    # "eventFromJoystick":Z
    :cond_1
    move v1, v2

    .line 1231
    goto :goto_0

    .line 1238
    .restart local v1    # "eventFromGamepad":Z
    .restart local v2    # "eventFromJoystick":Z
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1249
    .end local v4    # "i":I
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 1250
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    invoke-static {v6, p1, v5, v7}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1252
    :cond_4
    const/16 v5, 0x18

    if-eq p1, v5, :cond_5

    const/16 v5, 0x19

    if-eq p1, v5, :cond_5

    const/4 v5, 0x3

    if-eq p1, v5, :cond_5

    const/16 v5, 0x52

    if-eq p1, v5, :cond_5

    const/16 v5, 0x4f

    if-lt p1, v5, :cond_6

    .line 1257
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v6

    .line 1259
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1123
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1125
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 1127
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v5, :cond_0

    .line 1129
    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v5, v5, v3

    check-cast v5, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v5, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1130
    .local v2, "consumed":Z
    if-eqz v2, :cond_0

    .line 1161
    .end local v2    # "consumed":Z
    .end local v3    # "i":I
    :goto_1
    return v2

    .line 1125
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1161
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1139
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/genouka/fumo/mvz2/RunnerPreferenceActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1140
    .local v4, "settingsActivity":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/genouka/fumo/mvz2/RunnerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1143
    .end local v4    # "settingsActivity":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1144
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "Are you sure you want to exit?"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 1145
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Yes"

    new-instance v7, Lcom/genouka/fumo/mvz2/RunnerActivity$5;

    invoke-direct {v7, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$5;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    .line 1146
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "No"

    new-instance v7, Lcom/genouka/fumo/mvz2/RunnerActivity$4;

    invoke-direct {v7, p0}, Lcom/genouka/fumo/mvz2/RunnerActivity$4;-><init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V

    .line 1151
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1157
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 979
    const-string v1, "yoyo"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 982
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 984
    const-string v1, "yoyo"

    const-string v2, "Pausing the Runner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-boolean v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-nez v1, :cond_0

    .line 986
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yoyogames/runner/RunnerJNILib;->Pause(I)V

    .line 988
    :cond_0
    iput-boolean v3, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mbAppSuspended:Z

    .line 991
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->onPause()V

    .line 996
    :cond_1
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput-boolean v3, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 1000
    :cond_2
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1002
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1004
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_3

    .line 1005
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onPause()V

    .line 1002
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    .end local v0    # "i":I
    :cond_4
    const/4 v1, -0x1

    sput v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    .line 1015
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 1017
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    check-cast v1, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->RemoveFrameCallback()V

    .line 1021
    :cond_5
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetVirtualKeyboardVisible()Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 1023
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardHide()V

    .line 1025
    :cond_6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v7, 0x0

    .line 1358
    const-string v4, "yoyo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestPermissionsResult "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " results:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    packed-switch p1, :pswitch_data_0

    .line 1383
    :goto_0
    invoke-static {v7, v7, v7}, Lcom/yoyogames/runner/RunnerJNILib;->jCreateDsMap([Ljava/lang/String;[Ljava/lang/String;[D)I

    move-result v0

    .line 1384
    .local v0, "dsMapIndex":I
    const-string v4, "type"

    const-string v5, "permission_request_result"

    invoke-static {v0, v4, v5}, Lcom/yoyogames/runner/RunnerJNILib;->DsMapAddString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_3

    .line 1386
    aget-object v4, p2, v1

    aget v5, p3, v1

    int-to-double v6, v5

    invoke-static {v0, v4, v6, v7}, Lcom/yoyogames/runner/RunnerJNILib;->DsMapAddDouble(ILjava/lang/String;D)V

    .line 1385
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1363
    .end local v0    # "dsMapIndex":I
    .end local v1    # "i":I
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_2

    .line 1365
    aget v4, p3, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1368
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const-string v5, "Cannot function as a runner without these permissions, use Create Executable for Target"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1369
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1403
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void

    .line 1363
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1374
    :cond_2
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_RequestedPermissions:Z

    .line 1376
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/GMstudio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    .line 1377
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1378
    .local v2, "studioDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1379
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v5, v5, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    sget-object v5, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    goto/16 :goto_0

    .line 1388
    .end local v2    # "studioDir":Ljava/io/File;
    .restart local v0    # "dsMapIndex":I
    :cond_3
    iget v4, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->EVENT_OTHER_SYSTEM_EVENT:I

    invoke-static {v0, v4}, Lcom/yoyogames/runner/RunnerJNILib;->CreateAsynEventWithDSMap(II)V

    .line 1390
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1392
    const/4 v1, 0x0

    :goto_3
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1394
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v4, v4, v1

    instance-of v4, v4, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v4, :cond_4

    .line 1396
    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v4, p1, p2, p3}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1392
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 754
    const-string v1, "yoyo"

    const-string v2, "onRestart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 757
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 760
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_0

    .line 761
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onRestart()V

    .line 758
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1034
    const-string v1, "yoyo"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1040
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 1041
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 1045
    sget-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasFocus:Z

    if-eqz v1, :cond_2

    .line 1046
    const-string v1, "yoyo"

    const-string v2, "App still has focus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v1, :cond_2

    .line 1048
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget-boolean v1, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget v1, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    if-lez v1, :cond_2

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetOrientation()I

    move-result v1

    sput v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    .line 1051
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput v3, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 1052
    const-string v1, "yoyo"

    const-string v2, "Runner is paused - unpausing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->resumeApp()V

    .line 1055
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1057
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->RestoreMP3State()V

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput-boolean v3, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 1067
    :cond_2
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1068
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1070
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1072
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_3

    .line 1073
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onResume()V

    .line 1070
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1082
    .end local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    if-eqz v1, :cond_5

    .line 1083
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->m_runnerFacebook:Lcom/genouka/fumo/mvz2/RunnerFacebook;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerFacebook;->onResume()V

    .line 1085
    :cond_5
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 1088
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    check-cast v1, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->PostFrameCallback()V

    .line 1091
    :cond_6
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x411ce80a

    .line 1297
    sget v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->DefaultOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1300
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelX:F

    .line 1301
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelY:F

    .line 1302
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelZ:F

    .line 1310
    :goto_0
    return-void

    .line 1305
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelX:F

    .line 1306
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    neg-float v0, v0

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelY:F

    .line 1307
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    div-float/2addr v0, v1

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelZ:F

    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 722
    const-string v1, "yoyo"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 737
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 741
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_0

    .line 742
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onStart()V

    .line 739
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 776
    const-string v1, "yoyo"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget v1, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    if-lez v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 785
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput-boolean v3, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 792
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 813
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 817
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_1

    .line 818
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onStop()V

    .line 815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetVirtualKeyboardVisible()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 829
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardHide()V

    .line 831
    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 907
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 910
    sget-boolean v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    if-eqz v1, :cond_1

    .line 911
    const-string v1, "yoyo"

    const-string v2, "Ignoring focus change as we are exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    sget-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    or-int/2addr v1, p1

    sput-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasFocus:Z

    .line 916
    sput-boolean v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->FocusOverride:Z

    .line 919
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 920
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 924
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v1, :cond_4

    .line 925
    sget-boolean v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasFocus:Z

    if-eqz v1, :cond_6

    .line 928
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget-boolean v1, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget v1, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    if-lez v1, :cond_4

    .line 930
    :cond_2
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput v4, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 931
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->resumeApp()V

    .line 933
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 935
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->RestoreMP3State()V

    .line 939
    :cond_3
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iput-boolean v4, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 953
    :cond_4
    :goto_1
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 957
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v1, :cond_5

    .line 959
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v1, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onWindowFocusChanged(Z)V

    .line 955
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 944
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v1, v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    const/16 v2, 0x14

    iput v2, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 945
    invoke-static {v4}, Lcom/yoyogames/runner/RunnerJNILib;->Pause(I)V

    .line 947
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->StoreMP3State()V

    .line 949
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->StopMP3()V

    goto :goto_1

    .line 965
    :cond_7
    if-eqz p1, :cond_0

    .line 970
    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 971
    invoke-static {v4}, Lcom/yoyogames/runner/RunnerJNILib;->Resume(I)V

    goto :goto_0
.end method

.method protected resumeApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 881
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mbAppSuspended:Z

    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iput-boolean v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mbAppSuspended:Z

    .line 888
    const-string v0, "yoyo"

    const-string v1, "resumeApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->onResume()V

    .line 896
    :cond_2
    sget-object v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-nez v0, :cond_0

    .line 897
    const-string v0, "yoyo"

    const-string v1, "Resuming the C++ Runner/resetting GL state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {v2}, Lcom/yoyogames/runner/RunnerJNILib;->Resume(I)V

    goto :goto_0
.end method

.method protected setupInAppBilling()V
    .locals 5

    .prologue
    .line 1974
    const-string v2, "yoyo"

    const-string v3, "BILLING: setupInAppBilling"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :try_start_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v2}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    .line 1978
    invoke-virtual {v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 1977
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1983
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->SelectGooglePlayBilling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 1985
    :catch_0
    move-exception v1

    .line 1986
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BILLING: Unable to determine billing method via Manifest, selecting Googe Play as fallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->SelectGooglePlayBilling()V

    goto :goto_0
.end method

.method public setupIniFile()V
    .locals 24

    .prologue
    .line 450
    sget-boolean v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayer:Z

    if-eqz v20, :cond_3

    sget-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-eqz v20, :cond_3

    .line 452
    sget-object v10, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayerGameFile:Ljava/lang/String;

    .line 453
    .local v10, "configFilePath":Ljava/lang/String;
    sget-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayerGameFile:Ljava/lang/String;

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 454
    .local v17, "lastIndexForwardSlash":I
    sget-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->LaunchedFromPlayerGameFile:Ljava/lang/String;

    const-string v21, "\\"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 456
    .local v16, "lastIndexBackwardSlash":I
    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 457
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/options.ini"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 458
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v9, "configFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 462
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Loading game INI file from yyg_player_run directory: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 466
    .local v11, "configInputStream":Ljava/io/InputStream;
    new-instance v14, Lorg/ini4j/Ini;

    invoke-direct {v14, v11}, Lorg/ini4j/Ini;-><init>(Ljava/io/InputStream;)V

    .line 467
    .local v14, "gameIni":Lorg/ini4j/Ini;
    const-string v20, "Android"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/ini4j/Profile$Section;

    .line 469
    .local v15, "gameIniAndroidSection":Lorg/ini4j/Profile$Section;
    if-eqz v15, :cond_1

    .line 471
    sget-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    invoke-virtual/range {v20 .. v20}, Lcom/genouka/fumo/mvz2/IniBundle;->hasAndroidIni()Z

    move-result v20

    if-nez v20, :cond_0

    .line 474
    const-string v20, "yoyo"

    const-string v21, "Setting up new android INI section from game INI."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v6, Lorg/ini4j/Ini;

    invoke-direct {v6}, Lorg/ini4j/Ini;-><init>()V

    .line 476
    .local v6, "androidIni":Lorg/ini4j/Ini;
    const-string v20, "Android"

    const-string v21, "OrientLandscape"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 477
    const-string v20, "Android"

    const-string v21, "OrientPortrait"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    const-string v20, "Android"

    const-string v21, "OrientLandscapeFlipped"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 479
    const-string v20, "Android"

    const-string v21, "OrientPortraitFlipped"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 480
    sget-object v21, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v20, "Android"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/ini4j/Profile$Section;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/IniBundle;->setAndroidIni(Lorg/ini4j/Profile$Section;)V

    .line 485
    .end local v6    # "androidIni":Lorg/ini4j/Ini;
    :cond_0
    sget-object v21, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v22, "OrientLandscape"

    const-string v20, "OrientLandscape"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->setAndroidString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v21, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v22, "OrientPortrait"

    const-string v20, "OrientPortrait"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->setAndroidString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v21, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v22, "OrientLandscapeFlipped"

    const-string v20, "OrientLandscapeFlipped"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->setAndroidString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v21, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v22, "OrientPortraitFlipped"

    const-string v20, "OrientPortraitFlipped"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->setAndroidString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v9    # "configFile":Ljava/io/File;
    .end local v10    # "configFilePath":Ljava/lang/String;
    .end local v11    # "configInputStream":Ljava/io/InputStream;
    .end local v14    # "gameIni":Lorg/ini4j/Ini;
    .end local v15    # "gameIniAndroidSection":Lorg/ini4j/Profile$Section;
    .end local v16    # "lastIndexBackwardSlash":I
    .end local v17    # "lastIndexForwardSlash":I
    :goto_0
    return-void

    .line 493
    .restart local v9    # "configFile":Ljava/io/File;
    .restart local v10    # "configFilePath":Ljava/lang/String;
    .restart local v16    # "lastIndexBackwardSlash":I
    .restart local v17    # "lastIndexForwardSlash":I
    :catch_0
    move-exception v4

    .line 495
    .local v4, "_e":Ljava/lang/Exception;
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception while trying to load game INI file in yyg_player_run: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v4    # "_e":Ljava/lang/Exception;
    :cond_2
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Could not locate game INI file in yyg_player_run directory: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v9    # "configFile":Ljava/io/File;
    .end local v10    # "configFilePath":Ljava/lang/String;
    .end local v16    # "lastIndexBackwardSlash":I
    .end local v17    # "lastIndexForwardSlash":I
    :cond_3
    sget-boolean v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    if-eqz v20, :cond_6

    .line 509
    const/4 v7, 0x0

    .line 510
    .local v7, "apkFilePath":Ljava/lang/String;
    const/16 v19, 0x0

    .line 512
    .local v19, "saveFilesDir":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/GMstudio"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 513
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 515
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "GameAssetsDROID.zip"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 518
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v12, "fAssets":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "GameDownload.lock"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v13, "fLock":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_5

    .line 526
    :cond_4
    const-string v20, "yoyo"

    const-string v21, "Don\'t have up-to-date INI file at this point"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/genouka/fumo/mvz2/RunnerActivity;->DoSetupIniFile(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/IniBundle;

    move-result-object v20

    sput-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    .line 531
    const-string v20, "yoyo"

    const-string v21, "INI loaded"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    .end local v7    # "apkFilePath":Ljava/lang/String;
    .end local v12    # "fAssets":Ljava/io/File;
    .end local v13    # "fLock":Ljava/io/File;
    .end local v19    # "saveFilesDir":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 537
    .local v18, "packageName":Ljava/lang/String;
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "#####!!!! package name is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v20, "com.yoyogames.runner"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 541
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 542
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->DoSetupIniFile(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/IniBundle;

    move-result-object v20

    sput-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    .line 543
    const-string v20, "yoyo"

    const-string v21, "INI loaded from assets/Options.INI"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 544
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v4

    .line 545
    .restart local v4    # "_e":Ljava/lang/Exception;
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception while setting up Ini"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 550
    .end local v4    # "_e":Ljava/lang/Exception;
    :cond_7
    const-string v20, "yoyo"

    const-string v21, "Loading INI from manifest file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v8, 0x0

    .line 553
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 554
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 560
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    new-instance v20, Lcom/genouka/fumo/mvz2/IniBundle;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/genouka/fumo/mvz2/IniBundle;-><init>(Landroid/os/Bundle;Ljava/io/InputStream;)V

    sput-object v20, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    .line 561
    const-string v20, "yoyo"

    const-string v21, "INI loaded from AndroidManifest.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 556
    :catch_2
    move-exception v4

    .line 557
    .restart local v4    # "_e":Ljava/lang/Exception;
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception while setting up Ini"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setupPushNotifications()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 634
    const-string v3, "yoyo"

    const-string v4, "-----setup Push------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "EnablePushNotification"

    invoke-virtual {v3, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->keyExists(Ljava/lang/String;)Z

    move-result v1

    .line 636
    .local v1, "bPushEnable":Z
    if-eqz v1, :cond_1

    .line 638
    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v4, "PushNotificationID"

    invoke-virtual {v3, v4}, Lcom/genouka/fumo/mvz2/IniBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "pushID":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 642
    const-string v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    const-string v3, "pid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 648
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 649
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Push notifications enabled with senderID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "GooglePlayServicesExtension"

    const-string v4, "setupPushNotifications"

    invoke-static {v3, v4, v6, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v0    # "argArray":[Ljava/lang/Object;
    .end local v2    # "pushID":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setupUiVisibility()V
    .locals 6

    .prologue
    .line 1793
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v3, :cond_2

    .line 1797
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/Class;

    .line 1798
    .local v1, "parTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    .line 1799
    const-class v3, Landroid/view/View;

    const-string v4, "setSystemUiVisibility"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->mSetSystemUiVisibility:Ljava/lang/reflect/Method;

    .line 1803
    const/4 v2, 0x1

    .line 1809
    .local v2, "vis":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 1811
    sget v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 1813
    sget v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    and-int/lit16 v2, v3, -0x101

    .line 1814
    invoke-direct {p0, v2}, Lcom/genouka/fumo/mvz2/RunnerActivity;->ourSetSystemUiVisibility(I)V

    .line 1818
    :cond_0
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting vis flags to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    sget v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    .line 1822
    :cond_1
    invoke-direct {p0, v2}, Lcom/genouka/fumo/mvz2/RunnerActivity;->ourSetSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    .end local v1    # "parTypes":[Ljava/lang/Class;
    .end local v2    # "vis":I
    :cond_2
    :goto_0
    return-void

    .line 1825
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while getting setSystemUiVisibility :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setupUiVisibilityDelayed()V
    .locals 4

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1789
    return-void
.end method

.method public setupView()V
    .locals 2

    .prologue
    .line 1837
    const-string v0, "yoyo"

    const-string v1, " + + + + setupView + + + +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setContentView(I)V

    .line 1839
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    .line 1840
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 1841
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 1844
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    check-cast v0, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->PostFrameCallback()V

    .line 1848
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1873
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    check-cast v0, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->PostFrameCallback()V

    .line 1864
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mGLView:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1886
    :cond_0
    return-void
.end method
