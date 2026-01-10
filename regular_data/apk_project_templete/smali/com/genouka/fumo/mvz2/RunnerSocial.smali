.class public Lcom/genouka/fumo/mvz2/RunnerSocial;
.super Ljava/lang/Object;
.source "RunnerSocial.java"

# interfaces
.implements Lcom/genouka/fumo/mvz2/ISocial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Event(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public GetInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public Init()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "yoyo"

    const-string v1, "Base extension class init called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public LoadFriends()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public LoadLeaderboard(Ljava/lang/String;III)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "minindex"    # I
    .param p3, "maxindex"    # I
    .param p4, "filter"    # I

    .prologue
    .line 40
    return-void
.end method

.method public LoadPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public Login()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public Logout()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public PostScore(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_leaderboard"    # Ljava/lang/String;
    .param p2, "_score"    # I

    .prologue
    .line 43
    return-void
.end method

.method public Show(ILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "optarg"    # Ljava/lang/String;
    .param p3, "numarg"    # I

    .prologue
    .line 29
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 73
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 64
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 36
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 81
    return-void
.end method
